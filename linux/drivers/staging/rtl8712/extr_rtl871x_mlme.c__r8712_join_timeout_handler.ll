; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c__r8712_join_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c__r8712_join_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_4__, %struct.TYPE_3__, i64, i64, %struct.mlme_priv }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.mlme_priv = type { i32, i32 }

@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_r8712_join_timeout_handler(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %5 = load %struct._adapter*, %struct._adapter** %2, align 8
  %6 = getelementptr inbounds %struct._adapter, %struct._adapter* %5, i32 0, i32 4
  store %struct.mlme_priv* %6, %struct.mlme_priv** %4, align 8
  %7 = load %struct._adapter*, %struct._adapter** %2, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct._adapter*, %struct._adapter** %2, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  br label %63

17:                                               ; preds = %11
  %18 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %19 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %23 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %24 = call i32 @_clr_fwstate_(%struct.mlme_priv* %22, i32 %23)
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %26 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %28 = load i32, i32* @_FW_LINKED, align 4
  %29 = call i64 @check_fwstate(%struct.mlme_priv* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = load %struct._adapter*, %struct._adapter** %2, align 8
  %33 = call i32 @r8712_os_indicate_disconnect(%struct._adapter* %32)
  %34 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %35 = load i32, i32* @_FW_LINKED, align 4
  %36 = call i32 @_clr_fwstate_(%struct.mlme_priv* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %17
  %38 = load %struct._adapter*, %struct._adapter** %2, align 8
  %39 = getelementptr inbounds %struct._adapter, %struct._adapter* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct._adapter*, %struct._adapter** %2, align 8
  %43 = getelementptr inbounds %struct._adapter, %struct._adapter* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %37
  %48 = load %struct._adapter*, %struct._adapter** %2, align 8
  %49 = load %struct._adapter*, %struct._adapter** %2, align 8
  %50 = getelementptr inbounds %struct._adapter, %struct._adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct._adapter*, %struct._adapter** %2, align 8
  %54 = getelementptr inbounds %struct._adapter, %struct._adapter* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @r8712_set_ps_mode(%struct._adapter* %48, i64 %52, i32 %56)
  br label %58

58:                                               ; preds = %47, %37
  %59 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %60 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %59, i32 0, i32 1
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %16
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @r8712_os_indicate_disconnect(%struct._adapter*) #1

declare dso_local i32 @r8712_set_ps_mode(%struct._adapter*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
