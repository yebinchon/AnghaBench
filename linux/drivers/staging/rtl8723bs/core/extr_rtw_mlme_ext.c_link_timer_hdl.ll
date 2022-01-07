; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_link_timer_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_link_timer_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i64, i32, i64 }
%struct.timer_list = type { i32 }

@mlmeextpriv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@WIFI_FW_AUTH_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"link_timer_hdl:no beacon while connecting\0A\00", align 1
@WIFI_FW_NULL_STATE = common dso_local global i8* null, align 8
@WIFI_FW_AUTH_STATE = common dso_local global i32 0, align 4
@REAUTH_LIMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"link_timer_hdl: auth timeout and try again\0A\00", align 1
@REAUTH_TO = common dso_local global i32 0, align 4
@WIFI_FW_ASSOC_STATE = common dso_local global i32 0, align 4
@REASSOC_LIMIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"link_timer_hdl: assoc timeout and try again\0A\00", align 1
@REASSOC_TO = common dso_local global i32 0, align 4
@padapter = common dso_local global %struct.adapter* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_timer_hdl(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.mlme_ext_priv*, align 8
  %5 = alloca %struct.mlme_ext_info*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = ptrtoint %struct.adapter* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mlmeextpriv, i32 0, i32 0), align 4
  %10 = call %struct.adapter* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.adapter* %10, %struct.adapter** %3, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.mlme_ext_priv* %12, %struct.mlme_ext_priv** %4, align 8
  %13 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %13, i32 0, i32 0
  store %struct.mlme_ext_info* %14, %struct.mlme_ext_info** %5, align 8
  %15 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %16 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @WIFI_FW_AUTH_NULL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = call i32 @DBG_871X(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** @WIFI_FW_NULL_STATE, align 8
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %26 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = call i32 @report_join_res(%struct.adapter* %27, i32 -3)
  br label %87

29:                                               ; preds = %1
  %30 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %31 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @WIFI_FW_AUTH_STATE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %38 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load i64, i64* @REAUTH_LIMIT, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %45 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = call i32 @report_join_res(%struct.adapter* %46, i32 -1)
  br label %88

48:                                               ; preds = %36
  %49 = call i32 @DBG_871X(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %51 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = call i32 @issue_auth(%struct.adapter* %52, i32* null, i32 0)
  %54 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %55 = load i32, i32* @REAUTH_TO, align 4
  %56 = call i32 @set_link_timer(%struct.mlme_ext_priv* %54, i32 %55)
  br label %86

57:                                               ; preds = %29
  %58 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %59 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @WIFI_FW_ASSOC_STATE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %57
  %65 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %66 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load i64, i64* @REASSOC_LIMIT, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i8*, i8** @WIFI_FW_NULL_STATE, align 8
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %75 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.adapter*, %struct.adapter** %3, align 8
  %77 = call i32 @report_join_res(%struct.adapter* %76, i32 -2)
  br label %88

78:                                               ; preds = %64
  %79 = call i32 @DBG_871X(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.adapter*, %struct.adapter** %3, align 8
  %81 = call i32 @issue_assocreq(%struct.adapter* %80)
  %82 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %83 = load i32, i32* @REASSOC_TO, align 4
  %84 = call i32 @set_link_timer(%struct.mlme_ext_priv* %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %57
  br label %86

86:                                               ; preds = %85, %48
  br label %87

87:                                               ; preds = %86, %21
  br label %88

88:                                               ; preds = %87, %71, %43
  ret void
}

declare dso_local %struct.adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i32 @report_join_res(%struct.adapter*, i32) #1

declare dso_local i32 @issue_auth(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @set_link_timer(%struct.mlme_ext_priv*, i32) #1

declare dso_local i32 @issue_assocreq(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
