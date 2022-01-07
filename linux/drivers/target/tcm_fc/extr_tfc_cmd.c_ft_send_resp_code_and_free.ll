; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_cmd.c_ft_send_resp_code_and_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_cmd.c_ft_send_resp_code_and_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ft_cmd*, i32)* @ft_send_resp_code_and_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft_send_resp_code_and_free(%struct.ft_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.ft_cmd*, align 8
  %4 = alloca i32, align 4
  store %struct.ft_cmd* %0, %struct.ft_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ft_cmd*, %struct.ft_cmd** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @ft_send_resp_code(%struct.ft_cmd* %5, i32 %6)
  %8 = load %struct.ft_cmd*, %struct.ft_cmd** %3, align 8
  %9 = call i32 @ft_free_cmd(%struct.ft_cmd* %8)
  ret void
}

declare dso_local i32 @ft_send_resp_code(%struct.ft_cmd*, i32) #1

declare dso_local i32 @ft_free_cmd(%struct.ft_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
