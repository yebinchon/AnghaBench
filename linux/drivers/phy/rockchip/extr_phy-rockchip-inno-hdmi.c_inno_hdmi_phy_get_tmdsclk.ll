; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_get_tmdsclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_get_tmdsclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inno_hdmi_phy*, i64)* @inno_hdmi_phy_get_tmdsclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @inno_hdmi_phy_get_tmdsclk(%struct.inno_hdmi_phy* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.inno_hdmi_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.inno_hdmi_phy* %0, %struct.inno_hdmi_phy** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %8 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @phy_get_bus_width(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %19 [
    i32 4, label %12
    i32 5, label %12
    i32 6, label %12
    i32 10, label %12
    i32 12, label %12
    i32 16, label %12
  ]

12:                                               ; preds = %2, %2, %2, %2, %2, %2
  %13 = load i64, i64* %5, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sdiv i32 %16, 8
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %3, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %19, %12
  %22 = load i64, i64* %3, align 8
  ret i64 %22
}

declare dso_local i32 @phy_get_bus_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
