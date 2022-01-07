; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_del_tiqn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_del_tiqn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tiqn = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"iscsit_set_tiqn_shutdown() failed\0A\00", align 1
@tiqn_lock = common dso_local global i32 0, align 4
@tiqn_idr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"CORE[0] - Deleted iSCSI Target IQN: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_del_tiqn(%struct.iscsi_tiqn* %0) #0 {
  %2 = alloca %struct.iscsi_tiqn*, align 8
  store %struct.iscsi_tiqn* %0, %struct.iscsi_tiqn** %2, align 8
  %3 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %2, align 8
  %4 = call i64 @iscsit_set_tiqn_shutdown(%struct.iscsi_tiqn* %3)
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %2, align 8
  %10 = call i32 @iscsit_wait_for_tiqn(%struct.iscsi_tiqn* %9)
  %11 = call i32 @spin_lock(i32* @tiqn_lock)
  %12 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %2, align 8
  %13 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %12, i32 0, i32 2
  %14 = call i32 @list_del(i32* %13)
  %15 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %2, align 8
  %16 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @idr_remove(i32* @tiqn_idr, i32 %17)
  %19 = call i32 @spin_unlock(i32* @tiqn_lock)
  %20 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %2, align 8
  %21 = getelementptr inbounds %struct.iscsi_tiqn, %struct.iscsi_tiqn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.iscsi_tiqn*, %struct.iscsi_tiqn** %2, align 8
  %25 = call i32 @kfree(%struct.iscsi_tiqn* %24)
  br label %26

26:                                               ; preds = %8, %6
  ret void
}

declare dso_local i64 @iscsit_set_tiqn_shutdown(%struct.iscsi_tiqn*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @iscsit_wait_for_tiqn(%struct.iscsi_tiqn*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @kfree(%struct.iscsi_tiqn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
