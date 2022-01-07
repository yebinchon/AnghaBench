; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_do_transfer_defer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_bus.c_do_transfer_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_bus = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { {}* }
%struct.TYPE_4__ = type { i32 }
%struct.sdw_msg = type { i32 }
%struct.sdw_defer = type { i32, i32, %struct.sdw_msg* }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_bus*, %struct.sdw_msg*, %struct.sdw_defer*)* @do_transfer_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_transfer_defer(%struct.sdw_bus* %0, %struct.sdw_msg* %1, %struct.sdw_defer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdw_bus*, align 8
  %6 = alloca %struct.sdw_msg*, align 8
  %7 = alloca %struct.sdw_defer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sdw_bus* %0, %struct.sdw_bus** %5, align 8
  store %struct.sdw_msg* %1, %struct.sdw_msg** %6, align 8
  store %struct.sdw_defer* %2, %struct.sdw_defer** %7, align 8
  %12 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %13 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %17 = load %struct.sdw_defer*, %struct.sdw_defer** %7, align 8
  %18 = getelementptr inbounds %struct.sdw_defer, %struct.sdw_defer* %17, i32 0, i32 2
  store %struct.sdw_msg* %16, %struct.sdw_msg** %18, align 8
  %19 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %20 = getelementptr inbounds %struct.sdw_msg, %struct.sdw_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sdw_defer*, %struct.sdw_defer** %7, align 8
  %23 = getelementptr inbounds %struct.sdw_defer, %struct.sdw_defer* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sdw_defer*, %struct.sdw_defer** %7, align 8
  %25 = getelementptr inbounds %struct.sdw_defer, %struct.sdw_defer* %24, i32 0, i32 0
  %26 = call i32 @init_completion(i32* %25)
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %54, %3
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %33 = getelementptr inbounds %struct.sdw_bus, %struct.sdw_bus* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.sdw_bus*, %struct.sdw_msg*, %struct.sdw_defer*)**
  %37 = load i32 (%struct.sdw_bus*, %struct.sdw_msg*, %struct.sdw_defer*)*, i32 (%struct.sdw_bus*, %struct.sdw_msg*, %struct.sdw_defer*)** %36, align 8
  %38 = load %struct.sdw_bus*, %struct.sdw_bus** %5, align 8
  %39 = load %struct.sdw_msg*, %struct.sdw_msg** %6, align 8
  %40 = load %struct.sdw_defer*, %struct.sdw_defer** %7, align 8
  %41 = call i32 %37(%struct.sdw_bus* %38, %struct.sdw_msg* %39, %struct.sdw_defer* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @find_response_code(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @ENODATA, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %31
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %59

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %27

57:                                               ; preds = %27
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @find_response_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
