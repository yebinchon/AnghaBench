; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-kona-usb2.c_bcm_kona_usb_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-kona-usb2.c_bcm_kona_usb_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.bcm_kona_usb = type { i64 }

@P1CTL = common dso_local global i64 0, align 8
@P1CTL_NON_DRIVING = common dso_local global i32 0, align 4
@P1CTL_SOFT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @bcm_kona_usb_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kona_usb_phy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.bcm_kona_usb*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.bcm_kona_usb* @phy_get_drvdata(%struct.phy* %5)
  store %struct.bcm_kona_usb* %6, %struct.bcm_kona_usb** %3, align 8
  %7 = load %struct.bcm_kona_usb*, %struct.bcm_kona_usb** %3, align 8
  %8 = getelementptr inbounds %struct.bcm_kona_usb, %struct.bcm_kona_usb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @P1CTL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @P1CTL_NON_DRIVING, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @P1CTL_SOFT_RESET, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.bcm_kona_usb*, %struct.bcm_kona_usb** %3, align 8
  %22 = getelementptr inbounds %struct.bcm_kona_usb, %struct.bcm_kona_usb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @P1CTL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @P1CTL_SOFT_RESET, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load %struct.bcm_kona_usb*, %struct.bcm_kona_usb** %3, align 8
  %32 = getelementptr inbounds %struct.bcm_kona_usb, %struct.bcm_kona_usb* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @P1CTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = call i32 @mdelay(i32 2)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @P1CTL_SOFT_RESET, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.bcm_kona_usb*, %struct.bcm_kona_usb** %3, align 8
  %42 = getelementptr inbounds %struct.bcm_kona_usb, %struct.bcm_kona_usb* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @P1CTL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  ret i32 0
}

declare dso_local %struct.bcm_kona_usb* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
