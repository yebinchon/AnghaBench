; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_diag_tempsensor_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_diag_tempsensor_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_diag_s = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.bfi_diag_ts_req_s = type { i32, i32 }

@BFI_MC_DIAG = common dso_local global i32 0, align 4
@BFI_DIAG_H2I_TEMPSENSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_diag_s*)* @diag_tempsensor_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diag_tempsensor_send(%struct.bfa_diag_s* %0) #0 {
  %2 = alloca %struct.bfa_diag_s*, align 8
  %3 = alloca %struct.bfi_diag_ts_req_s*, align 8
  store %struct.bfa_diag_s* %0, %struct.bfa_diag_s** %2, align 8
  %4 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.bfi_diag_ts_req_s*
  store %struct.bfi_diag_ts_req_s* %9, %struct.bfi_diag_ts_req_s** %3, align 8
  %10 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %11 = load %struct.bfi_diag_ts_req_s*, %struct.bfi_diag_ts_req_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfi_diag_ts_req_s, %struct.bfi_diag_ts_req_s* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bfa_trc(%struct.bfa_diag_s* %10, i32 %13)
  %15 = load %struct.bfi_diag_ts_req_s*, %struct.bfi_diag_ts_req_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfi_diag_ts_req_s, %struct.bfi_diag_ts_req_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BFI_MC_DIAG, align 4
  %19 = load i32, i32* @BFI_DIAG_H2I_TEMPSENSOR, align 4
  %20 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %21 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bfa_ioc_portid(i32 %22)
  %24 = call i32 @bfi_h2i_set(i32 %17, i32 %18, i32 %19, i32 %23)
  %25 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %26 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %2, align 8
  %29 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @bfa_ioc_mbox_queue(i32 %27, %struct.TYPE_4__* %30)
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_diag_s*, i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32) #1

declare dso_local i32 @bfa_ioc_mbox_queue(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
