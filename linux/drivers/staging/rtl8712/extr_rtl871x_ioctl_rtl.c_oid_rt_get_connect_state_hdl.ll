; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_get_connect_state_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_rtl.c_oid_rt_get_connect_state_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_par_priv = type { i64, i32, i32*, i64, %struct._adapter* }
%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@QUERY_OID = common dso_local global i64 0, align 8
@RNDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@CHECKINGSTATUS = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@ASSOCIATED = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@ADHOCMODE = common dso_local global i32 0, align 4
@NOTASSOCIATED = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_rt_get_connect_state_hdl(%struct.oid_par_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.oid_par_priv*, align 8
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.mlme_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.oid_par_priv* %0, %struct.oid_par_priv** %3, align 8
  %7 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %8 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %7, i32 0, i32 4
  %9 = load %struct._adapter*, %struct._adapter** %8, align 8
  store %struct._adapter* %9, %struct._adapter** %4, align 8
  %10 = load %struct._adapter*, %struct._adapter** %4, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 0
  store %struct.mlme_priv* %11, %struct.mlme_priv** %5, align 8
  %12 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %13 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QUERY_OID, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @RNDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %1
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %21 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %22 = call i64 @check_fwstate(%struct.mlme_priv* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @CHECKINGSTATUS, align 4
  store i32 %25, i32* %6, align 4
  br label %44

26:                                               ; preds = %19
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %28 = load i32, i32* @_FW_LINKED, align 4
  %29 = call i64 @check_fwstate(%struct.mlme_priv* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ASSOCIATED, align 4
  store i32 %32, i32* %6, align 4
  br label %43

33:                                               ; preds = %26
  %34 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %35 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %36 = call i64 @check_fwstate(%struct.mlme_priv* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @ADHOCMODE, align 4
  store i32 %39, i32* %6, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @NOTASSOCIATED, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %31
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %47 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  store i32 %45, i32* %49, align 4
  %50 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %51 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.oid_par_priv*, %struct.oid_par_priv** %3, align 8
  %54 = getelementptr inbounds %struct.oid_par_priv, %struct.oid_par_priv* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %44, %17
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
