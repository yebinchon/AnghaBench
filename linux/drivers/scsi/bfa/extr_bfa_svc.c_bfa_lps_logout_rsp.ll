; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_logout_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_logout_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_lps_logout_rsp_s = type { i64 }
%struct.bfa_lps_mod_s = type { i64 }
%struct.bfa_lps_s = type { i32 }

@BFA_LPS_SM_FWRSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*, %struct.bfi_lps_logout_rsp_s*)* @bfa_lps_logout_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_lps_logout_rsp(%struct.bfa_s* %0, %struct.bfi_lps_logout_rsp_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_lps_logout_rsp_s*, align 8
  %5 = alloca %struct.bfa_lps_mod_s*, align 8
  %6 = alloca %struct.bfa_lps_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_lps_logout_rsp_s* %1, %struct.bfi_lps_logout_rsp_s** %4, align 8
  %7 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %8 = call %struct.bfa_lps_mod_s* @BFA_LPS_MOD(%struct.bfa_s* %7)
  store %struct.bfa_lps_mod_s* %8, %struct.bfa_lps_mod_s** %5, align 8
  %9 = load %struct.bfi_lps_logout_rsp_s*, %struct.bfi_lps_logout_rsp_s** %4, align 8
  %10 = getelementptr inbounds %struct.bfi_lps_logout_rsp_s, %struct.bfi_lps_logout_rsp_s* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.bfa_lps_mod_s*, %struct.bfa_lps_mod_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_lps_mod_s, %struct.bfa_lps_mod_s* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.bfa_lps_mod_s*, %struct.bfa_lps_mod_s** %5, align 8
  %19 = load %struct.bfi_lps_logout_rsp_s*, %struct.bfi_lps_logout_rsp_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfi_lps_logout_rsp_s, %struct.bfi_lps_logout_rsp_s* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.bfa_lps_s* @BFA_LPS_FROM_TAG(%struct.bfa_lps_mod_s* %18, i64 %21)
  store %struct.bfa_lps_s* %22, %struct.bfa_lps_s** %6, align 8
  %23 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %6, align 8
  %24 = load i32, i32* @BFA_LPS_SM_FWRSP, align 4
  %25 = call i32 @bfa_sm_send_event(%struct.bfa_lps_s* %23, i32 %24)
  ret void
}

declare dso_local %struct.bfa_lps_mod_s* @BFA_LPS_MOD(%struct.bfa_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.bfa_lps_s* @BFA_LPS_FROM_TAG(%struct.bfa_lps_mod_s*, i64) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_lps_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
