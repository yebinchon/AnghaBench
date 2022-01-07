; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_device_report_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_device_report_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_controller = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.slim_eaddr = type { i32 }
%struct.slim_device = type { i32, i64 }

@SLIM_CLK_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"slim ctrl not active,state:%d, ret:%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slim_device_report_present(%struct.slim_controller* %0, %struct.slim_eaddr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.slim_controller*, align 8
  %6 = alloca %struct.slim_eaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.slim_device*, align 8
  %9 = alloca i32, align 4
  store %struct.slim_controller* %0, %struct.slim_controller** %5, align 8
  store %struct.slim_eaddr* %1, %struct.slim_eaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %11 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pm_runtime_get_sync(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %15 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SLIM_CLK_ACTIVE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %22 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %25 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %28)
  br label %53

30:                                               ; preds = %3
  %31 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %32 = load %struct.slim_eaddr*, %struct.slim_eaddr** %6, align 8
  %33 = call %struct.slim_device* @slim_get_device(%struct.slim_controller* %31, %struct.slim_eaddr* %32)
  store %struct.slim_device* %33, %struct.slim_device** %8, align 8
  %34 = load %struct.slim_device*, %struct.slim_device** %8, align 8
  %35 = call i64 @IS_ERR(%struct.slim_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %63

40:                                               ; preds = %30
  %41 = load %struct.slim_device*, %struct.slim_device** %8, align 8
  %42 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.slim_device*, %struct.slim_device** %8, align 8
  %47 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %4, align 4
  br label %63

50:                                               ; preds = %40
  %51 = load %struct.slim_device*, %struct.slim_device** %8, align 8
  %52 = call i32 @slim_device_alloc_laddr(%struct.slim_device* %51, i32 1)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %20
  %54 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %55 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pm_runtime_mark_last_busy(i32 %56)
  %58 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %59 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pm_runtime_put_autosuspend(i32 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %53, %45, %37
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local %struct.slim_device* @slim_get_device(%struct.slim_controller*, %struct.slim_eaddr*) #1

declare dso_local i64 @IS_ERR(%struct.slim_device*) #1

declare dso_local i32 @slim_device_alloc_laddr(%struct.slim_device*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
