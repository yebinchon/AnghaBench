; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_hal_fcxp_rx_plog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_hal_fcxp_rx_plog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_fcxp_s = type { i64 }
%struct.bfi_fcxp_send_rsp_s = type { i64, i32 }

@BFA_PL_MID_HAL_FCXP = common dso_local global i32 0, align 4
@BFA_PL_EID_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*, %struct.bfa_fcxp_s*, %struct.bfi_fcxp_send_rsp_s*)* @hal_fcxp_rx_plog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal_fcxp_rx_plog(%struct.bfa_s* %0, %struct.bfa_fcxp_s* %1, %struct.bfi_fcxp_send_rsp_s* %2) #0 {
  %4 = alloca %struct.bfa_s*, align 8
  %5 = alloca %struct.bfa_fcxp_s*, align 8
  %6 = alloca %struct.bfi_fcxp_send_rsp_s*, align 8
  %7 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %4, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %5, align 8
  store %struct.bfi_fcxp_send_rsp_s* %2, %struct.bfi_fcxp_send_rsp_s** %6, align 8
  %8 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %6, align 8
  %9 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %3
  %13 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %5, align 8
  %19 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %18)
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BFA_PL_MID_HAL_FCXP, align 4
  %26 = load i32, i32* @BFA_PL_EID_RX, align 4
  %27 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %6, align 8
  %28 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %6, align 8
  %32 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %31, i32 0, i32 1
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @bfa_plog_fchdr_and_pl(i32 %24, i32 %25, i32 %26, i32 %30, i32* %32, i32 %33)
  br label %48

35:                                               ; preds = %12
  %36 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %37 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BFA_PL_MID_HAL_FCXP, align 4
  %40 = load i32, i32* @BFA_PL_EID_RX, align 4
  %41 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %6, align 8
  %42 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %6, align 8
  %46 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %45, i32 0, i32 1
  %47 = call i32 @bfa_plog_fchdr(i32 %38, i32 %39, i32 %40, i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %35, %17
  br label %62

49:                                               ; preds = %3
  %50 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %51 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BFA_PL_MID_HAL_FCXP, align 4
  %54 = load i32, i32* @BFA_PL_EID_RX, align 4
  %55 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %6, align 8
  %56 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.bfi_fcxp_send_rsp_s*, %struct.bfi_fcxp_send_rsp_s** %6, align 8
  %60 = getelementptr inbounds %struct.bfi_fcxp_send_rsp_s, %struct.bfi_fcxp_send_rsp_s* %59, i32 0, i32 1
  %61 = call i32 @bfa_plog_fchdr(i32 %52, i32 %53, i32 %54, i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %49, %48
  ret void
}

declare dso_local i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_plog_fchdr_and_pl(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bfa_plog_fchdr(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
