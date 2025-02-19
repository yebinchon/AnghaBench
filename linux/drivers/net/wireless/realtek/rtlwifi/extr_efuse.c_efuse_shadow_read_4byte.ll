; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_shadow_read_4byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_shadow_read_4byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_efuse = type { i32** }

@EFUSE_MODIFY_MAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i32*)* @efuse_shadow_read_4byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efuse_shadow_read_4byte(%struct.ieee80211_hw* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_efuse*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call i32 @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_efuse* @rtl_efuse(i32 %9)
  store %struct.rtl_efuse* %10, %struct.rtl_efuse** %7, align 8
  %11 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %12 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %22 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %36 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 2
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 16
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %50 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, 3
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 24
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  ret void
}

declare dso_local %struct.rtl_efuse* @rtl_efuse(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
