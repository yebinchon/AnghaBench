; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_write_1byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_write_1byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@EFUSE_REAL_CONTENT_SIZE = common dso_local global i64 0, align 8
@COMP_EFUSE = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Addr=%x Data =%x\0A\00", align 1
@EFUSE_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efuse_write_1byte(%struct.ieee80211_hw* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %7, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @EFUSE_REAL_CONTENT_SIZE, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %23 = load i32, i32* @COMP_EFUSE, align 4
  %24 = load i32, i32* @DBG_LOUD, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @RT_TRACE(%struct.rtl_priv* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %148

31:                                               ; preds = %3
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %34 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @EFUSE_CTRL, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @rtl_write_byte(%struct.rtl_priv* %32, i64 %40, i32 %41)
  %43 = load i64, i64* %5, align 8
  %44 = and i64 %43, 255
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %48 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @EFUSE_CTRL, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @rtl_write_byte(%struct.rtl_priv* %46, i64 %55, i32 %56)
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @EFUSE_CTRL, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 2
  %68 = call i32 @rtl_read_byte(%struct.rtl_priv* %58, i64 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i64, i64* %5, align 8
  %70 = ashr i64 %69, 8
  %71 = and i64 %70, 3
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 252
  %74 = sext i32 %73 to i64
  %75 = or i64 %71, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %9, align 4
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %79 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @EFUSE_CTRL, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 2
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @rtl_write_byte(%struct.rtl_priv* %77, i64 %86, i32 %87)
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %91 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @EFUSE_CTRL, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 3
  %99 = call i32 @rtl_read_byte(%struct.rtl_priv* %89, i64 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, 128
  store i32 %101, i32* %9, align 4
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %104 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* @EFUSE_CTRL, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 3
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @rtl_write_byte(%struct.rtl_priv* %102, i64 %111, i32 %112)
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
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
  br label %125

125:                                              ; preds = %146, %31
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, 128
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %125
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %132 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* @EFUSE_CTRL, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 3
  %140 = call i32 @rtl_read_byte(%struct.rtl_priv* %130, i64 %139)
  store i32 %140, i32* %8, align 4
  %141 = load i64, i64* %10, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %10, align 8
  %143 = load i64, i64* %10, align 8
  %144 = icmp eq i64 %143, 100
  br i1 %144, label %145, label %146

145:                                              ; preds = %129
  store i64 0, i64* %10, align 8
  br label %147

146:                                              ; preds = %129
  br label %125

147:                                              ; preds = %145, %125
  br label %148

148:                                              ; preds = %147, %3
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
