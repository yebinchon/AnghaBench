; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_dequeue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_dequeue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_obj = type { i32 }
%struct.cmd_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_obj* @rtw_dequeue_cmd(%struct.cmd_priv* %0) #0 {
  %2 = alloca %struct.cmd_priv*, align 8
  %3 = alloca %struct.cmd_obj*, align 8
  store %struct.cmd_priv* %0, %struct.cmd_priv** %2, align 8
  %4 = load %struct.cmd_priv*, %struct.cmd_priv** %2, align 8
  %5 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %4, i32 0, i32 0
  %6 = call %struct.cmd_obj* @_rtw_dequeue_cmd(i32* %5)
  store %struct.cmd_obj* %6, %struct.cmd_obj** %3, align 8
  %7 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  ret %struct.cmd_obj* %7
}

declare dso_local %struct.cmd_obj* @_rtw_dequeue_cmd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
