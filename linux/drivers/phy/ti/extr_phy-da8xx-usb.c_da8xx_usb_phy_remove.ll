; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-da8xx-usb.c_da8xx_usb_phy_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-da8xx-usb.c_da8xx_usb_phy_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.da8xx_usb_phy = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"usb-phy\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"musb-da8xx\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ohci-da8xx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da8xx_usb_phy_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_usb_phy_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.da8xx_usb_phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.da8xx_usb_phy* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.da8xx_usb_phy* %5, %struct.da8xx_usb_phy** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %3, align 8
  %13 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @phy_remove_lookup(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %3, align 8
  %17 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @phy_remove_lookup(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %11, %1
  ret i32 0
}

declare dso_local %struct.da8xx_usb_phy* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @phy_remove_lookup(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
