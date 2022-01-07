; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_tx.c_wl18xx_tx_immediate_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_tx.c_wl18xx_tx_immediate_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.wl18xx_priv* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wl18xx_priv = type { i64 }
%struct.wl18xx_fw_status_priv = type { i64, i32* }

@WLCORE_MAX_LINKS = common dso_local global i64 0, align 8
@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"last released desc = %d, current idx = %d\00", align 1
@WL18XX_FW_MAX_TX_STATUS_DESC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid desc release index %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl18xx_tx_immediate_complete(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.wl18xx_fw_status_priv*, align 8
  %4 = alloca %struct.wl18xx_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %8 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.wl18xx_fw_status_priv*
  store %struct.wl18xx_fw_status_priv* %12, %struct.wl18xx_fw_status_priv** %3, align 8
  %13 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 3
  %15 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %14, align 8
  store %struct.wl18xx_priv* %15, %struct.wl18xx_priv** %4, align 8
  %16 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %17 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.wl18xx_fw_status_priv*, %struct.wl18xx_fw_status_priv** %3, align 8
  %20 = getelementptr inbounds %struct.wl18xx_fw_status_priv, %struct.wl18xx_fw_status_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %113

24:                                               ; preds = %1
  %25 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %26 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @WLCORE_MAX_LINKS, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %24
  %35 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %42 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %40, i32* %46, align 4
  %47 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %48 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %54 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %34, %24
  %60 = load i32, i32* @DEBUG_TX, align 4
  %61 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %62 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.wl18xx_fw_status_priv*, %struct.wl18xx_fw_status_priv** %3, align 8
  %65 = getelementptr inbounds %struct.wl18xx_fw_status_priv, %struct.wl18xx_fw_status_priv* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @wl1271_debug(i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %66)
  %68 = load %struct.wl18xx_fw_status_priv*, %struct.wl18xx_fw_status_priv** %3, align 8
  %69 = getelementptr inbounds %struct.wl18xx_fw_status_priv, %struct.wl18xx_fw_status_priv* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @WL18XX_FW_MAX_TX_STATUS_DESC, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %59
  %74 = load %struct.wl18xx_fw_status_priv*, %struct.wl18xx_fw_status_priv** %3, align 8
  %75 = getelementptr inbounds %struct.wl18xx_fw_status_priv, %struct.wl18xx_fw_status_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @wl1271_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = call i32 @WARN_ON(i32 1)
  br label %113

79:                                               ; preds = %59
  %80 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %81 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %102, %79
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.wl18xx_fw_status_priv*, %struct.wl18xx_fw_status_priv** %3, align 8
  %86 = getelementptr inbounds %struct.wl18xx_fw_status_priv, %struct.wl18xx_fw_status_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %83
  %90 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %91 = load %struct.wl18xx_fw_status_priv*, %struct.wl18xx_fw_status_priv** %3, align 8
  %92 = getelementptr inbounds %struct.wl18xx_fw_status_priv, %struct.wl18xx_fw_status_priv* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %5, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @wl18xx_tx_complete_packet(%struct.wl1271* %90, i32 %96)
  %98 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %99 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %89
  %103 = load i64, i64* %5, align 8
  %104 = add i64 %103, 1
  %105 = load i64, i64* @WL18XX_FW_MAX_TX_STATUS_DESC, align 8
  %106 = urem i64 %104, %105
  store i64 %106, i64* %5, align 8
  br label %83

107:                                              ; preds = %83
  %108 = load %struct.wl18xx_fw_status_priv*, %struct.wl18xx_fw_status_priv** %3, align 8
  %109 = getelementptr inbounds %struct.wl18xx_fw_status_priv, %struct.wl18xx_fw_status_priv* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %112 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %107, %73, %23
  ret void
}

declare dso_local i32 @wl1271_debug(i32, i8*, i64, i64) #1

declare dso_local i32 @wl1271_error(i8*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wl18xx_tx_complete_packet(%struct.wl1271*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
