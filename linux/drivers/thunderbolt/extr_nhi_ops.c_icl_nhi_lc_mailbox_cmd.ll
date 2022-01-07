; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi_ops.c_icl_nhi_lc_mailbox_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi_ops.c_icl_nhi_lc_mailbox_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_nhi = type { i32 }

@VS_CAP_19_CMD_SHIFT = common dso_local global i32 0, align 4
@VS_CAP_19_CMD_MASK = common dso_local global i32 0, align 4
@VS_CAP_19 = common dso_local global i32 0, align 4
@VS_CAP_19_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_nhi*, i32)* @icl_nhi_lc_mailbox_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_nhi_lc_mailbox_cmd(%struct.tb_nhi* %0, i32 %1) #0 {
  %3 = alloca %struct.tb_nhi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tb_nhi* %0, %struct.tb_nhi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @VS_CAP_19_CMD_SHIFT, align 4
  %8 = shl i32 %6, %7
  %9 = load i32, i32* @VS_CAP_19_CMD_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.tb_nhi*, %struct.tb_nhi** %3, align 8
  %12 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VS_CAP_19, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @VS_CAP_19_VALID, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @pci_write_config_dword(i32 %13, i32 %14, i32 %17)
  ret void
}

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
