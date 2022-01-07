; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_good_comp_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_good_comp_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_msg_s = type { i32 }
%struct.bfa_fcpim_s = type { i32 }
%struct.bfi_ioim_rsp_s = type { i32 }
%struct.bfa_ioim_s = type { i64 }

@BFA_IOIM_SM_COMP_GOOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioim_good_comp_isr(%struct.bfa_s* %0, %struct.bfi_msg_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_msg_s*, align 8
  %5 = alloca %struct.bfa_fcpim_s*, align 8
  %6 = alloca %struct.bfi_ioim_rsp_s*, align 8
  %7 = alloca %struct.bfa_ioim_s*, align 8
  %8 = alloca i64, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_msg_s* %1, %struct.bfi_msg_s** %4, align 8
  %9 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %10 = call %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s* %9)
  store %struct.bfa_fcpim_s* %10, %struct.bfa_fcpim_s** %5, align 8
  %11 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %12 = bitcast %struct.bfi_msg_s* %11 to %struct.bfi_ioim_rsp_s*
  store %struct.bfi_ioim_rsp_s* %12, %struct.bfi_ioim_rsp_s** %6, align 8
  %13 = load %struct.bfi_ioim_rsp_s*, %struct.bfi_ioim_rsp_s** %6, align 8
  %14 = getelementptr inbounds %struct.bfi_ioim_rsp_s, %struct.bfi_ioim_rsp_s* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @be16_to_cpu(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.bfa_ioim_s* @BFA_IOIM_FROM_TAG(%struct.bfa_fcpim_s* %17, i64 %18)
  store %struct.bfa_ioim_s* %19, %struct.bfa_ioim_s** %7, align 8
  %20 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %21 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %5, align 8
  %28 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %29 = call i32 @bfa_ioim_cb_profile_comp(%struct.bfa_fcpim_s* %27, %struct.bfa_ioim_s* %28)
  %30 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %7, align 8
  %31 = load i32, i32* @BFA_IOIM_SM_COMP_GOOD, align 4
  %32 = call i32 @bfa_sm_send_event(%struct.bfa_ioim_s* %30, i32 %31)
  ret void
}

declare dso_local %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local %struct.bfa_ioim_s* @BFA_IOIM_FROM_TAG(%struct.bfa_fcpim_s*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_ioim_cb_profile_comp(%struct.bfa_fcpim_s*, %struct.bfa_ioim_s*) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_ioim_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
