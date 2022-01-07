; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_configfs.c_lio_tpg_close_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_configfs.c_lio_tpg_close_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.se_portal_group }
%struct.se_portal_group = type { i32 }

@ISCSI_TF_EXPIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_session*)* @lio_tpg_close_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_tpg_close_session(%struct.se_session* %0) #0 {
  %2 = alloca %struct.se_session*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.se_portal_group*, align 8
  store %struct.se_session* %0, %struct.se_session** %2, align 8
  %5 = load %struct.se_session*, %struct.se_session** %2, align 8
  %6 = getelementptr inbounds %struct.se_session, %struct.se_session* %5, i32 0, i32 0
  %7 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  store %struct.iscsi_session* %7, %struct.iscsi_session** %3, align 8
  %8 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.se_portal_group* %11, %struct.se_portal_group** %4, align 8
  %12 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %13 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %16 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %19 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %18, i32 0, i32 2
  %20 = call i64 @atomic_read(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %1
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %24 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %23, i32 0, i32 4
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %29 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ISCSI_TF_EXPIRED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27, %22, %1
  %35 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %36 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %39 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_bh(i32* %39)
  br label %60

41:                                               ; preds = %27
  %42 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %43 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %42, i32 0, i32 3
  %44 = call i32 @atomic_set(i32* %43, i32 1)
  %45 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %46 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %45, i32 0, i32 2
  %47 = call i32 @atomic_set(i32* %46, i32 1)
  %48 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %49 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %52 = call i32 @iscsit_stop_time2retain_timer(%struct.iscsi_session* %51)
  %53 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %54 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_bh(i32* %54)
  %56 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %57 = call i32 @iscsit_stop_session(%struct.iscsi_session* %56, i32 1, i32 1)
  %58 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %59 = call i32 @iscsit_close_session(%struct.iscsi_session* %58)
  br label %60

60:                                               ; preds = %41, %34
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @iscsit_stop_time2retain_timer(%struct.iscsi_session*) #1

declare dso_local i32 @iscsit_stop_session(%struct.iscsi_session*, i32, i32) #1

declare dso_local i32 @iscsit_close_session(%struct.iscsi_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
