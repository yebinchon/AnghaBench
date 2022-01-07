; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_read_1byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_read_1byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@EFUSE_REAL_CONTENT_SIZE = common dso_local global i64 0, align 8
@EFUSE_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efuse_read_1byte(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %6, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @EFUSE_REAL_CONTENT_SIZE, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %143

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = and i64 %26, 255
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @EFUSE_CTRL, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @rtl_write_byte(%struct.rtl_priv* %29, i64 %38, i32 %39)
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %43 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @EFUSE_CTRL, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 2
  %51 = call i32 @rtl_read_byte(%struct.rtl_priv* %41, i64 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i64, i64* %5, align 8
  %53 = ashr i64 %52, 8
  %54 = and i64 %53, 3
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 252
  %57 = sext i32 %56 to i64
  %58 = or i64 %54, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @EFUSE_CTRL, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 2
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @rtl_write_byte(%struct.rtl_priv* %60, i64 %69, i32 %70)
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @EFUSE_CTRL, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 3
  %82 = call i32 @rtl_read_byte(%struct.rtl_priv* %72, i64 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 127
  store i32 %84, i32* %9, align 4
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %87 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* @EFUSE_CTRL, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 3
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @rtl_write_byte(%struct.rtl_priv* %85, i64 %94, i32 %95)
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %99 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* @EFUSE_CTRL, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 3
  %107 = call i32 @rtl_read_byte(%struct.rtl_priv* %97, i64 %106)
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %130, %25
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 128
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  br i1 %112, label %113, label %131

113:                                              ; preds = %108
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %116 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @EFUSE_CTRL, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 3
  %124 = call i32 @rtl_read_byte(%struct.rtl_priv* %114, i64 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i64, i64* %10, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %10, align 8
  %127 = load i64, i64* %10, align 8
  %128 = icmp eq i64 %127, 1000
  br i1 %128, label %129, label %130

129:                                              ; preds = %113
  br label %131

130:                                              ; preds = %113
  br label %108

131:                                              ; preds = %129, %108
  %132 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %134 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* @EFUSE_CTRL, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @rtl_read_byte(%struct.rtl_priv* %132, i64 %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %3, align 4
  br label %144

143:                                              ; preds = %2
  store i32 255, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %131
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
