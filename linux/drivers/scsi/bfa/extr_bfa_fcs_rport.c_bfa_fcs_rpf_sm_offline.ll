; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_sm_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_sm_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rpf_s = type { %struct.bfa_fcs_rport_s* }
%struct.bfa_fcs_rport_s = type { i32, i32, i32 }

@bfa_fcs_rpf_sm_rpsc_sending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rpf_s*, i32)* @bfa_fcs_rpf_sm_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rpf_sm_offline(%struct.bfa_fcs_rpf_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_rpf_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_fcs_rport_s*, align 8
  store %struct.bfa_fcs_rpf_s* %0, %struct.bfa_fcs_rpf_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %6, i32 0, i32 0
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  store %struct.bfa_fcs_rport_s* %8, %struct.bfa_fcs_rport_s** %5, align 8
  %9 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bfa_trc(i32 %11, i32 %14)
  %16 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bfa_trc(i32 %18, i32 %21)
  %23 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @bfa_trc(i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %36 [
    i32 128, label %29
    i32 129, label %35
  ]

29:                                               ; preds = %2
  %30 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %31 = load i32, i32* @bfa_fcs_rpf_sm_rpsc_sending, align 4
  %32 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_rpf_s* %30, i32 %31)
  %33 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %3, align 8
  %34 = call i32 @bfa_fcs_rpf_send_rpsc2(%struct.bfa_fcs_rpf_s* %33, i32* null)
  br label %42

35:                                               ; preds = %2
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %5, align 8
  %38 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @bfa_sm_fault(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %35, %29
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_rpf_s*, i32) #1

declare dso_local i32 @bfa_fcs_rpf_send_rpsc2(%struct.bfa_fcs_rpf_s*, i32*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
