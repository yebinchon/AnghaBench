; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_uf_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_uf_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_msg_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfi_uf_frm_rcvd_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_uf_isr(%struct.bfa_s* %0, %struct.bfi_msg_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_msg_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_msg_s* %1, %struct.bfi_msg_s** %4, align 8
  %5 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %6 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %7 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @bfa_trc(%struct.bfa_s* %5, i32 %9)
  %11 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %20 [
    i32 128, label %15
  ]

15:                                               ; preds = %2
  %16 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %17 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %18 = bitcast %struct.bfi_msg_s* %17 to %struct.bfi_uf_frm_rcvd_s*
  %19 = call i32 @uf_recv(%struct.bfa_s* %16, %struct.bfi_uf_frm_rcvd_s* %18)
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %22 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bfa_trc(%struct.bfa_s* %21, i32 %25)
  %27 = call i32 @WARN_ON(i32 1)
  br label %28

28:                                               ; preds = %20, %15
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local i32 @uf_recv(%struct.bfa_s*, %struct.bfi_uf_frm_rcvd_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
