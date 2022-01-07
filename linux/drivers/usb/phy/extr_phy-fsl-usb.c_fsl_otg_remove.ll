; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.platform_device = type { i32 }
%struct.fsl_usb2_platform_data = type { i32 (%struct.platform_device*)* }

@fsl_otg_dev = common dso_local global %struct.TYPE_6__* null, align 8
@usb_dr_regs = common dso_local global i64 0, align 8
@FSL_OTG_MAJOR = common dso_local global i32 0, align 4
@FSL_OTG_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_otg_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_otg_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fsl_usb2_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.fsl_usb2_platform_data* @dev_get_platdata(i32* %5)
  store %struct.fsl_usb2_platform_data* %6, %struct.fsl_usb2_platform_data** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsl_otg_dev, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = call i32 @usb_remove_phy(%struct.TYPE_5__* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsl_otg_dev, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsl_otg_dev, align 8
  %14 = call i32 @free_irq(i32 %12, %struct.TYPE_6__* %13)
  %15 = load i64, i64* @usb_dr_regs, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @iounmap(i8* %16)
  %18 = call i32 (...) @fsl_otg_uninit_timers()
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsl_otg_dev, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call i32 @kfree(%struct.TYPE_6__* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fsl_otg_dev, align 8
  %25 = call i32 @kfree(%struct.TYPE_6__* %24)
  %26 = load i32, i32* @FSL_OTG_MAJOR, align 4
  %27 = load i32, i32* @FSL_OTG_NAME, align 4
  %28 = call i32 @unregister_chrdev(i32 %26, i32 %27)
  %29 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %3, align 8
  %30 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %29, i32 0, i32 0
  %31 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %30, align 8
  %32 = icmp ne i32 (%struct.platform_device*)* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %3, align 8
  %35 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %34, i32 0, i32 0
  %36 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %35, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %38 = call i32 %36(%struct.platform_device* %37)
  br label %39

39:                                               ; preds = %33, %1
  ret i32 0
}

declare dso_local %struct.fsl_usb2_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @usb_remove_phy(%struct.TYPE_5__*) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @fsl_otg_uninit_timers(...) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @unregister_chrdev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
