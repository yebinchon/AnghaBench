; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_read_efuse_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_read_efuse_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@EFUSE_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_efuse_byte(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %7, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @EFUSE_CTRL, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 255
  %25 = call i32 @rtl_write_byte(%struct.rtl_priv* %13, i64 %22, i32 %24)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @EFUSE_CTRL, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 2
  %36 = call i32 @rtl_read_byte(%struct.rtl_priv* %26, i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @EFUSE_CTRL, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 2
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 3
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 252
  %52 = or i32 %49, %51
  %53 = call i32 @rtl_write_byte(%struct.rtl_priv* %37, i64 %46, i32 %52)
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @EFUSE_CTRL, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 3
  %64 = call i32 @rtl_read_byte(%struct.rtl_priv* %54, i64 %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %67 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @EFUSE_CTRL, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 3
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, 127
  %77 = call i32 @rtl_write_byte(%struct.rtl_priv* %65, i64 %74, i32 %76)
  store i32 0, i32* %10, align 4
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @EFUSE_CTRL, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @rtl_read_dword(%struct.rtl_priv* %78, i64 %86)
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %99, %3
  %89 = load i32, i32* %8, align 4
  %90 = ashr i32 %89, 24
  %91 = and i32 %90, 255
  %92 = and i32 %91, 128
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 10000
  br label %97

97:                                               ; preds = %94, %88
  %98 = phi i1 [ false, %88 ], [ %96, %94 ]
  br i1 %98, label %99, label %112

99:                                               ; preds = %97
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %102 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @EFUSE_CTRL, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @rtl_read_dword(%struct.rtl_priv* %100, i64 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %88

112:                                              ; preds = %97
  %113 = call i32 @udelay(i32 50)
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %116 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @EFUSE_CTRL, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @rtl_read_dword(%struct.rtl_priv* %114, i64 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = and i32 %124, 255
  %126 = load i32*, i32** %6, align 8
  store i32 %125, i32* %126, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
