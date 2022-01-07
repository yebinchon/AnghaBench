; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_r8712_set_802_11_disassociate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_r8712_set_802_11_disassociate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@_FW_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_set_802_11_disassociate(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %5 = load %struct._adapter*, %struct._adapter** %2, align 8
  %6 = getelementptr inbounds %struct._adapter, %struct._adapter* %5, i32 0, i32 0
  store %struct.mlme_priv* %6, %struct.mlme_priv** %4, align 8
  %7 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %8 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %12 = load i32, i32* @_FW_LINKED, align 4
  %13 = call i64 @check_fwstate(%struct.mlme_priv* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct._adapter*, %struct._adapter** %2, align 8
  %17 = call i32 @r8712_disassoc_cmd(%struct._adapter* %16)
  %18 = load %struct._adapter*, %struct._adapter** %2, align 8
  %19 = call i32 @r8712_ind_disconnect(%struct._adapter* %18)
  %20 = load %struct._adapter*, %struct._adapter** %2, align 8
  %21 = call i32 @r8712_free_assoc_resources(%struct._adapter* %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %24 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret i32 1
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @r8712_disassoc_cmd(%struct._adapter*) #1

declare dso_local i32 @r8712_ind_disconnect(%struct._adapter*) #1

declare dso_local i32 @r8712_free_assoc_resources(%struct._adapter*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
