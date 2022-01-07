; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_rx_usb3_cfg_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_rx_usb3_cfg_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_typec_phy = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_typec_phy*, i32)* @tcphy_rx_usb3_cfg_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcphy_rx_usb3_cfg_lane(%struct.rockchip_typec_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.rockchip_typec_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.rockchip_typec_phy* %0, %struct.rockchip_typec_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %6 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @RX_PSC_A0(i32 %8)
  %10 = add nsw i64 %7, %9
  %11 = call i32 @writel(i32 42749, i64 %10)
  %12 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %13 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @RX_PSC_A1(i32 %15)
  %17 = add nsw i64 %14, %16
  %18 = call i32 @writel(i32 42749, i64 %17)
  %19 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %20 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @RX_PSC_A2(i32 %22)
  %24 = add nsw i64 %21, %23
  %25 = call i32 @writel(i32 42000, i64 %24)
  %26 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %27 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @RX_PSC_A3(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = call i32 @writel(i32 9232, i64 %31)
  %33 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %34 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @RX_PSC_CAL(i32 %36)
  %38 = add nsw i64 %35, %37
  %39 = call i32 @writel(i32 9215, i64 %38)
  %40 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %41 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @RX_SIGDET_HL_FILT_TMR(i32 %43)
  %45 = add nsw i64 %42, %44
  %46 = call i32 @writel(i32 19, i64 %45)
  %47 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %48 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @RX_REE_CTRL_DATA_MASK(i32 %50)
  %52 = add nsw i64 %49, %51
  %53 = call i32 @writel(i32 999, i64 %52)
  %54 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %55 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @RX_DIAG_SIGDET_TUNE(i32 %57)
  %59 = add nsw i64 %56, %58
  %60 = call i32 @writel(i32 4100, i64 %59)
  %61 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %62 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @RX_PSC_RDY(i32 %64)
  %66 = add nsw i64 %63, %65
  %67 = call i32 @writel(i32 8208, i64 %66)
  %68 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %69 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i64 @XCVR_DIAG_BIDI_CTRL(i32 %71)
  %73 = add nsw i64 %70, %72
  %74 = call i32 @writel(i32 251, i64 %73)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @RX_PSC_A0(i32) #1

declare dso_local i64 @RX_PSC_A1(i32) #1

declare dso_local i64 @RX_PSC_A2(i32) #1

declare dso_local i64 @RX_PSC_A3(i32) #1

declare dso_local i64 @RX_PSC_CAL(i32) #1

declare dso_local i64 @RX_SIGDET_HL_FILT_TMR(i32) #1

declare dso_local i64 @RX_REE_CTRL_DATA_MASK(i32) #1

declare dso_local i64 @RX_DIAG_SIGDET_TUNE(i32) #1

declare dso_local i64 @RX_PSC_RDY(i32) #1

declare dso_local i64 @XCVR_DIAG_BIDI_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
