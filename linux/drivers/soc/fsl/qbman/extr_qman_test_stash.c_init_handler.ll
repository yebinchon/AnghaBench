; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_init_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_init_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hp_handler = type { i64, %struct.qm_mcc_initfq, i32, %struct.qm_mcc_initfq, i32 }
%struct.qm_mcc_initfq = type { %struct.TYPE_4__, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@special_handler = common dso_local global %struct.hp_handler* null, align 8
@special_dqrr = common dso_local global i32 0, align 4
@normal_dqrr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"qman_create_fq(rx) failed\00", align 1
@QM_INITFQ_WE_FQCTRL = common dso_local global i32 0, align 4
@QM_INITFQ_WE_CONTEXTA = common dso_local global i32 0, align 4
@QM_FQCTRL_CTXASTASHING = common dso_local global i32 0, align 4
@STASH_DATA_CL = common dso_local global i32 0, align 4
@STASH_CTX_CL = common dso_local global i32 0, align 4
@QMAN_INITFQ_FLAG_SCHED = common dso_local global i32 0, align 4
@QMAN_INITFQ_FLAG_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"qman_init_fq(rx) failed\00", align 1
@QMAN_FQ_FLAG_NO_MODIFY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"qman_create_fq(tx) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @init_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_handler(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qm_mcc_initfq, align 8
  %5 = alloca %struct.hp_handler*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hp_handler*
  store %struct.hp_handler* %8, %struct.hp_handler** %5, align 8
  %9 = load %struct.hp_handler*, %struct.hp_handler** %5, align 8
  %10 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 (...) @smp_processor_id()
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %88

17:                                               ; preds = %1
  %18 = load %struct.hp_handler*, %struct.hp_handler** %5, align 8
  %19 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %18, i32 0, i32 3
  %20 = call i32 @memset(%struct.qm_mcc_initfq* %19, i32 0, i32 24)
  %21 = load %struct.hp_handler*, %struct.hp_handler** %5, align 8
  %22 = load %struct.hp_handler*, %struct.hp_handler** @special_handler, align 8
  %23 = icmp eq %struct.hp_handler* %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @special_dqrr, align 4
  %26 = load %struct.hp_handler*, %struct.hp_handler** %5, align 8
  %27 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 8
  br label %36

30:                                               ; preds = %17
  %31 = load i32, i32* @normal_dqrr, align 4
  %32 = load %struct.hp_handler*, %struct.hp_handler** %5, align 8
  %33 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.hp_handler*, %struct.hp_handler** %5, align 8
  %38 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.hp_handler*, %struct.hp_handler** %5, align 8
  %41 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %40, i32 0, i32 3
  %42 = call i32 @qman_create_fq(i32 %39, i32 0, %struct.qm_mcc_initfq* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = call i32 @pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %88

47:                                               ; preds = %36
  %48 = call i32 @memset(%struct.qm_mcc_initfq* %4, i32 0, i32 24)
  %49 = load i32, i32* @QM_INITFQ_WE_FQCTRL, align 4
  %50 = load i32, i32* @QM_INITFQ_WE_CONTEXTA, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @cpu_to_be16(i32 %51)
  %53 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %4, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* @QM_FQCTRL_CTXASTASHING, align 4
  %55 = call i8* @cpu_to_be16(i32 %54)
  %56 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %4, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %4, i32 0, i32 0
  %59 = load i32, i32* @STASH_DATA_CL, align 4
  %60 = load i32, i32* @STASH_CTX_CL, align 4
  %61 = call i32 @qm_fqd_set_stashing(%struct.TYPE_4__* %58, i32 0, i32 %59, i32 %60)
  %62 = load %struct.hp_handler*, %struct.hp_handler** %5, align 8
  %63 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %62, i32 0, i32 3
  %64 = load i32, i32* @QMAN_INITFQ_FLAG_SCHED, align 4
  %65 = load i32, i32* @QMAN_INITFQ_FLAG_LOCAL, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @qman_init_fq(%struct.qm_mcc_initfq* %63, i32 %66, %struct.qm_mcc_initfq* %4)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %47
  %71 = call i32 @pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %88

72:                                               ; preds = %47
  %73 = load %struct.hp_handler*, %struct.hp_handler** %5, align 8
  %74 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %73, i32 0, i32 1
  %75 = call i32 @memset(%struct.qm_mcc_initfq* %74, i32 0, i32 24)
  %76 = load %struct.hp_handler*, %struct.hp_handler** %5, align 8
  %77 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @QMAN_FQ_FLAG_NO_MODIFY, align 4
  %80 = load %struct.hp_handler*, %struct.hp_handler** %5, align 8
  %81 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %80, i32 0, i32 1
  %82 = call i32 @qman_create_fq(i32 %78, i32 %79, %struct.qm_mcc_initfq* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = call i32 @pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %88

87:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %90

88:                                               ; preds = %85, %70, %45, %14
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%struct.qm_mcc_initfq*, i32, i32) #1

declare dso_local i32 @qman_create_fq(i32, i32, %struct.qm_mcc_initfq*) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @qm_fqd_set_stashing(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @qman_init_fq(%struct.qm_mcc_initfq*, i32, %struct.qm_mcc_initfq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
