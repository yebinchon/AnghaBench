; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mei_wdt.c_mei_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mei_wdt.c_mei_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mei_cl_device = type { i32 }
%struct.mei_cl_device_id = type { i32 }
%struct.mei_wdt = type { i32, %struct.mei_cl_device*, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MEI_WDT_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@MEI_WDT_PROBE = common dso_local global i32 0, align 4
@mei_wdt_unregister_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not enable cl device\0A\00", align 1
@mei_wdt_rx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not reg rx event ret=%d\0A\00", align 1
@mei_wdt_notif = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Could not reg notif event ret=%d\0A\00", align 1
@wd_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_cl_device*, %struct.mei_cl_device_id*)* @mei_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_wdt_probe(%struct.mei_cl_device* %0, %struct.mei_cl_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_cl_device*, align 8
  %5 = alloca %struct.mei_cl_device_id*, align 8
  %6 = alloca %struct.mei_wdt*, align 8
  %7 = alloca i32, align 4
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %4, align 8
  store %struct.mei_cl_device_id* %1, %struct.mei_cl_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mei_wdt* @kzalloc(i32 40, i32 %8)
  store %struct.mei_wdt* %9, %struct.mei_wdt** %6, align 8
  %10 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %11 = icmp ne %struct.mei_wdt* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %110

15:                                               ; preds = %2
  %16 = load i32, i32* @MEI_WDT_DEFAULT_TIMEOUT, align 4
  %17 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %18 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @MEI_WDT_PROBE, align 4
  %20 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %21 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %23 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %24 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %23, i32 0, i32 1
  store %struct.mei_cl_device* %22, %struct.mei_cl_device** %24, align 8
  %25 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %26 = call i32 @mei_cldev_ver(%struct.mei_cl_device* %25)
  %27 = icmp sgt i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %30 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %32 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %31, i32 0, i32 4
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %35 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %34, i32 0, i32 3
  %36 = call i32 @init_completion(i32* %35)
  %37 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %38 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %37, i32 0, i32 2
  %39 = load i32, i32* @mei_wdt_unregister_work, align 4
  %40 = call i32 @INIT_WORK(i32* %38, i32 %39)
  %41 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %42 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %43 = call i32 @mei_cldev_set_drvdata(%struct.mei_cl_device* %41, %struct.mei_wdt* %42)
  %44 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %45 = call i32 @mei_cldev_enable(%struct.mei_cl_device* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %15
  %49 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %50 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %106

52:                                               ; preds = %15
  %53 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %54 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %53, i32 0, i32 1
  %55 = load %struct.mei_cl_device*, %struct.mei_cl_device** %54, align 8
  %56 = load i32, i32* @mei_wdt_rx, align 4
  %57 = call i32 @mei_cldev_register_rx_cb(%struct.mei_cl_device* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %62 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %61, i32 0, i32 0
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i32*, i8*, ...) @dev_err(i32* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %103

65:                                               ; preds = %52
  %66 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %67 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %66, i32 0, i32 1
  %68 = load %struct.mei_cl_device*, %struct.mei_cl_device** %67, align 8
  %69 = load i32, i32* @mei_wdt_notif, align 4
  %70 = call i32 @mei_cldev_register_notif_cb(%struct.mei_cl_device* %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %80 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %79, i32 0, i32 0
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %103

83:                                               ; preds = %73, %65
  %84 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %85 = call i32 @mei_cldev_ver(%struct.mei_cl_device* %84)
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wd_info, i32 0, i32 0), align 4
  %86 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %87 = getelementptr inbounds %struct.mei_wdt, %struct.mei_wdt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %92 = call i32 @mei_wdt_ping(%struct.mei_wdt* %91)
  store i32 %92, i32* %7, align 4
  br label %96

93:                                               ; preds = %83
  %94 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %95 = call i32 @mei_wdt_register(%struct.mei_wdt* %94)
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %103

100:                                              ; preds = %96
  %101 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %102 = call i32 @dbgfs_register(%struct.mei_wdt* %101)
  store i32 0, i32* %3, align 4
  br label %110

103:                                              ; preds = %99, %78, %60
  %104 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %105 = call i32 @mei_cldev_disable(%struct.mei_cl_device* %104)
  br label %106

106:                                              ; preds = %103, %48
  %107 = load %struct.mei_wdt*, %struct.mei_wdt** %6, align 8
  %108 = call i32 @kfree(%struct.mei_wdt* %107)
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %100, %12
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.mei_wdt* @kzalloc(i32, i32) #1

declare dso_local i32 @mei_cldev_ver(%struct.mei_cl_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mei_cldev_set_drvdata(%struct.mei_cl_device*, %struct.mei_wdt*) #1

declare dso_local i32 @mei_cldev_enable(%struct.mei_cl_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mei_cldev_register_rx_cb(%struct.mei_cl_device*, i32) #1

declare dso_local i32 @mei_cldev_register_notif_cb(%struct.mei_cl_device*, i32) #1

declare dso_local i32 @mei_wdt_ping(%struct.mei_wdt*) #1

declare dso_local i32 @mei_wdt_register(%struct.mei_wdt*) #1

declare dso_local i32 @dbgfs_register(%struct.mei_wdt*) #1

declare dso_local i32 @mei_cldev_disable(%struct.mei_cl_device*) #1

declare dso_local i32 @kfree(%struct.mei_wdt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
