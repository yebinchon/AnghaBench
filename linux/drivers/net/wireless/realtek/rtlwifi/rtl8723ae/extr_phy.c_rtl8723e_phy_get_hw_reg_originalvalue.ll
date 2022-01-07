; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c_rtl8723e_phy_get_hw_reg_originalvalue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c_rtl8723e_phy_get_hw_reg_originalvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i8*, i64, i8** }

@ROFDM0_XAAGCCORE1 = common dso_local global i32 0, align 4
@MASKBYTE0 = common dso_local global i32 0, align 4
@ROFDM0_XBAGCCORE1 = common dso_local global i32 0, align 4
@ROFDM0_XCAGCCORE1 = common dso_local global i32 0, align 4
@ROFDM0_XDAGCCORE1 = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x\0A\00", align 1
@ROFDM0_RXDETECTOR3 = common dso_local global i32 0, align 4
@ROFDM0_RXDETECTOR2 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Default framesync (0x%x) = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_phy_get_hw_reg_originalvalue(%struct.ieee80211_hw* %0) #0 {
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
  %12 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %9, i32 %10, i32 %11)
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %14, i32 0, i32 2
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  store i8* %13, i8** %17, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = load i32, i32* @ROFDM0_XBAGCCORE1, align 4
  %20 = load i32, i32* @MASKBYTE0, align 4
  %21 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %18, i32 %19, i32 %20)
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %24 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %23, i32 0, i32 2
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* %22, i8** %26, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = load i32, i32* @ROFDM0_XCAGCCORE1, align 4
  %29 = load i32, i32* @MASKBYTE0, align 4
  %30 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %27, i32 %28, i32 %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %33 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %32, i32 0, i32 2
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  store i8* %31, i8** %35, align 8
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %37 = load i32, i32* @ROFDM0_XDAGCCORE1, align 4
  %38 = load i32, i32* @MASKBYTE0, align 4
  %39 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %36, i32 %37, i32 %38)
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %42 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %41, i32 0, i32 2
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 3
  store i8* %40, i8** %44, align 8
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = load i32, i32* @COMP_INIT, align 4
  %47 = load i32, i32* @DBG_TRACE, align 4
  %48 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %49 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %48, i32 0, i32 2
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %55 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %60 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %59, i32 0, i32 2
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %65 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %64, i32 0, i32 2
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %58, i8* %63, i8* %68)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %71 = load i32, i32* @ROFDM0_RXDETECTOR3, align 4
  %72 = load i32, i32* @MASKBYTE0, align 4
  %73 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %70, i32 %71, i32 %72)
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %76 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %78 = load i32, i32* @ROFDM0_RXDETECTOR2, align 4
  %79 = load i32, i32* @MASKDWORD, align 4
  %80 = call i64 @rtl_get_bbreg(%struct.ieee80211_hw* %77, i32 %78, i32 %79)
  %81 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %82 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %84 = load i32, i32* @COMP_INIT, align 4
  %85 = load i32, i32* @DBG_TRACE, align 4
  %86 = load i32, i32* @ROFDM0_RXDETECTOR3, align 4
  %87 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %88 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %86, i8* %89)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @rtl_get_bbreg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
