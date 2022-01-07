; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_update_hal_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_update_hal_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocfc_cfg_s = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@num_rports = common dso_local global i64 0, align 8
@num_ios = common dso_local global i64 0, align 8
@num_tms = common dso_local global i64 0, align 8
@num_fcxps = common dso_local global i64 0, align 8
@BFA_FCXP_MAX = common dso_local global i64 0, align 8
@num_ufbufs = common dso_local global i64 0, align 8
@BFA_UF_MAX = common dso_local global i64 0, align 8
@reqq_size = common dso_local global i64 0, align 8
@rspq_size = common dso_local global i64 0, align 8
@num_sgpgs = common dso_local global i64 0, align 8
@BFA_SGPG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_update_hal_cfg(%struct.bfa_iocfc_cfg_s* %0) #0 {
  %2 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  store %struct.bfa_iocfc_cfg_s* %0, %struct.bfa_iocfc_cfg_s** %2, align 8
  %3 = load i64, i64* @num_rports, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i64, i64* @num_rports, align 8
  %7 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %8 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i64 %6, i64* %9, align 8
  br label %10

10:                                               ; preds = %5, %1
  %11 = load i64, i64* @num_ios, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i64, i64* @num_ios, align 8
  %15 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %16 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i64 %14, i64* %17, align 8
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i64, i64* @num_tms, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, i64* @num_tms, align 8
  %23 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %24 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i64 %22, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i64, i64* @num_fcxps, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i64, i64* @num_fcxps, align 8
  %31 = load i64, i64* @BFA_FCXP_MAX, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* @num_fcxps, align 8
  %35 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %36 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %29, %26
  %39 = load i64, i64* @num_ufbufs, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i64, i64* @num_ufbufs, align 8
  %43 = load i64, i64* @BFA_UF_MAX, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i64, i64* @num_ufbufs, align 8
  %47 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %48 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  store i64 %46, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %41, %38
  %51 = load i64, i64* @reqq_size, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i64, i64* @reqq_size, align 8
  %55 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %56 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i64, i64* @rspq_size, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i64, i64* @rspq_size, align 8
  %63 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %64 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i64, i64* @num_sgpgs, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i64, i64* @num_sgpgs, align 8
  %71 = load i64, i64* @BFA_SGPG_MAX, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i64, i64* @num_sgpgs, align 8
  %75 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %76 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %69, %66
  %79 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %80 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* @num_rports, align 8
  %83 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %84 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* @num_ios, align 8
  %87 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %88 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* @num_tms, align 8
  %91 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %92 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* @num_fcxps, align 8
  %95 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %96 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* @num_ufbufs, align 8
  %99 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %100 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* @reqq_size, align 8
  %103 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %104 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* @rspq_size, align 8
  %107 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %108 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* @num_sgpgs, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
