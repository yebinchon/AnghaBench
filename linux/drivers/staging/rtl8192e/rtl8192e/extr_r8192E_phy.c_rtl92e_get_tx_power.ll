; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_get_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_phy.c_rtl92e_get_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i8*, i8*, i8**, i8** }

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
define dso_local void @rtl92e_get_tx_power(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = load i32, i32* @rTxAGC_Rate18_06, align 4
  %8 = call i8* @rtl92e_readl(%struct.net_device* %6, i32 %7)
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 4
  %11 = load i8**, i8*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  store i8* %8, i8** %12, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @rTxAGC_Rate54_24, align 4
  %15 = call i8* @rtl92e_readl(%struct.net_device* %13, i32 %14)
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 4
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* %15, i8** %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = load i32, i32* @rTxAGC_Mcs03_Mcs00, align 4
  %22 = call i8* @rtl92e_readl(%struct.net_device* %20, i32 %21)
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 4
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  store i8* %22, i8** %26, align 8
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = load i32, i32* @rTxAGC_Mcs07_Mcs04, align 4
  %29 = call i8* @rtl92e_readl(%struct.net_device* %27, i32 %28)
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 4
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 3
  store i8* %29, i8** %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = load i32, i32* @rTxAGC_Mcs11_Mcs08, align 4
  %36 = call i8* @rtl92e_readl(%struct.net_device* %34, i32 %35)
  %37 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %38 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %37, i32 0, i32 4
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 4
  store i8* %36, i8** %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = load i32, i32* @rTxAGC_Mcs15_Mcs12, align 4
  %43 = call i8* @rtl92e_readl(%struct.net_device* %41, i32 %42)
  %44 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %45 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %44, i32 0, i32 4
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 5
  store i8* %43, i8** %47, align 8
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %50 = call i8* @rtl92e_readb(%struct.net_device* %48, i32 %49)
  %51 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %52 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %51, i32 0, i32 3
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  store i8* %50, i8** %54, align 8
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %57 = call i8* @rtl92e_readb(%struct.net_device* %55, i32 %56)
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 3
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  store i8* %57, i8** %61, align 8
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %64 = call i8* @rtl92e_readb(%struct.net_device* %62, i32 %63)
  %65 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %66 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %65, i32 0, i32 3
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 2
  store i8* %64, i8** %68, align 8
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %71 = call i8* @rtl92e_readb(%struct.net_device* %69, i32 %70)
  %72 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %73 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %72, i32 0, i32 3
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 3
  store i8* %71, i8** %75, align 8
  %76 = load i32, i32* @COMP_INIT, align 4
  %77 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %78 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %77, i32 0, i32 3
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %84 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %83, i32 0, i32 3
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %89 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %88, i32 0, i32 3
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 2
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %94 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %93, i32 0, i32 3
  %95 = load i8**, i8*** %94, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 3
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i32, i8*, i32, i8*, ...) @RT_TRACE(i32 %76, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %82, i8* %87, i8* %92, i8* %97)
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %101 = call i8* @rtl92e_readb(%struct.net_device* %99, i32 %100)
  %102 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %103 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = load i32, i32* @rOFDM0_RxDetector2, align 4
  %106 = call i8* @rtl92e_readl(%struct.net_device* %104, i32 %105)
  %107 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %108 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @COMP_INIT, align 4
  %110 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %111 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %112 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i32, i8*, i32, i8*, ...) @RT_TRACE(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %110, i8* %113)
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = load i32, i32* @SIFS, align 4
  %117 = call i32 @rtl92e_readw(%struct.net_device* %115, i32 %116)
  %118 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %119 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i8* @rtl92e_readl(%struct.net_device*, i32) #1

declare dso_local i8* @rtl92e_readb(%struct.net_device*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @rtl92e_readw(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
