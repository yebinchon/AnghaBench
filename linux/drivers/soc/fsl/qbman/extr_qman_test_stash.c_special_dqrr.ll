; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_special_dqrr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_special_dqrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32 }
%struct.qman_fq = type { i32 }
%struct.qm_dqrr_entry = type { i32 }
%struct.hp_handler = type { i32 }

@loop_counter = common dso_local global i64 0, align 8
@HP_LOOPS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"qman_enqueue() failed\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Received final (%dth) frame\0A\00", align 1
@queue = common dso_local global i32 0, align 4
@qman_cb_dqrr_consume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_portal*, %struct.qman_fq*, %struct.qm_dqrr_entry*)* @special_dqrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_dqrr(%struct.qman_portal* %0, %struct.qman_fq* %1, %struct.qm_dqrr_entry* %2) #0 {
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
  %13 = call i32 @process_frame_data(%struct.hp_handler* %10, i32* %12)
  %14 = load i64, i64* @loop_counter, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* @loop_counter, align 8
  %16 = load i64, i64* @HP_LOOPS, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.hp_handler*, %struct.hp_handler** %7, align 8
  %20 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %19, i32 0, i32 0
  %21 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %6, align 8
  %22 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %21, i32 0, i32 0
  %23 = call i64 @qman_enqueue(i32* %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = call i32 @pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @WARN_ON(i32 1)
  br label %34

28:                                               ; preds = %18
  br label %33

29:                                               ; preds = %3
  %30 = load i64, i64* @loop_counter, align 8
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = call i32 @wake_up(i32* @queue)
  br label %33

33:                                               ; preds = %29, %28
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* @qman_cb_dqrr_consume, align 4
  ret i32 %35
}

declare dso_local i32 @process_frame_data(%struct.hp_handler*, i32*) #1

declare dso_local i64 @qman_enqueue(i32*, i32*) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
