; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_devices_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_devices_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, %struct.ssb_device* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.device }
%struct.device = type { i32, i32*, %struct.device*, i32*, i32 }
%struct.TYPE_10__ = type { %struct.device, i32 }
%struct.TYPE_9__ = type { %struct.device, i32 }
%struct.ssb_device = type { %struct.device*, %struct.device*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.__ssb_dev_wrapper = type { %struct.ssb_device*, %struct.device }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ssb_release_dev = common dso_local global i32 0, align 4
@ssb_bustype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ssb%u:%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Could not register %s\0A\00", align 1
@ssb_pflash_dev = common dso_local global i32 0, align 4
@ssb_sflash_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_bus*)* @ssb_devices_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_devices_register(%struct.ssb_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.__ssb_dev_wrapper*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %86, %1
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %13 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %89

16:                                               ; preds = %10
  %17 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %18 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %17, i32 0, i32 7
  %19 = load %struct.ssb_device*, %struct.ssb_device** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %19, i64 %21
  store %struct.ssb_device* %22, %struct.ssb_device** %4, align 8
  %23 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %24 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %28 [
    i32 134, label %27
    i32 130, label %27
    i32 129, label %27
    i32 128, label %27
    i32 132, label %27
    i32 131, label %27
    i32 133, label %27
  ]

27:                                               ; preds = %16, %16, %16, %16, %16, %16, %16
  br label %86

28:                                               ; preds = %16
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.__ssb_dev_wrapper* @kzalloc(i32 48, i32 %29)
  store %struct.__ssb_dev_wrapper* %30, %struct.__ssb_dev_wrapper** %6, align 8
  %31 = load %struct.__ssb_dev_wrapper*, %struct.__ssb_dev_wrapper** %6, align 8
  %32 = icmp ne %struct.__ssb_dev_wrapper* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %90

36:                                               ; preds = %28
  %37 = load %struct.__ssb_dev_wrapper*, %struct.__ssb_dev_wrapper** %6, align 8
  %38 = getelementptr inbounds %struct.__ssb_dev_wrapper, %struct.__ssb_dev_wrapper* %37, i32 0, i32 1
  store %struct.device* %38, %struct.device** %5, align 8
  %39 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %40 = load %struct.__ssb_dev_wrapper*, %struct.__ssb_dev_wrapper** %6, align 8
  %41 = getelementptr inbounds %struct.__ssb_dev_wrapper, %struct.__ssb_dev_wrapper* %40, i32 0, i32 0
  store %struct.ssb_device* %39, %struct.ssb_device** %41, align 8
  %42 = load i32, i32* @ssb_release_dev, align 4
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 3
  store i32* @ssb_bustype, i32** %46, align 8
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %49 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @dev_set_name(%struct.device* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %54 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %67 [
    i32 138, label %56
    i32 137, label %57
    i32 136, label %58
    i32 135, label %59
  ]

56:                                               ; preds = %36
  br label %67

57:                                               ; preds = %36
  br label %67

58:                                               ; preds = %36
  br label %67

59:                                               ; preds = %36
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = getelementptr inbounds %struct.device, %struct.device* %60, i32 0, i32 0
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = getelementptr inbounds %struct.device, %struct.device* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %66 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %65, i32 0, i32 1
  store %struct.device* %64, %struct.device** %66, align 8
  br label %67

67:                                               ; preds = %36, %59, %58, %57, %56
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %70 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %69, i32 0, i32 0
  store %struct.device* %68, %struct.device** %70, align 8
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call i32 @device_register(%struct.device* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %67
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = call i32 @dev_name(%struct.device* %76)
  %78 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %80 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %79, i32 0, i32 0
  store %struct.device* null, %struct.device** %80, align 8
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = call i32 @put_device(%struct.device* %81)
  br label %90

83:                                               ; preds = %67
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %83, %27
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %10

89:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %94

90:                                               ; preds = %75, %33
  %91 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %92 = call i32 @ssb_devices_unregister(%struct.ssb_bus* %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %89
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.__ssb_dev_wrapper* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @ssb_devices_unregister(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
