; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-keystone.c_keystone_usbphy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-keystone.c_keystone_usbphy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.keystone_usbphy = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@keystone_usbphy_init = common dso_local global i32 0, align 4
@keystone_usbphy_shutdown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @keystone_usbphy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keystone_usbphy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.keystone_usbphy*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.keystone_usbphy* @devm_kzalloc(%struct.device* %10, i32 12, i32 %11)
  store %struct.keystone_usbphy* %12, %struct.keystone_usbphy** %5, align 8
  %13 = load %struct.keystone_usbphy*, %struct.keystone_usbphy** %5, align 8
  %14 = icmp ne %struct.keystone_usbphy* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %64

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %6, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = call i32 @devm_ioremap_resource(%struct.device* %22, %struct.resource* %23)
  %25 = load %struct.keystone_usbphy*, %struct.keystone_usbphy** %5, align 8
  %26 = getelementptr inbounds %struct.keystone_usbphy, %struct.keystone_usbphy* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.keystone_usbphy*, %struct.keystone_usbphy** %5, align 8
  %28 = getelementptr inbounds %struct.keystone_usbphy, %struct.keystone_usbphy* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %18
  %33 = load %struct.keystone_usbphy*, %struct.keystone_usbphy** %5, align 8
  %34 = getelementptr inbounds %struct.keystone_usbphy, %struct.keystone_usbphy* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %64

37:                                               ; preds = %18
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.keystone_usbphy*, %struct.keystone_usbphy** %5, align 8
  %40 = getelementptr inbounds %struct.keystone_usbphy, %struct.keystone_usbphy* %39, i32 0, i32 0
  %41 = call i32 @usb_phy_gen_create_phy(%struct.device* %38, %struct.TYPE_3__* %40, i32* null)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %64

46:                                               ; preds = %37
  %47 = load i32, i32* @keystone_usbphy_init, align 4
  %48 = load %struct.keystone_usbphy*, %struct.keystone_usbphy** %5, align 8
  %49 = getelementptr inbounds %struct.keystone_usbphy, %struct.keystone_usbphy* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @keystone_usbphy_shutdown, align 4
  %53 = load %struct.keystone_usbphy*, %struct.keystone_usbphy** %5, align 8
  %54 = getelementptr inbounds %struct.keystone_usbphy, %struct.keystone_usbphy* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load %struct.keystone_usbphy*, %struct.keystone_usbphy** %5, align 8
  %59 = call i32 @platform_set_drvdata(%struct.platform_device* %57, %struct.keystone_usbphy* %58)
  %60 = load %struct.keystone_usbphy*, %struct.keystone_usbphy** %5, align 8
  %61 = getelementptr inbounds %struct.keystone_usbphy, %struct.keystone_usbphy* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @usb_add_phy_dev(%struct.TYPE_4__* %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %46, %44, %32, %15
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.keystone_usbphy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @usb_phy_gen_create_phy(%struct.device*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.keystone_usbphy*) #1

declare dso_local i32 @usb_add_phy_dev(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
