; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_sa_query_timer_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_sa_query_timer_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }
%struct.timer_list = type { i32 }

@mlmeextpriv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SA query timeout disconnect\0A\00", align 1
@padapter = common dso_local global %struct.adapter* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sa_query_timer_hdl(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = ptrtoint %struct.adapter* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mlmeextpriv, i32 0, i32 0), align 4
  %9 = call %struct.adapter* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.adapter* %9, %struct.adapter** %3, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  store %struct.mlme_priv* %11, %struct.mlme_priv** %4, align 8
  %12 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %16 = load i32, i32* @_FW_LINKED, align 4
  %17 = call i64 @check_fwstate(%struct.mlme_priv* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = call i32 @rtw_disassoc_cmd(%struct.adapter* %20, i32 0, i32 1)
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = call i32 @rtw_indicate_disconnect(%struct.adapter* %22)
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = call i32 @rtw_free_assoc_resources(%struct.adapter* %24, i32 1)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %28 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_bh(i32* %28)
  %30 = call i32 @DBG_871X(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_disassoc_cmd(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_indicate_disconnect(%struct.adapter*) #1

declare dso_local i32 @rtw_free_assoc_resources(%struct.adapter*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @DBG_871X(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
