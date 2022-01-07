; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_loopback_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_loopback_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcdiag_s = type { i32 }
%struct.bfa_diag_loopback_s = type { i32, i32, i32, i32 }
%struct.bfi_diag_lb_req_s = type { i32, i32, i32, i32, i32 }

@BFA_REQQ_DIAG = common dso_local global i32 0, align 4
@BFA_STATUS_DEVBUSY = common dso_local global i32 0, align 4
@BFI_MC_DIAG = common dso_local global i32 0, align 4
@BFI_DIAG_H2I_LOOPBACK = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_fcdiag_s*, %struct.bfa_diag_loopback_s*)* @bfa_fcdiag_loopback_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_fcdiag_loopback_send(%struct.bfa_fcdiag_s* %0, %struct.bfa_diag_loopback_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfa_fcdiag_s*, align 8
  %5 = alloca %struct.bfa_diag_loopback_s*, align 8
  %6 = alloca %struct.bfi_diag_lb_req_s*, align 8
  store %struct.bfa_fcdiag_s* %0, %struct.bfa_fcdiag_s** %4, align 8
  store %struct.bfa_diag_loopback_s* %1, %struct.bfa_diag_loopback_s** %5, align 8
  %7 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %4, align 8
  %8 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BFA_REQQ_DIAG, align 4
  %11 = call %struct.bfi_diag_lb_req_s* @bfa_reqq_next(i32 %9, i32 %10)
  store %struct.bfi_diag_lb_req_s* %11, %struct.bfi_diag_lb_req_s** %6, align 8
  %12 = load %struct.bfi_diag_lb_req_s*, %struct.bfi_diag_lb_req_s** %6, align 8
  %13 = icmp ne %struct.bfi_diag_lb_req_s* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @BFA_STATUS_DEVBUSY, align 4
  store i32 %15, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.bfi_diag_lb_req_s*, %struct.bfi_diag_lb_req_s** %6, align 8
  %18 = getelementptr inbounds %struct.bfi_diag_lb_req_s, %struct.bfi_diag_lb_req_s* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BFI_MC_DIAG, align 4
  %21 = load i32, i32* @BFI_DIAG_H2I_LOOPBACK, align 4
  %22 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bfa_fn_lpu(i32 %24)
  %26 = call i32 @bfi_h2i_set(i32 %19, i32 %20, i32 %21, i32 %25)
  %27 = load %struct.bfa_diag_loopback_s*, %struct.bfa_diag_loopback_s** %5, align 8
  %28 = getelementptr inbounds %struct.bfa_diag_loopback_s, %struct.bfa_diag_loopback_s* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bfi_diag_lb_req_s*, %struct.bfi_diag_lb_req_s** %6, align 8
  %31 = getelementptr inbounds %struct.bfi_diag_lb_req_s, %struct.bfi_diag_lb_req_s* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bfa_diag_loopback_s*, %struct.bfa_diag_loopback_s** %5, align 8
  %33 = getelementptr inbounds %struct.bfa_diag_loopback_s, %struct.bfa_diag_loopback_s* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bfi_diag_lb_req_s*, %struct.bfi_diag_lb_req_s** %6, align 8
  %36 = getelementptr inbounds %struct.bfi_diag_lb_req_s, %struct.bfi_diag_lb_req_s* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bfa_diag_loopback_s*, %struct.bfa_diag_loopback_s** %5, align 8
  %38 = getelementptr inbounds %struct.bfa_diag_loopback_s, %struct.bfa_diag_loopback_s* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bfi_diag_lb_req_s*, %struct.bfi_diag_lb_req_s** %6, align 8
  %41 = getelementptr inbounds %struct.bfi_diag_lb_req_s, %struct.bfi_diag_lb_req_s* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.bfa_diag_loopback_s*, %struct.bfa_diag_loopback_s** %5, align 8
  %43 = getelementptr inbounds %struct.bfa_diag_loopback_s, %struct.bfa_diag_loopback_s* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bfi_diag_lb_req_s*, %struct.bfi_diag_lb_req_s** %6, align 8
  %46 = getelementptr inbounds %struct.bfi_diag_lb_req_s, %struct.bfi_diag_lb_req_s* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %4, align 8
  %48 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BFA_REQQ_DIAG, align 4
  %51 = load %struct.bfi_diag_lb_req_s*, %struct.bfi_diag_lb_req_s** %6, align 8
  %52 = getelementptr inbounds %struct.bfi_diag_lb_req_s, %struct.bfi_diag_lb_req_s* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bfa_reqq_produce(i32 %49, i32 %50, i32 %53)
  %55 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %4, align 8
  %56 = load %struct.bfa_diag_loopback_s*, %struct.bfa_diag_loopback_s** %5, align 8
  %57 = getelementptr inbounds %struct.bfa_diag_loopback_s, %struct.bfa_diag_loopback_s* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %55, i32 %58)
  %60 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %4, align 8
  %61 = load %struct.bfa_diag_loopback_s*, %struct.bfa_diag_loopback_s** %5, align 8
  %62 = getelementptr inbounds %struct.bfa_diag_loopback_s, %struct.bfa_diag_loopback_s* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %60, i32 %63)
  %65 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %4, align 8
  %66 = load %struct.bfa_diag_loopback_s*, %struct.bfa_diag_loopback_s** %5, align 8
  %67 = getelementptr inbounds %struct.bfa_diag_loopback_s, %struct.bfa_diag_loopback_s* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %65, i32 %68)
  %70 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %4, align 8
  %71 = load %struct.bfa_diag_loopback_s*, %struct.bfa_diag_loopback_s** %5, align 8
  %72 = getelementptr inbounds %struct.bfa_diag_loopback_s, %struct.bfa_diag_loopback_s* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %70, i32 %73)
  %75 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %16, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.bfi_diag_lb_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_fcdiag_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
