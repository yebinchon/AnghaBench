; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_fill_cxn_timeout_err_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_fill_cxn_timeout_err_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32, %struct.TYPE_3__*, %struct.iscsi_portal_group* }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_portal_group = type { %struct.iscsi_tiqn* }
%struct.iscsi_tiqn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@ISCSI_SESS_ERR_CXN_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_fill_cxn_timeout_err_stats(%struct.iscsi_session* %0) #0 {
  %2 = alloca %struct.iscsi_session*, align 8
  %3 = alloca %struct.iscsi_portal_group*, align 8
  %4 = alloca %struct.iscsi_tiqn*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %2, align 8
  %5 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %5, i32 0, i32 2
  %7 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  store %struct.iscsi_portal_group* %7, %struct.iscsi_portal_group** %3, align 8
  %8 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %8, i32 0, i32 0
  %10 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %9, align 8
  store %struct.iscsi_tiqn* %10, %struct.iscsi_tiqn** %4, align 8
  %11 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %12 = icmp ne %struct.iscsi_tiqn* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %16 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %24 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strlcpy(i32 %22, i32 %27, i32 4)
  %29 = load i32, i32* @ISCSI_SESS_ERR_CXN_TIMEOUT, align 4
  %30 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %31 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  %33 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.iscsi_session*, %struct.iscsi_session** %2, align 8
  %39 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %38, i32 0, i32 0
  %40 = call i32 @atomic_long_inc(i32* %39)
  %41 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %4, align 8
  %42 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_bh(i32* %43)
  br label %45

45:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
