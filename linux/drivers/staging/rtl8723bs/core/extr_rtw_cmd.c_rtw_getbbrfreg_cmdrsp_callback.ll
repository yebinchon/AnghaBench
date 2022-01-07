; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_getbbrfreg_cmdrsp_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_getbbrfreg_cmdrsp_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.cmd_obj = type { %struct.cmd_obj* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_getbbrfreg_cmdrsp_callback(%struct.adapter* %0, %struct.cmd_obj* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.cmd_obj* %1, %struct.cmd_obj** %4, align 8
  %5 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %6 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %5, i32 0, i32 0
  %7 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %8 = call i32 @kfree(%struct.cmd_obj* %7)
  %9 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %10 = call i32 @kfree(%struct.cmd_obj* %9)
  ret void
}

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
