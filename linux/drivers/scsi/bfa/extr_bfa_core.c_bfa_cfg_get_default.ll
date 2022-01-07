; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_cfg_get_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_cfg_get_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocfc_cfg_s = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEF_CFG_NUM_FABRICS = common dso_local global i32 0, align 4
@DEF_CFG_NUM_LPORTS = common dso_local global i32 0, align 4
@DEF_CFG_NUM_RPORTS = common dso_local global i32 0, align 4
@DEF_CFG_NUM_IOIM_REQS = common dso_local global i32 0, align 4
@DEF_CFG_NUM_TSKIM_REQS = common dso_local global i32 0, align 4
@DEF_CFG_NUM_FCXP_REQS = common dso_local global i32 0, align 4
@DEF_CFG_NUM_UF_BUFS = common dso_local global i32 0, align 4
@DEF_CFG_NUM_CQS = common dso_local global i32 0, align 4
@DEF_CFG_NUM_REQQ_ELEMS = common dso_local global i32 0, align 4
@DEF_CFG_NUM_RSPQ_ELEMS = common dso_local global i32 0, align 4
@DEF_CFG_NUM_SGPGS = common dso_local global i32 0, align 4
@DEF_CFG_NUM_SBOOT_TGTS = common dso_local global i32 0, align 4
@DEF_CFG_NUM_SBOOT_LUNS = common dso_local global i32 0, align 4
@BFA_FCPIM_PATHTOV_DEF = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_cfg_get_default(%struct.bfa_iocfc_cfg_s* %0) #0 {
  %2 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  store %struct.bfa_iocfc_cfg_s* %0, %struct.bfa_iocfc_cfg_s** %2, align 8
  %3 = load i32, i32* @DEF_CFG_NUM_FABRICS, align 4
  %4 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 8
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @DEF_CFG_NUM_LPORTS, align 4
  %8 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 7
  store i32 %7, i32* %10, align 8
  %11 = load i32, i32* @DEF_CFG_NUM_RPORTS, align 4
  %12 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %13 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 6
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @DEF_CFG_NUM_IOIM_REQS, align 4
  %16 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @DEF_CFG_NUM_TSKIM_REQS, align 4
  %20 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %21 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @DEF_CFG_NUM_FCXP_REQS, align 4
  %24 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %25 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @DEF_CFG_NUM_UF_BUFS, align 4
  %28 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %29 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @DEF_CFG_NUM_CQS, align 4
  %32 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %33 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %36 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @DEF_CFG_NUM_REQQ_ELEMS, align 4
  %39 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %40 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 7
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @DEF_CFG_NUM_RSPQ_ELEMS, align 4
  %43 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %44 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @DEF_CFG_NUM_SGPGS, align 4
  %47 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %48 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @DEF_CFG_NUM_SBOOT_TGTS, align 4
  %51 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %52 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @DEF_CFG_NUM_SBOOT_LUNS, align 4
  %55 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %56 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @BFA_FCPIM_PATHTOV_DEF, align 4
  %59 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %60 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load i8*, i8** @BFA_FALSE, align 8
  %63 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %64 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load i8*, i8** @BFA_FALSE, align 8
  %67 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %68 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
