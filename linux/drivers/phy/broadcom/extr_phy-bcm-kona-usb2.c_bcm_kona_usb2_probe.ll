; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-kona-usb2.c_bcm_kona_usb2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-kona-usb2.c_bcm_kona_usb2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.bcm_kona_usb = type { %struct.phy* }
%struct.phy = type { i32 }
%struct.resource = type { i32 }
%struct.phy_provider = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_kona_usb2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kona_usb2_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.bcm_kona_usb*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.phy*, align 8
  %8 = alloca %struct.phy_provider*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.bcm_kona_usb* @devm_kzalloc(%struct.device* %11, i32 8, i32 %12)
  store %struct.bcm_kona_usb* %13, %struct.bcm_kona_usb** %5, align 8
  %14 = load %struct.bcm_kona_usb*, %struct.bcm_kona_usb** %5, align 8
  %15 = icmp ne %struct.bcm_kona_usb* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %62

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %6, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = call %struct.phy* @devm_ioremap_resource(%struct.device* %24, %struct.resource* %25)
  %27 = load %struct.bcm_kona_usb*, %struct.bcm_kona_usb** %5, align 8
  %28 = getelementptr inbounds %struct.bcm_kona_usb, %struct.bcm_kona_usb* %27, i32 0, i32 0
  store %struct.phy* %26, %struct.phy** %28, align 8
  %29 = load %struct.bcm_kona_usb*, %struct.bcm_kona_usb** %5, align 8
  %30 = getelementptr inbounds %struct.bcm_kona_usb, %struct.bcm_kona_usb* %29, i32 0, i32 0
  %31 = load %struct.phy*, %struct.phy** %30, align 8
  %32 = call i64 @IS_ERR(%struct.phy* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.bcm_kona_usb*, %struct.bcm_kona_usb** %5, align 8
  %36 = getelementptr inbounds %struct.bcm_kona_usb, %struct.bcm_kona_usb* %35, i32 0, i32 0
  %37 = load %struct.phy*, %struct.phy** %36, align 8
  %38 = call i32 @PTR_ERR(%struct.phy* %37)
  store i32 %38, i32* %2, align 4
  br label %62

39:                                               ; preds = %19
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.bcm_kona_usb*, %struct.bcm_kona_usb** %5, align 8
  %42 = call i32 @platform_set_drvdata(%struct.platform_device* %40, %struct.bcm_kona_usb* %41)
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call %struct.phy* @devm_phy_create(%struct.device* %43, i32* null, i32* @ops)
  store %struct.phy* %44, %struct.phy** %7, align 8
  %45 = load %struct.phy*, %struct.phy** %7, align 8
  %46 = call i64 @IS_ERR(%struct.phy* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.phy*, %struct.phy** %7, align 8
  %50 = call i32 @PTR_ERR(%struct.phy* %49)
  store i32 %50, i32* %2, align 4
  br label %62

51:                                               ; preds = %39
  %52 = load %struct.phy*, %struct.phy** %7, align 8
  %53 = call i32 @phy_set_bus_width(%struct.phy* %52, i32 8)
  %54 = load %struct.phy*, %struct.phy** %7, align 8
  %55 = load %struct.bcm_kona_usb*, %struct.bcm_kona_usb** %5, align 8
  %56 = call i32 @phy_set_drvdata(%struct.phy* %54, %struct.bcm_kona_usb* %55)
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* @of_phy_simple_xlate, align 4
  %59 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %57, i32 %58)
  store %struct.phy_provider* %59, %struct.phy_provider** %8, align 8
  %60 = load %struct.phy_provider*, %struct.phy_provider** %8, align 8
  %61 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %60)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %51, %48, %34, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.bcm_kona_usb* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm_kona_usb*) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_bus_width(%struct.phy*, i32) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.bcm_kona_usb*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
