; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_iocfc_cfg_s = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_pcidev_s = type { i32 }
%struct.bfa_fcxp_mod_s = type { i32, i32, i32, i32, i32, %struct.bfa_s* }

@BFA_FCXP_MAX_IBUF_SZ = common dso_local global i32 0, align 4
@BFA_FCXP_MAX_LBUF_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcxp_attach(%struct.bfa_s* %0, i8* %1, %struct.bfa_iocfc_cfg_s* %2, %struct.bfa_pcidev_s* %3) #0 {
  %5 = alloca %struct.bfa_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  %8 = alloca %struct.bfa_pcidev_s*, align 8
  %9 = alloca %struct.bfa_fcxp_mod_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.bfa_iocfc_cfg_s* %2, %struct.bfa_iocfc_cfg_s** %7, align 8
  store %struct.bfa_pcidev_s* %3, %struct.bfa_pcidev_s** %8, align 8
  %10 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %11 = call %struct.bfa_fcxp_mod_s* @BFA_FCXP_MOD(%struct.bfa_s* %10)
  store %struct.bfa_fcxp_mod_s* %11, %struct.bfa_fcxp_mod_s** %9, align 8
  %12 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %13 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %9, align 8
  %14 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %13, i32 0, i32 5
  store %struct.bfa_s* %12, %struct.bfa_s** %14, align 8
  %15 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %16 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %9, align 8
  %20 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @BFA_FCXP_MAX_IBUF_SZ, align 4
  %22 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %9, align 8
  %23 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %9, align 8
  %25 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %24, i32 0, i32 3
  store i32 %21, i32* %25, align 4
  %26 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %27 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @BFA_FCXP_MAX_LBUF_SZ, align 4
  %33 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %9, align 8
  %34 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %4
  %36 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %9, align 8
  %37 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %36, i32 0, i32 1
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %9, align 8
  %40 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %39, i32 0, i32 0
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %9, align 8
  %43 = call i32 @claim_fcxps_mem(%struct.bfa_fcxp_mod_s* %42)
  ret void
}

declare dso_local %struct.bfa_fcxp_mod_s* @BFA_FCXP_MOD(%struct.bfa_s*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @claim_fcxps_mem(%struct.bfa_fcxp_mod_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
