; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_phy_v2_banks_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_phy_v2_banks_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_tphy = type { i32 }
%struct.mtk_phy_instance = type { i32, i64, %struct.u3phy_banks, %struct.u2phy_banks }
%struct.u3phy_banks = type { i64, i64, i64, i64 }
%struct.u2phy_banks = type { i64, i64, i64 }

@SSUSB_SIFSLV_V2_MISC = common dso_local global i64 0, align 8
@SSUSB_SIFSLV_V2_U2FREQ = common dso_local global i64 0, align 8
@SSUSB_SIFSLV_V2_U2PHY_COM = common dso_local global i64 0, align 8
@SSUSB_SIFSLV_V2_SPLLC = common dso_local global i64 0, align 8
@SSUSB_SIFSLV_V2_CHIP = common dso_local global i64 0, align 8
@SSUSB_SIFSLV_V2_U3PHYD = common dso_local global i64 0, align 8
@SSUSB_SIFSLV_V2_U3PHYA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"incompatible PHY type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_tphy*, %struct.mtk_phy_instance*)* @phy_v2_banks_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_v2_banks_init(%struct.mtk_tphy* %0, %struct.mtk_phy_instance* %1) #0 {
  %3 = alloca %struct.mtk_tphy*, align 8
  %4 = alloca %struct.mtk_phy_instance*, align 8
  %5 = alloca %struct.u2phy_banks*, align 8
  %6 = alloca %struct.u3phy_banks*, align 8
  store %struct.mtk_tphy* %0, %struct.mtk_tphy** %3, align 8
  store %struct.mtk_phy_instance* %1, %struct.mtk_phy_instance** %4, align 8
  %7 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %7, i32 0, i32 3
  store %struct.u2phy_banks* %8, %struct.u2phy_banks** %5, align 8
  %9 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %9, i32 0, i32 2
  store %struct.u3phy_banks* %10, %struct.u3phy_banks** %6, align 8
  %11 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %65 [
    i32 129, label %14
    i32 128, label %36
    i32 130, label %36
  ]

14:                                               ; preds = %2
  %15 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SSUSB_SIFSLV_V2_MISC, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.u2phy_banks*, %struct.u2phy_banks** %5, align 8
  %21 = getelementptr inbounds %struct.u2phy_banks, %struct.u2phy_banks* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %23 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SSUSB_SIFSLV_V2_U2FREQ, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.u2phy_banks*, %struct.u2phy_banks** %5, align 8
  %28 = getelementptr inbounds %struct.u2phy_banks, %struct.u2phy_banks* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SSUSB_SIFSLV_V2_U2PHY_COM, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.u2phy_banks*, %struct.u2phy_banks** %5, align 8
  %35 = getelementptr inbounds %struct.u2phy_banks, %struct.u2phy_banks* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %70

36:                                               ; preds = %2, %2
  %37 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SSUSB_SIFSLV_V2_SPLLC, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.u3phy_banks*, %struct.u3phy_banks** %6, align 8
  %43 = getelementptr inbounds %struct.u3phy_banks, %struct.u3phy_banks* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %45 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SSUSB_SIFSLV_V2_CHIP, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.u3phy_banks*, %struct.u3phy_banks** %6, align 8
  %50 = getelementptr inbounds %struct.u3phy_banks, %struct.u3phy_banks* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %52 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SSUSB_SIFSLV_V2_U3PHYD, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.u3phy_banks*, %struct.u3phy_banks** %6, align 8
  %57 = getelementptr inbounds %struct.u3phy_banks, %struct.u3phy_banks* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %59 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SSUSB_SIFSLV_V2_U3PHYA, align 8
  %62 = add nsw i64 %60, %61
  %63 = load %struct.u3phy_banks*, %struct.u3phy_banks** %6, align 8
  %64 = getelementptr inbounds %struct.u3phy_banks, %struct.u3phy_banks* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %70

65:                                               ; preds = %2
  %66 = load %struct.mtk_tphy*, %struct.mtk_tphy** %3, align 8
  %67 = getelementptr inbounds %struct.mtk_tphy, %struct.mtk_tphy* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %36, %14
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
