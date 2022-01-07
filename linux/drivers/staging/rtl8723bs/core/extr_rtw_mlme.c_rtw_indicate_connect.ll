; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_indicate_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_indicate_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"+rtw_indicate_connect\0A\00", align 1
@_FW_LINKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"-rtw_indicate_connect: fw_state = 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_indicate_connect(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  store %struct.mlme_priv* %5, %struct.mlme_priv** %3, align 8
  %6 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %7 = load i32, i32* @_drv_err_, align 4
  %8 = call i32 @RT_TRACE(i32 %6, i32 %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load i32, i32* @_FW_LINKED, align 4
  %14 = call i32 @check_fwstate(%struct.mlme_priv* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %18 = load i32, i32* @_FW_LINKED, align 4
  %19 = call i32 @set_fwstate(%struct.mlme_priv* %17, i32 %18)
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = call i32 @rtw_os_indicate_connect(%struct.adapter* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = call i32 @rtw_set_to_roam(%struct.adapter* %23, i32 0)
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = call i32 @rtw_set_scan_deny(%struct.adapter* %25, i32 3000)
  %27 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %28 = load i32, i32* @_drv_err_, align 4
  %29 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %30 = call i32 @get_fwstate(%struct.mlme_priv* %29)
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @RT_TRACE(i32 %27, i32 %28, i8* %32)
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_os_indicate_connect(%struct.adapter*) #1

declare dso_local i32 @rtw_set_to_roam(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_set_scan_deny(%struct.adapter*, i32) #1

declare dso_local i32 @get_fwstate(%struct.mlme_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
