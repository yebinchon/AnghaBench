; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c__rtl92e_phy_config_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c__rtl92e_phy_config_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64 }

@AGCTAB_ArrayLength = common dso_local global i32 0, align 4
@Rtl819XAGCTAB_Array = common dso_local global i32* null, align 8
@RF_2T4R = common dso_local global i64 0, align 8
@PHY_REGArrayLength = common dso_local global i32 0, align 4
@Rtl819XPHY_REGArray = common dso_local global i32* null, align 8
@RF_1T2R = common dso_local global i64 0, align 8
@PHY_REG_1T2RArrayLength = common dso_local global i32 0, align 4
@Rtl819XPHY_REG_1T2RArray = common dso_local global i32* null, align 8
@BaseBand_Config_PHY_REG = common dso_local global i64 0, align 8
@bMaskDWord = common dso_local global i32 0, align 4
@COMP_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"i: %x, The Rtl819xUsbPHY_REGArray[0] is %x Rtl819xUsbPHY_REGArray[1] is %x\0A\00", align 1
@BaseBand_Config_AGC_TAB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"i:%x, The rtl819XAGCTAB_Array[0] is %x rtl819XAGCTAB_Array[1] is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @_rtl92e_phy_config_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_phy_config_bb(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %11)
  store %struct.r8192_priv* %12, %struct.r8192_priv** %10, align 8
  %13 = load i32, i32* @AGCTAB_ArrayLength, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** @Rtl819XAGCTAB_Array, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RF_2T4R, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @PHY_REGArrayLength, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** @Rtl819XPHY_REGArray, align 8
  store i32* %22, i32** %6, align 8
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RF_1T2R, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @PHY_REG_1T2RArrayLength, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** @Rtl819XPHY_REG_1T2RArray, align 8
  store i32* %31, i32** %6, align 8
  br label %32

32:                                               ; preds = %29, %23
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @BaseBand_Config_PHY_REG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %71, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @bMaskDWord, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %43, i32 %48, i32 %49, i32 %55)
  %57 = load i32, i32* @COMP_DBG, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @RT_TRACE(i32 %57, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %63, i32 %69)
  br label %71

71:                                               ; preds = %42
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %5, align 4
  br label %38

74:                                               ; preds = %38
  br label %118

75:                                               ; preds = %33
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @BaseBand_Config_AGC_TAB, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %117

79:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %113, %79
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %116

84:                                               ; preds = %80
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @bMaskDWord, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %85, i32 %90, i32 %91, i32 %97)
  %99 = load i32, i32* @COMP_DBG, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @RT_TRACE(i32 %99, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %105, i32 %111)
  br label %113

113:                                              ; preds = %84
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 2
  store i32 %115, i32* %5, align 4
  br label %80

116:                                              ; preds = %80
  br label %117

117:                                              ; preds = %116, %75
  br label %118

118:                                              ; preds = %117, %74
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_set_bb_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
