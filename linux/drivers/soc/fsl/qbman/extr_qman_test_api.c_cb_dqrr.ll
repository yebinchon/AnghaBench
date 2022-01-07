; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_api.c_cb_dqrr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_api.c_cb_dqrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32 }
%struct.qman_fq = type { i32 }
%struct.qm_dqrr_entry = type { i32, i32 }

@fd_dq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"BADNESS: dequeued frame doesn't match;\0A\00", align 1
@qman_cb_dqrr_consume = common dso_local global i32 0, align 4
@QM_DQRR_STAT_UNSCHEDULED = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@sdqcr_complete = common dso_local global i32 0, align 4
@waitqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_portal*, %struct.qman_fq*, %struct.qm_dqrr_entry*)* @cb_dqrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_dqrr(%struct.qman_portal* %0, %struct.qman_fq* %1, %struct.qm_dqrr_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qman_portal*, align 8
  %6 = alloca %struct.qman_fq*, align 8
  %7 = alloca %struct.qm_dqrr_entry*, align 8
  store %struct.qman_portal* %0, %struct.qman_portal** %5, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %6, align 8
  store %struct.qm_dqrr_entry* %2, %struct.qm_dqrr_entry** %7, align 8
  %8 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %9 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %8, i32 0, i32 1
  %10 = call i32 @fd_neq(i32* @fd_dq, i32* %9)
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @qman_cb_dqrr_consume, align 4
  store i32 %15, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  %17 = call i32 @fd_inc(i32* @fd_dq)
  %18 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %19 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @QM_DQRR_STAT_UNSCHEDULED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %16
  %25 = call i32 @fd_neq(i32* @fd_dq, i32* @fd)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  store i32 1, i32* @sdqcr_complete, align 4
  %28 = call i32 @wake_up(i32* @waitqueue)
  br label %29

29:                                               ; preds = %27, %24, %16
  %30 = load i32, i32* @qman_cb_dqrr_consume, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @fd_neq(i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @fd_inc(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
