; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-isp1301.c_isp1301_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-isp1301.c_isp1301_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i32 }
%struct.isp1301 = type { i32 }

@ISP1301_I2C_MODE_CONTROL_1 = common dso_local global i32 0, align 4
@MC1_UART_EN = common dso_local global i32 0, align 4
@MC1_SPEED_REG = common dso_local global i32 0, align 4
@ISP1301_I2C_MODE_CONTROL_2 = common dso_local global i32 0, align 4
@MC2_BI_DI = common dso_local global i32 0, align 4
@MC2_PSW_EN = common dso_local global i32 0, align 4
@MC2_SPD_SUSP_CTRL = common dso_local global i32 0, align 4
@ISP1301_I2C_OTG_CONTROL_1 = common dso_local global i32 0, align 4
@MC1_DAT_SE0 = common dso_local global i32 0, align 4
@OTG1_DM_PULLDOWN = common dso_local global i32 0, align 4
@OTG1_DP_PULLDOWN = common dso_local global i32 0, align 4
@OTG1_DM_PULLUP = common dso_local global i32 0, align 4
@OTG1_DP_PULLUP = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_LATCH = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_FALLING = common dso_local global i32 0, align 4
@ISP1301_I2C_INTERRUPT_RISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_phy*)* @isp1301_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1301_phy_init(%struct.usb_phy* %0) #0 {
  %2 = alloca %struct.usb_phy*, align 8
  %3 = alloca %struct.isp1301*, align 8
  store %struct.usb_phy* %0, %struct.usb_phy** %2, align 8
  %4 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8
  %5 = call %struct.isp1301* @phy_to_isp(%struct.usb_phy* %4)
  store %struct.isp1301* %5, %struct.isp1301** %3, align 8
  %6 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %7 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_1, align 4
  %8 = load i32, i32* @MC1_UART_EN, align 4
  %9 = call i32 @isp1301_clear(%struct.isp1301* %6, i32 %7, i32 %8)
  %10 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %11 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_1, align 4
  %12 = load i32, i32* @MC1_SPEED_REG, align 4
  %13 = xor i32 %12, -1
  %14 = call i32 @isp1301_clear(%struct.isp1301* %10, i32 %11, i32 %13)
  %15 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %16 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_1, align 4
  %17 = load i32, i32* @MC1_SPEED_REG, align 4
  %18 = call i32 @isp1301_write(%struct.isp1301* %15, i32 %16, i32 %17)
  %19 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %20 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_2, align 4
  %21 = call i32 @isp1301_clear(%struct.isp1301* %19, i32 %20, i32 -1)
  %22 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %23 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_2, align 4
  %24 = load i32, i32* @MC2_BI_DI, align 4
  %25 = load i32, i32* @MC2_PSW_EN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MC2_SPD_SUSP_CTRL, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @isp1301_write(%struct.isp1301* %22, i32 %23, i32 %28)
  %30 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %31 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %32 = call i32 @isp1301_clear(%struct.isp1301* %30, i32 %31, i32 -1)
  %33 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %34 = load i32, i32* @ISP1301_I2C_MODE_CONTROL_1, align 4
  %35 = load i32, i32* @MC1_DAT_SE0, align 4
  %36 = call i32 @isp1301_write(%struct.isp1301* %33, i32 %34, i32 %35)
  %37 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %38 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %39 = load i32, i32* @OTG1_DM_PULLDOWN, align 4
  %40 = load i32, i32* @OTG1_DP_PULLDOWN, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @isp1301_write(%struct.isp1301* %37, i32 %38, i32 %41)
  %43 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %44 = load i32, i32* @ISP1301_I2C_OTG_CONTROL_1, align 4
  %45 = load i32, i32* @OTG1_DM_PULLUP, align 4
  %46 = load i32, i32* @OTG1_DP_PULLUP, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @isp1301_clear(%struct.isp1301* %43, i32 %44, i32 %47)
  %49 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %50 = load i32, i32* @ISP1301_I2C_INTERRUPT_LATCH, align 4
  %51 = call i32 @isp1301_clear(%struct.isp1301* %49, i32 %50, i32 -1)
  %52 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %53 = load i32, i32* @ISP1301_I2C_INTERRUPT_FALLING, align 4
  %54 = call i32 @isp1301_clear(%struct.isp1301* %52, i32 %53, i32 -1)
  %55 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %56 = load i32, i32* @ISP1301_I2C_INTERRUPT_RISING, align 4
  %57 = call i32 @isp1301_clear(%struct.isp1301* %55, i32 %56, i32 -1)
  ret i32 0
}

declare dso_local %struct.isp1301* @phy_to_isp(%struct.usb_phy*) #1

declare dso_local i32 @isp1301_clear(%struct.isp1301*, i32, i32) #1

declare dso_local i32 @isp1301_write(%struct.isp1301*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
