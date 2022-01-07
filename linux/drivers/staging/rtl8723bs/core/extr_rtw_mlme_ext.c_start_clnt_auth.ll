; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_start_clnt_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_start_clnt_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i64, i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i64, i64, i64, i32 }

@WIFI_FW_AUTH_NULL = common dso_local global i32 0, align 4
@WIFI_FW_AUTH_STATE = common dso_local global i32 0, align 4
@_drv_always_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"start auth\0A\00", align 1
@REAUTH_TO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_clnt_auth(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_ext_priv*, align 8
  %4 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  store %struct.mlme_ext_priv* %6, %struct.mlme_ext_priv** %3, align 8
  %7 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %7, i32 0, i32 2
  store %struct.mlme_ext_info* %8, %struct.mlme_ext_info** %4, align 8
  %9 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %9, i32 0, i32 1
  %11 = call i32 @del_timer_sync(i32* %10)
  %12 = load i32, i32* @WIFI_FW_AUTH_NULL, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %15 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* @WIFI_FW_AUTH_STATE, align 4
  %19 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %20 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %24 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %26 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %28 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %30 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %32 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @_drv_always_, align 4
  %34 = call i32 @DBG_871X_LEVEL(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = call i32 @issue_auth(%struct.adapter* %35, i32* null, i32 0)
  %37 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %38 = load i32, i32* @REAUTH_TO, align 4
  %39 = call i32 @set_link_timer(%struct.mlme_ext_priv* %37, i32 %38)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @DBG_871X_LEVEL(i32, i8*) #1

declare dso_local i32 @issue_auth(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @set_link_timer(%struct.mlme_ext_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
