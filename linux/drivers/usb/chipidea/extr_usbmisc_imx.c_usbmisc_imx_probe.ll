; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_usbmisc_imx.c_usbmisc_imx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.imx_usbmisc = type { %struct.usbmisc_ops*, i32, i32 }
%struct.usbmisc_ops = type { i32 }
%struct.of_device_id = type { i64 }

@usbmisc_imx_dt_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usbmisc_imx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbmisc_imx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.imx_usbmisc*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @usbmisc_imx_dt_ids, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.of_device_id* @of_match_device(i32 %6, i32* %8)
  store %struct.of_device_id* %9, %struct.of_device_id** %5, align 8
  %10 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %11 = icmp ne %struct.of_device_id* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %53

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.imx_usbmisc* @devm_kzalloc(i32* %17, i32 16, i32 %18)
  store %struct.imx_usbmisc* %19, %struct.imx_usbmisc** %4, align 8
  %20 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %21 = icmp ne %struct.imx_usbmisc* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %15
  %26 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %27 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %26, i32 0, i32 2
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %29, i32 0)
  %31 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %32 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %34 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %40 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %53

43:                                               ; preds = %25
  %44 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %45 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.usbmisc_ops*
  %48 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %49 = getelementptr inbounds %struct.imx_usbmisc, %struct.imx_usbmisc* %48, i32 0, i32 0
  store %struct.usbmisc_ops* %47, %struct.usbmisc_ops** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load %struct.imx_usbmisc*, %struct.imx_usbmisc** %4, align 8
  %52 = call i32 @platform_set_drvdata(%struct.platform_device* %50, %struct.imx_usbmisc* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %43, %38, %22, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local %struct.imx_usbmisc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx_usbmisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
