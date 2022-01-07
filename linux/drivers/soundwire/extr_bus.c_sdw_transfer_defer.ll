; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_transfer_defer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_transfer_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sdw_msg = type { i32, i64 }
%struct.sdw_defer = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Defer trf on Slave %d failed:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdw_transfer_defer(%struct.sdw_bus* %0, %struct.sdw_msg* %1, %struct.sdw_defer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdw_bus*, align 8
  %6 = alloca %struct.sdw_msg*, align 8
  %7 = alloca %struct.sdw_defer*, align 8
  %8 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %5, align 8
  store %struct.sdw_msg* %1, %struct.sdw_msg** %6, align 8
  store %struct.sdw_defer* %2, %struct.sdw_defer** %7, align 8
  %9 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %10 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %52

18:                                               ; preds = %3
  %19 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %20 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %21 = load %struct.sdw_defer*, %struct.sdw_defer** %7, align 8
  %22 = call i32 @do_transfer_defer(%struct.sdw_bus* %19, %struct.sdw_msg* %20, %struct.sdw_defer* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ENODATA, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %32 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %35 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %30, %25, %18
  %40 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %41 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %46 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %47 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sdw_reset_page(%struct.sdw_bus* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @do_transfer_defer(%struct.sdw_bus*, %struct.sdw_msg*, %struct.sdw_defer*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @sdw_reset_page(%struct.sdw_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
