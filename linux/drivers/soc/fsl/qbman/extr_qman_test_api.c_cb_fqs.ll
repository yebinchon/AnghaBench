; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_api.c_cb_fqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_api.c_cb_fqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32 }
%struct.qman_fq = type { i32 }
%union.qm_mr_entry = type { i64 }

@QM_MR_VERB_TYPE_MASK = common dso_local global i64 0, align 8
@QM_MR_VERB_FQRN = common dso_local global i64 0, align 8
@QM_MR_VERB_FQRNI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"unexpected FQS message\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Retirement message received\0A\00", align 1
@retire_complete = common dso_local global i32 0, align 4
@waitqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qman_portal*, %struct.qman_fq*, %union.qm_mr_entry*)* @cb_fqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_fqs(%struct.qman_portal* %0, %struct.qman_fq* %1, %union.qm_mr_entry* %2) #0 {
  %4 = alloca %struct.qman_portal*, align 8
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca %union.qm_mr_entry*, align 8
  %7 = alloca i64, align 8
  store %struct.qman_portal* %0, %struct.qman_portal** %4, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %5, align 8
  store %union.qm_mr_entry* %2, %union.qm_mr_entry** %6, align 8
  %8 = load %union.qm_mr_entry*, %union.qm_mr_entry** %6, align 8
  %9 = bitcast %union.qm_mr_entry* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QM_MR_VERB_TYPE_MASK, align 8
  %12 = and i64 %10, %11
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @QM_MR_VERB_FQRN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @QM_MR_VERB_FQRNI, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = call i32 @pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @WARN_ON(i32 1)
  br label %26

23:                                               ; preds = %16, %3
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @retire_complete, align 4
  %25 = call i32 @wake_up(i32* @waitqueue)
  br label %26

26:                                               ; preds = %23, %20
  ret void
}

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
