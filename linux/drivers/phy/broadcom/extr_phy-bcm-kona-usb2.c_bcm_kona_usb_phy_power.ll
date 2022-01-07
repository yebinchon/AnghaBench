; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-kona-usb2.c_bcm_kona_usb_phy_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-kona-usb2.c_bcm_kona_usb_phy_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kona_usb = type { i64 }

@OTGCTL = common dso_local global i64 0, align 8
@OTGCTL_OTGSTAT2 = common dso_local global i32 0, align 4
@OTGCTL_OTGSTAT1 = common dso_local global i32 0, align 4
@OTGCTL_UTMI_LINE_STATE1 = common dso_local global i32 0, align 4
@OTGCTL_UTMI_LINE_STATE0 = common dso_local global i32 0, align 4
@OTGCTL_PRST_N_SW = common dso_local global i32 0, align 4
@OTGCTL_HRESET_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_kona_usb*, i32)* @bcm_kona_usb_phy_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_kona_usb_phy_power(%struct.bcm_kona_usb* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_kona_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm_kona_usb* %0, %struct.bcm_kona_usb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bcm_kona_usb*, %struct.bcm_kona_usb** %3, align 8
  %7 = getelementptr inbounds %struct.bcm_kona_usb, %struct.bcm_kona_usb* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @OTGCTL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i32, i32* @OTGCTL_OTGSTAT2, align 4
  %16 = load i32, i32* @OTGCTL_OTGSTAT1, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @OTGCTL_UTMI_LINE_STATE1, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @OTGCTL_UTMI_LINE_STATE0, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @OTGCTL_PRST_N_SW, align 4
  %26 = load i32, i32* @OTGCTL_HRESET_N, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %37

30:                                               ; preds = %2
  %31 = load i32, i32* @OTGCTL_PRST_N_SW, align 4
  %32 = load i32, i32* @OTGCTL_HRESET_N, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %30, %14
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.bcm_kona_usb*, %struct.bcm_kona_usb** %3, align 8
  %40 = getelementptr inbounds %struct.bcm_kona_usb, %struct.bcm_kona_usb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @OTGCTL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
