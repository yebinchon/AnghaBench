; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_shadow_write_4byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_efuse.c_efuse_shadow_write_4byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_efuse = type { i8*** }

@EFUSE_MODIFY_MAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i32)* @efuse_shadow_write_4byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efuse_shadow_write_4byte(%struct.ieee80211_hw* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_efuse*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call i32 @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_efuse* @rtl_efuse(i32 %9)
  store %struct.rtl_efuse* %10, %struct.rtl_efuse** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 255
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %16 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %15, i32 0, i32 0
  %17 = load i8***, i8**** %16, align 8
  %18 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %19 = getelementptr inbounds i8**, i8*** %17, i64 %18
  %20 = load i8**, i8*** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  store i8* %14, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %29 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %28, i32 0, i32 0
  %30 = load i8***, i8**** %29, align 8
  %31 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %32 = getelementptr inbounds i8**, i8*** %30, i64 %31
  %33 = load i8**, i8*** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  store i8* %27, i8** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %43 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %42, i32 0, i32 0
  %44 = load i8***, i8**** %43, align 8
  %45 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %46 = getelementptr inbounds i8**, i8*** %44, i64 %45
  %47 = load i8**, i8*** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 2
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8* %41, i8** %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 24
  %53 = and i32 %52, 255
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %57 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %56, i32 0, i32 0
  %58 = load i8***, i8**** %57, align 8
  %59 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %60 = getelementptr inbounds i8**, i8*** %58, i64 %59
  %61 = load i8**, i8*** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 3
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %55, i8** %64, align 8
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
