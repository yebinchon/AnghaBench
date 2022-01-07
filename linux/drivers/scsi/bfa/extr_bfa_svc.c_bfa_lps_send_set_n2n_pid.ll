; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_send_set_n2n_pid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_send_set_n2n_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_lps_s = type { i32, i32, i32, i32 }
%struct.bfi_lps_n2n_pid_req_s = type { i32, i32, i32 }

@BFI_MC_LPS = common dso_local global i32 0, align 4
@BFI_LPS_H2I_N2N_PID_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_lps_s*)* @bfa_lps_send_set_n2n_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_lps_send_set_n2n_pid(%struct.bfa_lps_s* %0) #0 {
  %2 = alloca %struct.bfa_lps_s*, align 8
  %3 = alloca %struct.bfi_lps_n2n_pid_req_s*, align 8
  store %struct.bfa_lps_s* %0, %struct.bfa_lps_s** %2, align 8
  %4 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %8 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.bfi_lps_n2n_pid_req_s* @bfa_reqq_next(i32 %6, i32 %9)
  store %struct.bfi_lps_n2n_pid_req_s* %10, %struct.bfi_lps_n2n_pid_req_s** %3, align 8
  %11 = load %struct.bfi_lps_n2n_pid_req_s*, %struct.bfi_lps_n2n_pid_req_s** %3, align 8
  %12 = icmp ne %struct.bfi_lps_n2n_pid_req_s* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.bfi_lps_n2n_pid_req_s*, %struct.bfi_lps_n2n_pid_req_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfi_lps_n2n_pid_req_s, %struct.bfi_lps_n2n_pid_req_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BFI_MC_LPS, align 4
  %20 = load i32, i32* @BFI_LPS_H2I_N2N_PID_REQ, align 4
  %21 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %22 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bfa_fn_lpu(i32 %23)
  %25 = call i32 @bfi_h2i_set(i32 %18, i32 %19, i32 %20, i32 %24)
  %26 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %27 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bfi_lps_n2n_pid_req_s*, %struct.bfi_lps_n2n_pid_req_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfi_lps_n2n_pid_req_s, %struct.bfi_lps_n2n_pid_req_s* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %32 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bfi_lps_n2n_pid_req_s*, %struct.bfi_lps_n2n_pid_req_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfi_lps_n2n_pid_req_s, %struct.bfi_lps_n2n_pid_req_s* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %37 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %40 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bfi_lps_n2n_pid_req_s*, %struct.bfi_lps_n2n_pid_req_s** %3, align 8
  %43 = getelementptr inbounds %struct.bfi_lps_n2n_pid_req_s, %struct.bfi_lps_n2n_pid_req_s* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bfa_reqq_produce(i32 %38, i32 %41, i32 %44)
  ret void
}

declare dso_local %struct.bfi_lps_n2n_pid_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
