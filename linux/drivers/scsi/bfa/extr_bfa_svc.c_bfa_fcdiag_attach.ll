; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_iocfc_cfg_s = type { i32 }
%struct.bfa_pcidev_s = type { i32 }
%struct.bfa_fcdiag_s = type { i32, %struct.bfa_s*, %struct.bfa_dport_s }
%struct.bfa_dport_s = type { i32, i32, i32*, i32*, i32, %struct.bfa_s* }

@bfa_dport_sm_disabled = common dso_local global i32 0, align 4
@bfa_dport_qresume = common dso_local global i32 0, align 4
@BFA_DPORT_ST_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcdiag_attach(%struct.bfa_s* %0, i8* %1, %struct.bfa_iocfc_cfg_s* %2, %struct.bfa_pcidev_s* %3) #0 {
  %5 = alloca %struct.bfa_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  %8 = alloca %struct.bfa_pcidev_s*, align 8
  %9 = alloca %struct.bfa_fcdiag_s*, align 8
  %10 = alloca %struct.bfa_dport_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.bfa_iocfc_cfg_s* %2, %struct.bfa_iocfc_cfg_s** %7, align 8
  store %struct.bfa_pcidev_s* %3, %struct.bfa_pcidev_s** %8, align 8
  %11 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %12 = call %struct.bfa_fcdiag_s* @BFA_FCDIAG_MOD(%struct.bfa_s* %11)
  store %struct.bfa_fcdiag_s* %12, %struct.bfa_fcdiag_s** %9, align 8
  %13 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %9, align 8
  %14 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %13, i32 0, i32 2
  store %struct.bfa_dport_s* %14, %struct.bfa_dport_s** %10, align 8
  %15 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %16 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %9, align 8
  %17 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %16, i32 0, i32 1
  store %struct.bfa_s* %15, %struct.bfa_s** %17, align 8
  %18 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %9, align 8
  %22 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %24 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %10, align 8
  %25 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %24, i32 0, i32 5
  store %struct.bfa_s* %23, %struct.bfa_s** %25, align 8
  %26 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %10, align 8
  %27 = load i32, i32* @bfa_dport_sm_disabled, align 4
  %28 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %26, i32 %27)
  %29 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %10, align 8
  %30 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %29, i32 0, i32 4
  %31 = load i32, i32* @bfa_dport_qresume, align 4
  %32 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %10, align 8
  %33 = call i32 @bfa_reqq_winit(i32* %30, i32 %31, %struct.bfa_dport_s* %32)
  %34 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %10, align 8
  %35 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %10, align 8
  %37 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* @BFA_DPORT_ST_DISABLED, align 4
  %39 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %10, align 8
  %40 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %10, align 8
  %42 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %41, i32 0, i32 0
  %43 = call i32 @memset(i32* %42, i32 0, i32 4)
  ret void
}

declare dso_local %struct.bfa_fcdiag_s* @BFA_FCDIAG_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_dport_s*, i32) #1

declare dso_local i32 @bfa_reqq_winit(i32*, i32, %struct.bfa_dport_s*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
