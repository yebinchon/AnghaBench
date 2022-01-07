; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_rtw_pwr_unassociated_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_rtw_pwr_unassociated_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv, %struct.xmit_priv, %struct.adapter* }
%struct.mlme_priv = type { i32 }
%struct.xmit_priv = type { i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@jiffies = common dso_local global i32 0, align 4
@WIFI_ASOC_STATE = common dso_local global i32 0, align 4
@WIFI_SITE_MONITOR = common dso_local global i32 0, align 4
@WIFI_UNDER_LINKING = common dso_local global i32 0, align 4
@WIFI_UNDER_WPS = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@NR_XMITBUFF = common dso_local global i64 0, align 8
@NR_XMIT_EXTBUFF = common dso_local global i64 0, align 8
@_drv_always_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"There are some pkts to transmit\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"free_xmitbuf_cnt: %d, free_xmit_extbuf_cnt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @rtw_pwr_unassociated_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pwr_unassociated_idle(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca %struct.xmit_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 2
  %10 = load %struct.adapter*, %struct.adapter** %9, align 8
  store %struct.adapter* %10, %struct.adapter** %3, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.mlme_priv* %12, %struct.mlme_priv** %4, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  store %struct.xmit_priv* %14, %struct.xmit_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = call %struct.TYPE_2__* @adapter_to_pwrctl(%struct.adapter* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %114

21:                                               ; preds = %1
  %22 = load i32, i32* @jiffies, align 4
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = call %struct.TYPE_2__* @adapter_to_pwrctl(%struct.adapter* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @time_before(i32 %22, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %114

30:                                               ; preds = %21
  %31 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %32 = load i32, i32* @WIFI_ASOC_STATE, align 4
  %33 = load i32, i32* @WIFI_SITE_MONITOR, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @check_fwstate(%struct.mlme_priv* %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %30
  %38 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %39 = load i32, i32* @WIFI_UNDER_LINKING, align 4
  %40 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @check_fwstate(%struct.mlme_priv* %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %37
  %45 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %46 = load i32, i32* @WIFI_AP_STATE, align 4
  %47 = call i64 @check_fwstate(%struct.mlme_priv* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %51 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %52 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %53 = or i32 %51, %52
  %54 = call i64 @check_fwstate(%struct.mlme_priv* %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %44, %37, %30
  br label %114

57:                                               ; preds = %49
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = icmp ne %struct.adapter* %58, null
  br i1 %59, label %60, label %90

60:                                               ; preds = %57
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 0
  store %struct.mlme_priv* %62, %struct.mlme_priv** %7, align 8
  %63 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %64 = load i32, i32* @WIFI_ASOC_STATE, align 4
  %65 = load i32, i32* @WIFI_SITE_MONITOR, align 4
  %66 = or i32 %64, %65
  %67 = call i64 @check_fwstate(%struct.mlme_priv* %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %60
  %70 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %71 = load i32, i32* @WIFI_UNDER_LINKING, align 4
  %72 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %73 = or i32 %71, %72
  %74 = call i64 @check_fwstate(%struct.mlme_priv* %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %69
  %77 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %78 = load i32, i32* @WIFI_AP_STATE, align 4
  %79 = call i64 @check_fwstate(%struct.mlme_priv* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %83 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %84 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %85 = or i32 %83, %84
  %86 = call i64 @check_fwstate(%struct.mlme_priv* %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81, %76, %69, %60
  br label %114

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %57
  %91 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %92 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NR_XMITBUFF, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %98 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NR_XMIT_EXTBUFF, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %96, %90
  %103 = load i32, i32* @_drv_always_, align 4
  %104 = call i32 (i32, i8*, ...) @DBG_871X_LEVEL(i32 %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @_drv_always_, align 4
  %106 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %107 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.xmit_priv*, %struct.xmit_priv** %5, align 8
  %110 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i32, i8*, ...) @DBG_871X_LEVEL(i32 %105, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %108, i64 %111)
  br label %114

113:                                              ; preds = %96
  store i32 1, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %102, %88, %56, %29, %20
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_2__* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @DBG_871X_LEVEL(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
