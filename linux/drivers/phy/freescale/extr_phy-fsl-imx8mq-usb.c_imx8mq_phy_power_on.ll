; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8mq-usb.c_imx8mq_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8mq-usb.c_imx8mq_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.imx8mq_usb_phy = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @imx8mq_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx8mq_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.imx8mq_usb_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.imx8mq_usb_phy* @phy_get_drvdata(%struct.phy* %6)
  store %struct.imx8mq_usb_phy* %7, %struct.imx8mq_usb_phy** %4, align 8
  %8 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %4, align 8
  %9 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @regulator_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %4, align 8
  %18 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_prepare_enable(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %16, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.imx8mq_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
