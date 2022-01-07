; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_one_byte_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_one_byte_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@EFUSE_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efuse_one_byte_read(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @EFUSE_CTRL, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 255
  %24 = call i32 @rtl_write_byte(%struct.rtl_priv* %12, i64 %21, i32 %23)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @EFUSE_CTRL, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 2
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 3
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @EFUSE_CTRL, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 2
  %48 = call i32 @rtl_read_byte(%struct.rtl_priv* %38, i64 %47)
  %49 = and i32 %48, 252
  %50 = or i32 %37, %49
  %51 = call i32 @rtl_write_byte(%struct.rtl_priv* %25, i64 %34, i32 %50)
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @EFUSE_CTRL, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 3
  %62 = call i32 @rtl_write_byte(%struct.rtl_priv* %52, i64 %61, i32 114)
  br label %63

63:                                               ; preds = %82, %3
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %66 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @EFUSE_CTRL, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 3
  %74 = call i32 @rtl_read_byte(%struct.rtl_priv* %64, i64 %73)
  %75 = and i32 128, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %63
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 100
  br label %80

80:                                               ; preds = %77, %63
  %81 = phi i1 [ false, %63 ], [ %79, %77 ]
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %63

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 100
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %91 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @EFUSE_CTRL, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @rtl_read_byte(%struct.rtl_priv* %89, i64 %97)
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  store i32 1, i32* %9, align 4
  br label %102

100:                                              ; preds = %85
  %101 = load i32*, i32** %6, align 8
  store i32 255, i32* %101, align 4
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %88
  %103 = load i32, i32* %9, align 4
  ret i32 %103
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
