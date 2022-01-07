; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_getdata_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_getdata_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_sfp_s = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bfi_sfp_req_s = type { i32, i32 }

@BFI_MC_SFP = common dso_local global i32 0, align 4
@BFI_SFP_H2I_SHOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_sfp_s*)* @bfa_sfp_getdata_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_sfp_getdata_send(%struct.bfa_sfp_s* %0) #0 {
  %2 = alloca %struct.bfa_sfp_s*, align 8
  %3 = alloca %struct.bfi_sfp_req_s*, align 8
  store %struct.bfa_sfp_s* %0, %struct.bfa_sfp_s** %2, align 8
  %4 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.bfi_sfp_req_s*
  store %struct.bfi_sfp_req_s* %8, %struct.bfi_sfp_req_s** %3, align 8
  %9 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %10 = load %struct.bfi_sfp_req_s*, %struct.bfi_sfp_req_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfi_sfp_req_s, %struct.bfi_sfp_req_s* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bfa_trc(%struct.bfa_sfp_s* %9, i32 %12)
  %14 = load %struct.bfi_sfp_req_s*, %struct.bfi_sfp_req_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfi_sfp_req_s, %struct.bfi_sfp_req_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BFI_MC_SFP, align 4
  %18 = load i32, i32* @BFI_SFP_H2I_SHOW, align 4
  %19 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %20 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bfa_ioc_portid(i32 %21)
  %23 = call i32 @bfi_h2i_set(i32 %16, i32 %17, i32 %18, i32 %22)
  %24 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %25 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %2, align 8
  %28 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %27, i32 0, i32 0
  %29 = call i32 @bfa_ioc_mbox_queue(i32 %26, %struct.TYPE_2__* %28)
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_sfp_s*, i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32) #1

declare dso_local i32 @bfa_ioc_mbox_queue(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
