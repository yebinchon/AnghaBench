; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8190_rtl8256.c_phy_set_rf8256_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8190_rtl8256.c_phy_set_rf8256_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32 }

@RF90_PATH_MAX = common dso_local global i64 0, align 8
@VERSION_819XU_A = common dso_local global i32 0, align 4
@VERSION_819XU_B = common dso_local global i32 0, align 4
@bMask12Bits = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"phy_set_rf8256_bandwidth(): unknown hardware version\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"phy_set_rf8256_bandwidth(): unknown Bandwidth: %#X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_set_rf8256_bandwidth(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %6, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %117, %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @RF90_PATH_MAX, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %120

13:                                               ; preds = %9
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device* %14, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %117

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %112 [
    i32 129, label %21
    i32 128, label %58
  ]

21:                                               ; preds = %19
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VERSION_819XU_A, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VERSION_819XU_B, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27, %21
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @bMask12Bits, align 4
  %38 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %34, i32 %36, i32 11, i32 %37, i32 256)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load i64, i64* %5, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @bMask12Bits, align 4
  %43 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %39, i32 %41, i32 44, i32 %42, i32 983)
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @bMask12Bits, align 4
  %48 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %44, i32 %46, i32 14, i32 %47, i32 33)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = load i64, i64* %5, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @bMask12Bits, align 4
  %53 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %49, i32 %51, i32 20, i32 %52, i32 1451)
  br label %57

54:                                               ; preds = %27
  %55 = load i32, i32* @COMP_ERR, align 4
  %56 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %55, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %33
  br label %116

58:                                               ; preds = %19
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VERSION_819XU_A, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @VERSION_819XU_B, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %108

70:                                               ; preds = %64, %58
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = load i64, i64* %5, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* @bMask12Bits, align 4
  %75 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %71, i32 %73, i32 11, i32 %74, i32 768)
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = load i64, i64* %5, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* @bMask12Bits, align 4
  %80 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %76, i32 %78, i32 44, i32 %79, i32 991)
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = load i64, i64* %5, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* @bMask12Bits, align 4
  %85 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %81, i32 %83, i32 14, i32 %84, i32 161)
  %86 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %87 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 3
  br i1 %89, label %95, label %90

90:                                               ; preds = %70
  %91 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %92 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 9
  br i1 %94, label %95, label %101

95:                                               ; preds = %90, %70
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = load i64, i64* %5, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @bMask12Bits, align 4
  %100 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %96, i32 %98, i32 20, i32 %99, i32 1435)
  br label %107

101:                                              ; preds = %90
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = load i64, i64* %5, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* @bMask12Bits, align 4
  %106 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %102, i32 %104, i32 20, i32 %105, i32 1451)
  br label %107

107:                                              ; preds = %101, %95
  br label %111

108:                                              ; preds = %64
  %109 = load i32, i32* @COMP_ERR, align 4
  %110 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %109, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %107
  br label %116

112:                                              ; preds = %19
  %113 = load i32, i32* @COMP_ERR, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %113, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %111, %57
  br label %117

117:                                              ; preds = %116, %18
  %118 = load i64, i64* %5, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %5, align 8
  br label %9

120:                                              ; preds = %9
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device*, i64) #1

declare dso_local i32 @rtl8192_phy_SetRFReg(%struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
