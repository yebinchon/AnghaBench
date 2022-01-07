; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_one_byte_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_one_byte_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@COMP_EFUSE = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Addr = %x Data=%x\0A\00", align 1
@EFUSE_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @efuse_one_byte_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efuse_one_byte_write(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %13 = load i32, i32* @COMP_EFUSE, align 4
  %14 = load i32, i32* @DBG_LOUD, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @RT_TRACE(%struct.rtl_priv* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @EFUSE_CTRL, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 255
  %30 = call i32 @rtl_write_byte(%struct.rtl_priv* %18, i64 %27, i32 %29)
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @EFUSE_CTRL, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 2
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %43 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @EFUSE_CTRL, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 2
  %51 = call i32 @rtl_read_byte(%struct.rtl_priv* %41, i64 %50)
  %52 = and i32 %51, 252
  %53 = load i32, i32* %6, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 3
  %56 = or i32 %52, %55
  %57 = call i32 @rtl_write_byte(%struct.rtl_priv* %31, i64 %40, i32 %56)
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @EFUSE_CTRL, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @rtl_write_byte(%struct.rtl_priv* %58, i64 %66, i32 %67)
  %69 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %71 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @EFUSE_CTRL, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 3
  %79 = call i32 @rtl_write_byte(%struct.rtl_priv* %69, i64 %78, i32 242)
  br label %80

80:                                               ; preds = %99, %3
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %83 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @EFUSE_CTRL, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 3
  %91 = call i32 @rtl_read_byte(%struct.rtl_priv* %81, i64 %90)
  %92 = and i32 128, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 100
  br label %97

97:                                               ; preds = %94, %80
  %98 = phi i1 [ false, %80 ], [ %96, %94 ]
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %80

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 100
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 1, i32* %4, align 4
  br label %107

106:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %105
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
