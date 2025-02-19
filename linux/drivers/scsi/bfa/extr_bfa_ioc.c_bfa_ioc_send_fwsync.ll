; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_send_fwsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_send_fwsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32 }
%struct.bfa_mbox_cmd_s = type { i64 }
%struct.bfi_ioc_ctrl_req_s = type { i32, i32 }

@BFI_MC_IOC = common dso_local global i32 0, align 4
@BFI_IOC_H2I_DBG_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*)* @bfa_ioc_send_fwsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_send_fwsync(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca %struct.bfa_ioc_s*, align 8
  %3 = alloca %struct.bfa_mbox_cmd_s, align 8
  %4 = alloca %struct.bfi_ioc_ctrl_req_s*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_mbox_cmd_s, %struct.bfa_mbox_cmd_s* %3, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.bfi_ioc_ctrl_req_s*
  store %struct.bfi_ioc_ctrl_req_s* %7, %struct.bfi_ioc_ctrl_req_s** %4, align 8
  %8 = load %struct.bfi_ioc_ctrl_req_s*, %struct.bfi_ioc_ctrl_req_s** %4, align 8
  %9 = getelementptr inbounds %struct.bfi_ioc_ctrl_req_s, %struct.bfi_ioc_ctrl_req_s* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BFI_MC_IOC, align 4
  %12 = load i32, i32* @BFI_IOC_H2I_DBG_SYNC, align 4
  %13 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %14 = call i32 @bfa_ioc_portid(%struct.bfa_ioc_s* %13)
  %15 = call i32 @bfi_h2i_set(i32 %10, i32 %11, i32 %12, i32 %14)
  %16 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cpu_to_be16(i32 %18)
  %20 = load %struct.bfi_ioc_ctrl_req_s*, %struct.bfi_ioc_ctrl_req_s** %4, align 8
  %21 = getelementptr inbounds %struct.bfi_ioc_ctrl_req_s, %struct.bfi_ioc_ctrl_req_s* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %23 = call i32 @bfa_ioc_mbox_queue(%struct.bfa_ioc_s* %22, %struct.bfa_mbox_cmd_s* %3)
  ret void
}

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(%struct.bfa_ioc_s*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @bfa_ioc_mbox_queue(%struct.bfa_ioc_s*, %struct.bfa_mbox_cmd_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
