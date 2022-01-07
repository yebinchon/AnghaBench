; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_stop_time2retain_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_stop_time2retain_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32, i32, i32, %struct.iscsi_portal_group* }
%struct.iscsi_portal_group = type { %struct.se_portal_group }
%struct.se_portal_group = type { i32 }

@ISCSI_TF_EXPIRED = common dso_local global i32 0, align 4
@ISCSI_TF_RUNNING = common dso_local global i32 0, align 4
@ISCSI_TF_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Stopped Time2Retain Timer for SID: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_stop_time2retain_timer(%struct.iscsi_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.iscsi_portal_group*, align 8
  %5 = alloca %struct.se_portal_group*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %3, align 8
  %6 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %6, i32 0, i32 3
  %8 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %7, align 8
  store %struct.iscsi_portal_group* %8, %struct.iscsi_portal_group** %4, align 8
  %9 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %9, i32 0, i32 0
  store %struct.se_portal_group* %10, %struct.se_portal_group** %5, align 8
  %11 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %12 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %11, i32 0, i32 0
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ISCSI_TF_EXPIRED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %54

21:                                               ; preds = %1
  %22 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %23 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %54

29:                                               ; preds = %21
  %30 = load i32, i32* @ISCSI_TF_STOP, align 4
  %31 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %32 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %36 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %39 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %38, i32 0, i32 2
  %40 = call i32 @del_timer_sync(i32* %39)
  %41 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %42 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %47 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %51 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %29, %28, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
