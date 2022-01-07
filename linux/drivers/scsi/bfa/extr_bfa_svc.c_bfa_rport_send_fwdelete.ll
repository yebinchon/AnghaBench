; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_send_fwdelete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_send_fwdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_rport_s = type { i32, i32, i32 }
%struct.bfi_rport_delete_req_s = type { i32, i32 }

@BFA_REQQ_RPORT = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFI_MC_RPORT = common dso_local global i32 0, align 4
@BFI_RPORT_H2I_DELETE_REQ = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_rport_s*)* @bfa_rport_send_fwdelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_rport_send_fwdelete(%struct.bfa_rport_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_rport_s*, align 8
  %4 = alloca %struct.bfi_rport_delete_req_s*, align 8
  store %struct.bfa_rport_s* %0, %struct.bfa_rport_s** %3, align 8
  %5 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BFA_REQQ_RPORT, align 4
  %9 = call %struct.bfi_rport_delete_req_s* @bfa_reqq_next(i32 %7, i32 %8)
  store %struct.bfi_rport_delete_req_s* %9, %struct.bfi_rport_delete_req_s** %4, align 8
  %10 = load %struct.bfi_rport_delete_req_s*, %struct.bfi_rport_delete_req_s** %4, align 8
  %11 = icmp ne %struct.bfi_rport_delete_req_s* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BFA_REQQ_RPORT, align 4
  %17 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %17, i32 0, i32 2
  %19 = call i32 @bfa_reqq_wait(i32 %15, i32 %16, i32* %18)
  %20 = load i32, i32* @BFA_FALSE, align 4
  store i32 %20, i32* %2, align 4
  br label %46

21:                                               ; preds = %1
  %22 = load %struct.bfi_rport_delete_req_s*, %struct.bfi_rport_delete_req_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfi_rport_delete_req_s, %struct.bfi_rport_delete_req_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BFI_MC_RPORT, align 4
  %26 = load i32, i32* @BFI_RPORT_H2I_DELETE_REQ, align 4
  %27 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bfa_fn_lpu(i32 %29)
  %31 = call i32 @bfi_h2i_set(i32 %24, i32 %25, i32 %26, i32 %30)
  %32 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bfi_rport_delete_req_s*, %struct.bfi_rport_delete_req_s** %4, align 8
  %36 = getelementptr inbounds %struct.bfi_rport_delete_req_s, %struct.bfi_rport_delete_req_s* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BFA_REQQ_RPORT, align 4
  %41 = load %struct.bfi_rport_delete_req_s*, %struct.bfi_rport_delete_req_s** %4, align 8
  %42 = getelementptr inbounds %struct.bfi_rport_delete_req_s, %struct.bfi_rport_delete_req_s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bfa_reqq_produce(i32 %39, i32 %40, i32 %43)
  %45 = load i32, i32* @BFA_TRUE, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %21, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.bfi_rport_delete_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @bfa_reqq_wait(i32, i32, i32*) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
