; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_disassoc_cmd_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_disassoc_cmd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }
%struct.cmd_obj = type { i64 }

@H2C_SUCCESS = common dso_local global i64 0, align 8
@_FW_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_disassoc_cmd_callback(%struct._adapter* %0, %struct.cmd_obj* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.cmd_obj* %1, %struct.cmd_obj** %4, align 8
  %7 = load %struct._adapter*, %struct._adapter** %3, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 0
  store %struct.mlme_priv* %8, %struct.mlme_priv** %6, align 8
  %9 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %10 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @H2C_SUCCESS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %20 = load i32, i32* @_FW_LINKED, align 4
  %21 = call i32 @set_fwstate(%struct.mlme_priv* %19, i32 %20)
  %22 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %23 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %28 = call i32 @r8712_free_cmd_obj(%struct.cmd_obj* %27)
  br label %29

29:                                               ; preds = %26, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @r8712_free_cmd_obj(%struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
