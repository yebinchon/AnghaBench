; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos4x12-usb2.c_exynos4x12_power_off_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos4x12-usb2.c_exynos4x12_power_off_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_usb2_phy_instance = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_usb2_phy_instance*)* @exynos4x12_power_off_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4x12_power_off_int(%struct.samsung_usb2_phy_instance* %0) #0 {
  %2 = alloca %struct.samsung_usb2_phy_instance*, align 8
  store %struct.samsung_usb2_phy_instance* %0, %struct.samsung_usb2_phy_instance** %2, align 8
  %3 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %2, align 8
  %4 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %4, align 4
  %7 = icmp sgt i32 %5, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %2, align 8
  %11 = call i32 @exynos4x12_isol(%struct.samsung_usb2_phy_instance* %10, i32 1)
  %12 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %2, align 8
  %13 = call i32 @exynos4x12_phy_pwr(%struct.samsung_usb2_phy_instance* %12, i32 0)
  br label %14

14:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @exynos4x12_isol(%struct.samsung_usb2_phy_instance*, i32) #1

declare dso_local i32 @exynos4x12_phy_pwr(%struct.samsung_usb2_phy_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
