; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_sdw_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { i32, i32 }
%struct.sdw_msg = type { i32, i64 }

@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"trf on Slave %d failed:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdw_transfer(%struct.sdw_bus* %0, %struct.sdw_msg* %1) #0 {
  %3 = alloca %struct.sdw_bus*, align 8
  %4 = alloca %struct.sdw_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %3, align 8
  store %struct.sdw_msg* %1, %struct.sdw_msg** %4, align 8
  %6 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %7 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %10 = load %struct.sdw_msg*, %struct.sdw_msg** %4, align 8
  %11 = call i32 @do_transfer(%struct.sdw_bus* %9, %struct.sdw_msg* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ENODATA, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %21 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sdw_msg*, %struct.sdw_msg** %4, align 8
  %24 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %14, %2
  %29 = load %struct.sdw_msg*, %struct.sdw_msg** %4, align 8
  %30 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %35 = load %struct.sdw_msg*, %struct.sdw_msg** %4, align 8
  %36 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sdw_reset_page(%struct.sdw_bus* %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.sdw_bus*, %struct.sdw_bus** %3, align 8
  %41 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @do_transfer(%struct.sdw_bus*, %struct.sdw_msg*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @sdw_reset_page(%struct.sdw_bus*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
