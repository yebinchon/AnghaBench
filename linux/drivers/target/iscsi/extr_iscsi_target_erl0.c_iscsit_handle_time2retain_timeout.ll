; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_handle_time2retain_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_handle_time2retain_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32, i32, i32, %struct.iscsi_portal_group* }
%struct.iscsi_portal_group = type { %struct.se_portal_group }
%struct.se_portal_group = type { i32 }
%struct.timer_list = type { i32 }

@time2retain_timer = common dso_local global i32 0, align 4
@ISCSI_TF_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Exiting Time2Retain handler because session_reinstatement=1\0A\00", align 1
@ISCSI_TF_EXPIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Time2Retain timer expired for SID: %u, cleaning up iSCSI session.\0A\00", align 1
@sess = common dso_local global %struct.iscsi_session* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_handle_time2retain_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.iscsi_portal_group*, align 8
  %5 = alloca %struct.se_portal_group*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %7 = ptrtoint %struct.iscsi_session* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @time2retain_timer, align 4
  %10 = call %struct.iscsi_session* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.iscsi_session* %10, %struct.iscsi_session** %3, align 8
  %11 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %11, i32 0, i32 3
  %13 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %12, align 8
  store %struct.iscsi_portal_group* %13, %struct.iscsi_portal_group** %4, align 8
  %14 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %14, i32 0, i32 0
  store %struct.se_portal_group* %15, %struct.se_portal_group** %5, align 8
  %16 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %17 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %20 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ISCSI_TF_STOP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %27 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_bh(i32* %27)
  br label %56

29:                                               ; preds = %1
  %30 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %31 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %30, i32 0, i32 2
  %32 = call i64 @atomic_read(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %37 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_bh(i32* %37)
  br label %56

39:                                               ; preds = %29
  %40 = load i32, i32* @ISCSI_TF_EXPIRED, align 4
  %41 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %42 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %46 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %50 = call i32 @iscsit_fill_cxn_timeout_err_stats(%struct.iscsi_session* %49)
  %51 = load %struct.se_portal_group*, %struct.se_portal_group** %5, align 8
  %52 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %55 = call i32 @iscsit_close_session(%struct.iscsi_session* %54)
  br label %56

56:                                               ; preds = %39, %34, %25
  ret void
}

declare dso_local %struct.iscsi_session* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_fill_cxn_timeout_err_stats(%struct.iscsi_session*) #1

declare dso_local i32 @iscsit_close_session(%struct.iscsi_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
