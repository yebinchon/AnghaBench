; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_ind_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_ind_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, %struct.mlme_priv }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct._adapter.0*, i32)* }
%struct._adapter.0 = type opaque
%struct.mlme_priv = type { i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@LED_CTL_NO_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_ind_disconnect(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %4 = load %struct._adapter*, %struct._adapter** %2, align 8
  %5 = getelementptr inbounds %struct._adapter, %struct._adapter* %4, i32 0, i32 3
  store %struct.mlme_priv* %5, %struct.mlme_priv** %3, align 8
  %6 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %7 = load i32, i32* @_FW_LINKED, align 4
  %8 = call i64 @check_fwstate(%struct.mlme_priv* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %12 = load i32, i32* @_FW_LINKED, align 4
  %13 = call i32 @_clr_fwstate_(%struct.mlme_priv* %11, i32 %12)
  %14 = load %struct._adapter*, %struct._adapter** %2, align 8
  %15 = getelementptr inbounds %struct._adapter, %struct._adapter* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct._adapter.0*, i32)*, i32 (%struct._adapter.0*, i32)** %16, align 8
  %18 = load %struct._adapter*, %struct._adapter** %2, align 8
  %19 = bitcast %struct._adapter* %18 to %struct._adapter.0*
  %20 = load i32, i32* @LED_CTL_NO_LINK, align 4
  %21 = call i32 %17(%struct._adapter.0* %19, i32 %20)
  %22 = load %struct._adapter*, %struct._adapter** %2, align 8
  %23 = call i32 @r8712_os_indicate_disconnect(%struct._adapter* %22)
  br label %24

24:                                               ; preds = %10, %1
  %25 = load %struct._adapter*, %struct._adapter** %2, align 8
  %26 = getelementptr inbounds %struct._adapter, %struct._adapter* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct._adapter*, %struct._adapter** %2, align 8
  %30 = getelementptr inbounds %struct._adapter, %struct._adapter* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %24
  %35 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %36 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %35, i32 0, i32 0
  %37 = call i32 @del_timer(i32* %36)
  %38 = load %struct._adapter*, %struct._adapter** %2, align 8
  %39 = load %struct._adapter*, %struct._adapter** %2, align 8
  %40 = getelementptr inbounds %struct._adapter, %struct._adapter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct._adapter*, %struct._adapter** %2, align 8
  %44 = getelementptr inbounds %struct._adapter, %struct._adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @r8712_set_ps_mode(%struct._adapter* %38, i64 %42, i32 %46)
  br label %48

48:                                               ; preds = %34, %24
  ret void
}

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i32 @r8712_os_indicate_disconnect(%struct._adapter*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @r8712_set_ps_mode(%struct._adapter*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
