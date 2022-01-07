; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_phy_getTxPower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_phy.c_rtl8192_phy_getTxPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, i32*, i32* }

@rTxAGC_Rate18_06 = common dso_local global i32 0, align 4
@rTxAGC_Rate54_24 = common dso_local global i32 0, align 4
@rTxAGC_Mcs03_Mcs00 = common dso_local global i32 0, align 4
@rTxAGC_Mcs07_Mcs04 = common dso_local global i32 0, align 4
@rTxAGC_Mcs11_Mcs08 = common dso_local global i32 0, align 4
@rTxAGC_Mcs15_Mcs12 = common dso_local global i32 0, align 4
@rOFDM0_XAAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XBAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XCAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XDAGCCore1 = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x)\0A\00", align 1
@rOFDM0_RxDetector3 = common dso_local global i32 0, align 4
@rOFDM0_RxDetector2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Default framesync (0x%x) = 0x%x\0A\00", align 1
@SIFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192_phy_getTxPower(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %5)
  store %struct.r8192_priv* %6, %struct.r8192_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = load i32, i32* @rTxAGC_Rate18_06, align 4
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = call i32 @read_nic_dword(%struct.net_device* %7, i32 %8, i32* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = load i32, i32* @rTxAGC_Rate54_24, align 4
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = call i32 @read_nic_dword(%struct.net_device* %14, i32 %15, i32* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i32, i32* @rTxAGC_Mcs03_Mcs00, align 4
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = call i32 @read_nic_dword(%struct.net_device* %21, i32 %22, i32* %26)
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = load i32, i32* @rTxAGC_Mcs07_Mcs04, align 4
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = call i32 @read_nic_dword(%struct.net_device* %28, i32 %29, i32* %33)
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = load i32, i32* @rTxAGC_Mcs11_Mcs08, align 4
  %37 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %38 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = call i32 @read_nic_dword(%struct.net_device* %35, i32 %36, i32* %40)
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = load i32, i32* @rTxAGC_Mcs15_Mcs12, align 4
  %44 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %45 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = call i32 @read_nic_dword(%struct.net_device* %42, i32 %43, i32* %47)
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %51 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %52 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = call i32 @read_nic_byte(%struct.net_device* %49, i32 %50, i32* %54)
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = call i32 @read_nic_byte(%struct.net_device* %56, i32 %57, i32* %61)
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = call i32 @read_nic_byte(%struct.net_device* %63, i32 %64, i32* %68)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %72 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %73 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = call i32 @read_nic_byte(%struct.net_device* %70, i32 %71, i32* %75)
  %77 = load i32, i32* @COMP_INIT, align 4
  %78 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %79 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %84 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %89 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %94 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, i32, i32, ...) @RT_TRACE(i32 %77, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %87, i32 %92, i32 %97)
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %101 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %102 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %101, i32 0, i32 1
  %103 = call i32 @read_nic_byte(%struct.net_device* %99, i32 %100, i32* %102)
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = load i32, i32* @rOFDM0_RxDetector2, align 4
  %106 = call i32 @read_nic_byte(%struct.net_device* %104, i32 %105, i32* %4)
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %109 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @COMP_INIT, align 4
  %111 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %112 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %113 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, i32, i32, ...) @RT_TRACE(i32 %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %114)
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = load i32, i32* @SIFS, align 4
  %118 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %119 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %118, i32 0, i32 0
  %120 = call i32 @read_nic_word(%struct.net_device* %116, i32 %117, i32* %119)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32, i32*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @read_nic_word(%struct.net_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
