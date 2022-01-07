; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_ua.c_target_scsi3_ua_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_ua.c_target_scsi3_ua_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32*, i32, %struct.se_session* }
%struct.se_session = type { %struct.se_node_acl* }
%struct.se_node_acl = type { i32 }
%struct.se_dev_entry = type { i32 }

@TCM_CHECK_CONDITION_UNIT_ATTENTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_scsi3_ua_check(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_dev_entry*, align 8
  %5 = alloca %struct.se_session*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %7 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %7, i32 0, i32 2
  %9 = load %struct.se_session*, %struct.se_session** %8, align 8
  store %struct.se_session* %9, %struct.se_session** %5, align 8
  %10 = load %struct.se_session*, %struct.se_session** %5, align 8
  %11 = icmp ne %struct.se_session* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.se_session*, %struct.se_session** %5, align 8
  %15 = getelementptr inbounds %struct.se_session, %struct.se_session* %14, i32 0, i32 0
  %16 = load %struct.se_node_acl*, %struct.se_node_acl** %15, align 8
  store %struct.se_node_acl* %16, %struct.se_node_acl** %6, align 8
  %17 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %18 = icmp ne %struct.se_node_acl* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %48

20:                                               ; preds = %13
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %23 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl* %22, i32 %25)
  store %struct.se_dev_entry* %26, %struct.se_dev_entry** %4, align 8
  %27 = load %struct.se_dev_entry*, %struct.se_dev_entry** %4, align 8
  %28 = icmp ne %struct.se_dev_entry* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %2, align 4
  br label %48

31:                                               ; preds = %20
  %32 = load %struct.se_dev_entry*, %struct.se_dev_entry** %4, align 8
  %33 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %32, i32 0, i32 0
  %34 = call i64 @list_empty_careful(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %2, align 4
  br label %48

38:                                               ; preds = %31
  %39 = call i32 (...) @rcu_read_unlock()
  %40 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %46 [
    i32 130, label %45
    i32 129, label %45
    i32 128, label %45
  ]

45:                                               ; preds = %38, %38, %38
  store i32 0, i32* %2, align 4
  br label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @TCM_CHECK_CONDITION_UNIT_ATTENTION, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %45, %36, %29, %19, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @list_empty_careful(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
