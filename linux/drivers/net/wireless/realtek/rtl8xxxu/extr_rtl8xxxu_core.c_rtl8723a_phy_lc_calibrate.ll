; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8723a_phy_lc_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8723a_phy_lc_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@REG_OFDM1_LSTF = common dso_local global i32 0, align 4
@OFDM_LSTF_MASK = common dso_local global i32 0, align 4
@RF_A = common dso_local global i32 0, align 4
@RF6052_REG_AC = common dso_local global i32 0, align 4
@RF_B = common dso_local global i32 0, align 4
@REG_TXPAUSE = common dso_local global i32 0, align 4
@RF6052_REG_S0S1 = common dso_local global i32 0, align 4
@RF6052_REG_MODE_AG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*)* @rtl8723a_phy_lc_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723a_phy_lc_calibrate(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %8 = load i32, i32* @REG_OFDM1_LSTF, align 4
  %9 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @OFDM_LSTF_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @OFDM_LSTF_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %3, align 4
  %19 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %20 = load i32, i32* @REG_OFDM1_LSTF, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %19, i32 %20, i32 %21)
  %23 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %24 = load i32, i32* @RF_A, align 4
  %25 = load i32, i32* @RF6052_REG_AC, align 4
  %26 = call i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv* %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %28 = load i32, i32* @RF_A, align 4
  %29 = load i32, i32* @RF6052_REG_AC, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 589823
  %32 = or i32 %31, 65536
  %33 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %27, i32 %28, i32 %29, i32 %32)
  %34 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %35 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %50

38:                                               ; preds = %14
  %39 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %40 = load i32, i32* @RF_B, align 4
  %41 = load i32, i32* @RF6052_REG_AC, align 4
  %42 = call i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv* %39, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %44 = load i32, i32* @RF_B, align 4
  %45 = load i32, i32* @RF6052_REG_AC, align 4
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 589823
  %48 = or i32 %47, 65536
  %49 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %43, i32 %44, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %38, %14
  br label %55

51:                                               ; preds = %1
  %52 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %53 = load i32, i32* @REG_TXPAUSE, align 4
  %54 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %52, i32 %53, i32 255)
  br label %55

55:                                               ; preds = %51, %50
  %56 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %57 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %64 = load i32, i32* @RF_A, align 4
  %65 = load i32, i32* @RF6052_REG_S0S1, align 4
  %66 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %63, i32 %64, i32 %65, i32 916448)
  br label %67

67:                                               ; preds = %62, %55
  %68 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %69 = load i32, i32* @RF_A, align 4
  %70 = load i32, i32* @RF6052_REG_MODE_AG, align 4
  %71 = call i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv* %68, i32 %69, i32 %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, 32768
  store i32 %73, i32* %3, align 4
  %74 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %75 = load i32, i32* @RF_A, align 4
  %76 = load i32, i32* @RF6052_REG_MODE_AG, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %74, i32 %75, i32 %76, i32 %77)
  %79 = call i32 @msleep(i32 100)
  %80 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %81 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %67
  %87 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %88 = load i32, i32* @RF_A, align 4
  %89 = load i32, i32* @RF6052_REG_S0S1, align 4
  %90 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %87, i32 %88, i32 %89, i32 917472)
  br label %91

91:                                               ; preds = %86, %67
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @OFDM_LSTF_MASK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %91
  %97 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %98 = load i32, i32* @REG_OFDM1_LSTF, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %97, i32 %98, i32 %99)
  %101 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %102 = load i32, i32* @RF_A, align 4
  %103 = load i32, i32* @RF6052_REG_AC, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %107 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %116

110:                                              ; preds = %96
  %111 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %112 = load i32, i32* @RF_B, align 4
  %113 = load i32, i32* @RF6052_REG_AC, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv* %111, i32 %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %96
  br label %121

117:                                              ; preds = %91
  %118 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %119 = load i32, i32* @REG_TXPAUSE, align 4
  %120 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %118, i32 %119, i32 0)
  br label %121

121:                                              ; preds = %117, %116
  ret void
}

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_read_rfreg(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write_rfreg(%struct.rtl8xxxu_priv*, i32, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
