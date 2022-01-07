; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_controller_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_controller_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_controller = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.device*, i32*, i32* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ctrl_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"unable to allocate serdev controller identifier.\0A\00", align 1
@serdev_ctrl_type = common dso_local global i32 0, align 4
@serdev_bus_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"serial%d\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"allocated controller 0x%p id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.serdev_controller* @serdev_controller_alloc(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.serdev_controller*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.serdev_controller*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.serdev_controller* null, %struct.serdev_controller** %3, align 8
  br label %78

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = add i64 40, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.serdev_controller* @kzalloc(i32 %18, i32 %19)
  store %struct.serdev_controller* %20, %struct.serdev_controller** %6, align 8
  %21 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %22 = icmp ne %struct.serdev_controller* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store %struct.serdev_controller* null, %struct.serdev_controller** %3, align 8
  br label %78

24:                                               ; preds = %15
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @ida_simple_get(i32* @ctrl_ida, i32 0, i32 0, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %75

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %35 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %37 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %36, i32 0, i32 1
  %38 = call i32 @device_initialize(%struct.TYPE_6__* %37)
  %39 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %40 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i32* @serdev_ctrl_type, i32** %41, align 8
  %42 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %43 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32* @serdev_bus_type, i32** %44, align 8
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %47 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store %struct.device* %45, %struct.device** %48, align 8
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %53 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %56 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %57 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %56, i64 1
  %58 = call i32 @serdev_controller_set_drvdata(%struct.serdev_controller* %55, %struct.serdev_controller* %57)
  %59 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %60 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %59, i32 0, i32 1
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @dev_set_name(%struct.TYPE_6__* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %64 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %63, i32 0, i32 1
  %65 = call i32 @pm_runtime_no_callbacks(%struct.TYPE_6__* %64)
  %66 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %67 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %66, i32 0, i32 1
  %68 = call i32 @pm_suspend_ignore_children(%struct.TYPE_6__* %67, i32 1)
  %69 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %70 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %69, i32 0, i32 1
  %71 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @dev_dbg(%struct.TYPE_6__* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.serdev_controller* %71, i32 %72)
  %74 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  store %struct.serdev_controller* %74, %struct.serdev_controller** %3, align 8
  br label %78

75:                                               ; preds = %29
  %76 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %77 = call i32 @kfree(%struct.serdev_controller* %76)
  store %struct.serdev_controller* null, %struct.serdev_controller** %3, align 8
  br label %78

78:                                               ; preds = %75, %32, %23, %14
  %79 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  ret %struct.serdev_controller* %79
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.serdev_controller* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @serdev_controller_set_drvdata(%struct.serdev_controller*, %struct.serdev_controller*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @pm_runtime_no_callbacks(%struct.TYPE_6__*) #1

declare dso_local i32 @pm_suspend_ignore_children(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*, %struct.serdev_controller*, i32) #1

declare dso_local i32 @kfree(%struct.serdev_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
