; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_get_hw_reg_originalvalue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_get_hw_reg_originalvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i8*, i8*, i8** }

@ROFDM0_XAAGCCORE1 = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@ROFDM0_XBAGCCORE1 = common dso_local global i32 0, align 4
@ROFDM0_XCAGCCORE1 = common dso_local global i32 0, align 4
@ROFDM0_XDAGCCORE1 = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x)\0A\00", align 1
@ROFDM0_RXDETECTOR3 = common dso_local global i32 0, align 4
@ROFDM0_RXDETECTOR2 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Default framesync (0x%x) = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92s_phy_get_hw_reg_originalvalue(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %7, i32 0, i32 0
  store %struct.rtl_phy* %8, %struct.rtl_phy** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = load i32, i32* @ROFDM0_XAAGCCORE1, align 4
  %11 = load i32, i32* @MASKBYTE0, align 4
  %12 = call i8* @rtl_get_bbreg(%struct.ieee80211_hw* %9, i32 %10, i32 %11)
  %13 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %14 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %13, i32 0, i32 2
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  store i8* %12, i8** %16, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = load i32, i32* @ROFDM0_XBAGCCORE1, align 4
  %19 = load i32, i32* @MASKBYTE0, align 4
  %20 = call i8* @rtl_get_bbreg(%struct.ieee80211_hw* %17, i32 %18, i32 %19)
  %21 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %22 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %21, i32 0, i32 2
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* %20, i8** %24, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %26 = load i32, i32* @ROFDM0_XCAGCCORE1, align 4
  %27 = load i32, i32* @MASKBYTE0, align 4
  %28 = call i8* @rtl_get_bbreg(%struct.ieee80211_hw* %25, i32 %26, i32 %27)
  %29 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %30 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %29, i32 0, i32 2
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  store i8* %28, i8** %32, align 8
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %34 = load i32, i32* @ROFDM0_XDAGCCORE1, align 4
  %35 = load i32, i32* @MASKBYTE0, align 4
  %36 = call i8* @rtl_get_bbreg(%struct.ieee80211_hw* %33, i32 %34, i32 %35)
  %37 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %38 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %37, i32 0, i32 2
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 3
  store i8* %36, i8** %40, align 8
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = load i32, i32* @COMP_INIT, align 4
  %43 = load i32, i32* @DBG_LOUD, align 4
  %44 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %45 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %44, i32 0, i32 2
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %51 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %50, i32 0, i32 2
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %56 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %55, i32 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 2
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %61 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %60, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 3
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %49, i8* %54, i8* %59, i8* %64)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = load i32, i32* @ROFDM0_RXDETECTOR3, align 4
  %68 = load i32, i32* @MASKBYTE0, align 4
  %69 = call i8* @rtl_get_bbreg(%struct.ieee80211_hw* %66, i32 %67, i32 %68)
  %70 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %71 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %73 = load i32, i32* @ROFDM0_RXDETECTOR2, align 4
  %74 = load i32, i32* @MASKDWORD, align 4
  %75 = call i8* @rtl_get_bbreg(%struct.ieee80211_hw* %72, i32 %73, i32 %74)
  %76 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %77 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %79 = load i32, i32* @COMP_INIT, align 4
  %80 = load i32, i32* @DBG_LOUD, align 4
  %81 = load i32, i32* @ROFDM0_RXDETECTOR3, align 4
  %82 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %83 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %81, i8* %84)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i8* @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
