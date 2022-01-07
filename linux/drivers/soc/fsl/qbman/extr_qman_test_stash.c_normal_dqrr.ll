; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_normal_dqrr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_normal_dqrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32 }
%struct.qman_fq = type { i32 }
%struct.qm_dqrr_entry = type { i32 }
%struct.hp_handler = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"qman_enqueue() failed\00", align 1
@qman_cb_dqrr_consume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_portal*, %struct.qman_fq*, %struct.qm_dqrr_entry*)* @normal_dqrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @normal_dqrr(%struct.qman_portal* %0, %struct.qman_fq* %1, %struct.qm_dqrr_entry* %2) #0 {
  %4 = alloca %struct.qman_portal*, align 8
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca %struct.qm_dqrr_entry*, align 8
  %7 = alloca %struct.hp_handler*, align 8
  store %struct.qman_portal* %0, %struct.qman_portal** %4, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %5, align 8
  store %struct.qm_dqrr_entry* %2, %struct.qm_dqrr_entry** %6, align 8
  %8 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %9 = bitcast %struct.qman_fq* %8 to %struct.hp_handler*
  store %struct.hp_handler* %9, %struct.hp_handler** %7, align 8
  %10 = load %struct.hp_handler*, %struct.hp_handler** %7, align 8
  %11 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %6, align 8
  %12 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %11, i32 0, i32 0
  %13 = call i64 @process_frame_data(%struct.hp_handler* %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @WARN_ON(i32 1)
  br label %28

17:                                               ; preds = %3
  %18 = load %struct.hp_handler*, %struct.hp_handler** %7, align 8
  %19 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %18, i32 0, i32 0
  %20 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %6, align 8
  %21 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %20, i32 0, i32 0
  %22 = call i64 @qman_enqueue(i32* %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call i32 @pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @WARN_ON(i32 1)
  br label %27

27:                                               ; preds = %24, %17
  br label %28

28:                                               ; preds = %27, %15
  %29 = load i32, i32* @qman_cb_dqrr_consume, align 4
  ret i32 %29
}

declare dso_local i64 @process_frame_data(%struct.hp_handler*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @qman_enqueue(i32*, i32*) #1

declare dso_local i32 @pr_crit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
