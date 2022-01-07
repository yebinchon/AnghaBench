; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_crport_ctrl_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_crport_ctrl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos5_usbdrd_phy = type { i64 }

@EXYNOS5_DRD_PHYREG0 = common dso_local global i64 0, align 8
@PHYREG0_CR_CAP_ADDR = common dso_local global i32 0, align 4
@PHYREG0_CR_CAP_DATA = common dso_local global i32 0, align 4
@PHYREG0_CR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos5_usbdrd_phy*, i32, i32)* @crport_ctrl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crport_ctrl_write(%struct.exynos5_usbdrd_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.exynos5_usbdrd_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.exynos5_usbdrd_phy* %0, %struct.exynos5_usbdrd_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @PHYREG0_CR_DATA_IN(i32 %9)
  %11 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %5, align 8
  %12 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EXYNOS5_DRD_PHYREG0, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %10, i64 %15)
  %17 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @PHYREG0_CR_DATA_IN(i32 %18)
  %20 = load i32, i32* @PHYREG0_CR_CAP_ADDR, align 4
  %21 = call i32 @crport_handshake(%struct.exynos5_usbdrd_phy* %17, i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %51

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @PHYREG0_CR_DATA_IN(i32 %27)
  %29 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %5, align 8
  %30 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EXYNOS5_DRD_PHYREG0, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @PHYREG0_CR_DATA_IN(i32 %36)
  %38 = load i32, i32* @PHYREG0_CR_CAP_DATA, align 4
  %39 = call i32 @crport_handshake(%struct.exynos5_usbdrd_phy* %35, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %51

44:                                               ; preds = %26
  %45 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @PHYREG0_CR_DATA_IN(i32 %46)
  %48 = load i32, i32* @PHYREG0_CR_WRITE, align 4
  %49 = call i32 @crport_handshake(%struct.exynos5_usbdrd_phy* %45, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %44, %42, %24
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @PHYREG0_CR_DATA_IN(i32) #1

declare dso_local i32 @crport_handshake(%struct.exynos5_usbdrd_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
