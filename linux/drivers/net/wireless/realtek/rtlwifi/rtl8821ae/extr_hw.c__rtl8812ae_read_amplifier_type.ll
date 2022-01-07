; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8812ae_read_amplifier_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8812ae_read_amplifier_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32*, i32)* @_rtl8812ae_read_amplifier_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8812ae_read_amplifier_type(%struct.ieee80211_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %7, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %20 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %19)
  store %struct.rtl_hal* %20, %struct.rtl_hal** %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 189
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @BIT(i32 2)
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 2
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 189
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BIT(i32 6)
  %31 = and i32 %29, %30
  %32 = ashr i32 %31, 6
  store i32 %32, i32* %10, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 191
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BIT(i32 2)
  %37 = and i32 %35, %36
  %38 = ashr i32 %37, 2
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 191
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @BIT(i32 6)
  %43 = and i32 %41, %42
  %44 = ashr i32 %43, 6
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 189
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @BIT(i32 1)
  %49 = call i32 @BIT(i32 0)
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = ashr i32 %51, 0
  store i32 %52, i32* %13, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 189
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @BIT(i32 5)
  %57 = call i32 @BIT(i32 4)
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = ashr i32 %59, 4
  store i32 %60, i32* %14, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 191
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BIT(i32 1)
  %65 = call i32 @BIT(i32 0)
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = ashr i32 %67, 0
  store i32 %68, i32* %15, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 191
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @BIT(i32 5)
  %73 = call i32 @BIT(i32 4)
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = ashr i32 %75, 4
  store i32 %76, i32* %16, align 4
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @_rtl8812ae_read_pa_type(%struct.ieee80211_hw* %77, i32* %78, i32 %79)
  %81 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %82 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @BIT(i32 5)
  %85 = call i32 @BIT(i32 4)
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = call i32 @BIT(i32 5)
  %89 = call i32 @BIT(i32 4)
  %90 = or i32 %88, %89
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %3
  %93 = load i32, i32* %10, align 4
  %94 = shl i32 %93, 2
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %98 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %92, %3
  %100 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %101 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @BIT(i32 1)
  %104 = call i32 @BIT(i32 0)
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = call i32 @BIT(i32 1)
  %108 = call i32 @BIT(i32 0)
  %109 = or i32 %107, %108
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %99
  %112 = load i32, i32* %12, align 4
  %113 = shl i32 %112, 2
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %117 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %99
  %119 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %120 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @BIT(i32 7)
  %123 = call i32 @BIT(i32 3)
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = call i32 @BIT(i32 7)
  %127 = call i32 @BIT(i32 3)
  %128 = or i32 %126, %127
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %118
  %131 = load i32, i32* %14, align 4
  %132 = shl i32 %131, 2
  %133 = load i32, i32* %13, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %136 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %130, %118
  %138 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %139 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @BIT(i32 7)
  %142 = call i32 @BIT(i32 3)
  %143 = or i32 %141, %142
  %144 = and i32 %140, %143
  %145 = call i32 @BIT(i32 7)
  %146 = call i32 @BIT(i32 3)
  %147 = or i32 %145, %146
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %137
  %150 = load i32, i32* %16, align 4
  %151 = shl i32 %150, 2
  %152 = load i32, i32* %15, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %155 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %149, %137
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @_rtl8812ae_read_pa_type(%struct.ieee80211_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
