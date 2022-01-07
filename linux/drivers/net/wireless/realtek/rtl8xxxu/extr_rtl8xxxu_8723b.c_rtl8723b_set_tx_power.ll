; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723b_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723b_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@REG_TX_AGC_A_CCK1_MCS32 = common dso_local global i32 0, align 4
@REG_TX_AGC_B_CCK11_A_CCK2_11 = common dso_local global i32 0, align 4
@REG_TX_AGC_A_RATE18_06 = common dso_local global i32 0, align 4
@REG_TX_AGC_A_RATE54_24 = common dso_local global i32 0, align 4
@REG_TX_AGC_A_MCS03_MCS00 = common dso_local global i32 0, align 4
@REG_TX_AGC_A_MCS07_MCS04 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*, i32, i32)* @rtl8723b_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723b_set_tx_power(%struct.rtl8xxxu_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl8xxxu_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @rtl8xxxu_gen2_channel_to_group(i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %18 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %25 = load i32, i32* @REG_TX_AGC_A_CCK1_MCS32, align 4
  %26 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, -65281
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = shl i32 %29, 8
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %34 = load i32, i32* @REG_TX_AGC_A_CCK1_MCS32, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %33, i32 %34, i32 %35)
  %37 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %38 = load i32, i32* @REG_TX_AGC_B_CCK11_A_CCK2_11, align 4
  %39 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 255
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 %42, 8
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 %44, 16
  %46 = or i32 %43, %45
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 24
  %49 = or i32 %46, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %53 = load i32, i32* @REG_TX_AGC_B_CCK11_A_CCK2_11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %52, i32 %53, i32 %54)
  %56 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %57 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  %63 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %64 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %63, i32 0, i32 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %75, %77
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 %79, 16
  %81 = or i32 %78, %80
  %82 = load i32, i32* %11, align 4
  %83 = shl i32 %82, 24
  %84 = or i32 %81, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %86 = load i32, i32* @REG_TX_AGC_A_RATE18_06, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %85, i32 %86, i32 %87)
  %89 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %90 = load i32, i32* @REG_TX_AGC_A_RATE54_24, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %89, i32 %90, i32 %91)
  %93 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %94 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %3
  %103 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %104 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %103, i32 0, i32 3
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %12, align 4
  br label %130

116:                                              ; preds = %3
  %117 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %118 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %117, i32 0, i32 2
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %116, %102
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = shl i32 %132, 8
  %134 = or i32 %131, %133
  %135 = load i32, i32* %12, align 4
  %136 = shl i32 %135, 16
  %137 = or i32 %134, %136
  %138 = load i32, i32* %12, align 4
  %139 = shl i32 %138, 24
  %140 = or i32 %137, %139
  store i32 %140, i32* %9, align 4
  %141 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %142 = load i32, i32* @REG_TX_AGC_A_MCS03_MCS00, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %141, i32 %142, i32 %143)
  %145 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %4, align 8
  %146 = load i32, i32* @REG_TX_AGC_A_MCS07_MCS04, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %145, i32 %146, i32 %147)
  ret void
}

declare dso_local i32 @rtl8xxxu_gen2_channel_to_group(i32) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
