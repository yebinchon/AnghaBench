; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_msg_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_fcdiag_s = type { i32 }
%struct.bfi_diag_lb_rsp_s = type { i32 }
%struct.bfi_diag_dport_rsp_s = type { i32 }
%struct.bfi_diag_dport_scn_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcdiag_intr(%struct.bfa_s* %0, %struct.bfi_msg_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_msg_s*, align 8
  %5 = alloca %struct.bfa_fcdiag_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_msg_s* %1, %struct.bfi_msg_s** %4, align 8
  %6 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %7 = call %struct.bfa_fcdiag_s* @BFA_FCDIAG_MOD(%struct.bfa_s* %6)
  store %struct.bfa_fcdiag_s* %7, %struct.bfa_fcdiag_s** %5, align 8
  %8 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %9 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %34 [
    i32 129, label %12
    i32 128, label %17
    i32 131, label %22
    i32 130, label %28
  ]

12:                                               ; preds = %2
  %13 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %5, align 8
  %14 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %15 = bitcast %struct.bfi_msg_s* %14 to %struct.bfi_diag_lb_rsp_s*
  %16 = call i32 @bfa_fcdiag_loopback_comp(%struct.bfa_fcdiag_s* %13, %struct.bfi_diag_lb_rsp_s* %15)
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %5, align 8
  %19 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %20 = bitcast %struct.bfi_msg_s* %19 to i32*
  %21 = call i32 @bfa_fcdiag_queuetest_comp(%struct.bfa_fcdiag_s* %18, i32* %20)
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %23, i32 0, i32 0
  %25 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %26 = bitcast %struct.bfi_msg_s* %25 to %struct.bfi_diag_dport_rsp_s*
  %27 = call i32 @bfa_dport_req_comp(i32* %24, %struct.bfi_diag_dport_rsp_s* %26)
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %5, align 8
  %30 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %29, i32 0, i32 0
  %31 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %32 = bitcast %struct.bfi_msg_s* %31 to %struct.bfi_diag_dport_scn_s*
  %33 = call i32 @bfa_dport_scn(i32* %30, %struct.bfi_diag_dport_scn_s* %32)
  br label %42

34:                                               ; preds = %2
  %35 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %5, align 8
  %36 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %37 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %35, i32 %39)
  %41 = call i32 @WARN_ON(i32 1)
  br label %42

42:                                               ; preds = %34, %28, %22, %17, %12
  ret void
}

declare dso_local %struct.bfa_fcdiag_s* @BFA_FCDIAG_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_fcdiag_loopback_comp(%struct.bfa_fcdiag_s*, %struct.bfi_diag_lb_rsp_s*) #1

declare dso_local i32 @bfa_fcdiag_queuetest_comp(%struct.bfa_fcdiag_s*, i32*) #1

declare dso_local i32 @bfa_dport_req_comp(i32*, %struct.bfi_diag_dport_rsp_s*) #1

declare dso_local i32 @bfa_dport_scn(i32*, %struct.bfi_diag_dport_scn_s*) #1

declare dso_local i32 @bfa_trc(%struct.bfa_fcdiag_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
