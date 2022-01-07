; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itn_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itn_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_msg_s = type { i32 }
%struct.bfa_fcp_mod_s = type { i32 }
%union.bfi_itn_i2h_msg_u = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_itn_s = type { i32 (%struct.bfa_s*, %struct.bfi_msg_s*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_itn_isr(%struct.bfa_s* %0, %struct.bfi_msg_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_msg_s*, align 8
  %5 = alloca %struct.bfa_fcp_mod_s*, align 8
  %6 = alloca %union.bfi_itn_i2h_msg_u, align 8
  %7 = alloca %struct.bfa_itn_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_msg_s* %1, %struct.bfi_msg_s** %4, align 8
  %8 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %9 = call %struct.bfa_fcp_mod_s* @BFA_FCP_MOD(%struct.bfa_s* %8)
  store %struct.bfa_fcp_mod_s* %9, %struct.bfa_fcp_mod_s** %5, align 8
  %10 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %11 = bitcast %union.bfi_itn_i2h_msg_u* %6 to %struct.bfi_msg_s**
  store %struct.bfi_msg_s* %10, %struct.bfi_msg_s** %11, align 8
  %12 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %5, align 8
  %13 = bitcast %union.bfi_itn_i2h_msg_u* %6 to %struct.TYPE_2__**
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.bfa_itn_s* @BFA_ITN_FROM_TAG(%struct.bfa_fcp_mod_s* %12, i32 %16)
  store %struct.bfa_itn_s* %17, %struct.bfa_itn_s** %7, align 8
  %18 = load %struct.bfa_itn_s*, %struct.bfa_itn_s** %7, align 8
  %19 = getelementptr inbounds %struct.bfa_itn_s, %struct.bfa_itn_s* %18, i32 0, i32 0
  %20 = load i32 (%struct.bfa_s*, %struct.bfi_msg_s*)*, i32 (%struct.bfa_s*, %struct.bfi_msg_s*)** %19, align 8
  %21 = icmp ne i32 (%struct.bfa_s*, %struct.bfi_msg_s*)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.bfa_itn_s*, %struct.bfa_itn_s** %7, align 8
  %24 = getelementptr inbounds %struct.bfa_itn_s, %struct.bfa_itn_s* %23, i32 0, i32 0
  %25 = load i32 (%struct.bfa_s*, %struct.bfi_msg_s*)*, i32 (%struct.bfa_s*, %struct.bfi_msg_s*)** %24, align 8
  %26 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %27 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %28 = call i32 %25(%struct.bfa_s* %26, %struct.bfi_msg_s* %27)
  br label %31

29:                                               ; preds = %2
  %30 = call i32 @WARN_ON(i32 1)
  br label %31

31:                                               ; preds = %29, %22
  ret void
}

declare dso_local %struct.bfa_fcp_mod_s* @BFA_FCP_MOD(%struct.bfa_s*) #1

declare dso_local %struct.bfa_itn_s* @BFA_ITN_FROM_TAG(%struct.bfa_fcp_mod_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
