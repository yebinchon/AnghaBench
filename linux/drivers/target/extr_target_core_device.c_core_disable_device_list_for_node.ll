; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_disable_device_list_for_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_disable_device_list_for_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { i32, i32 }
%struct.se_dev_entry = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.se_node_acl = type { i32 }
%struct.se_portal_group = type { i32 }
%struct.se_device = type { i32 }

@DEF_PR_REG_ACTIVE = common dso_local global i32 0, align 4
@target_pr_kref_release = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_disable_device_list_for_node(%struct.se_lun* %0, %struct.se_dev_entry* %1, %struct.se_node_acl* %2, %struct.se_portal_group* %3) #0 {
  %5 = alloca %struct.se_lun*, align 8
  %6 = alloca %struct.se_dev_entry*, align 8
  %7 = alloca %struct.se_node_acl*, align 8
  %8 = alloca %struct.se_portal_group*, align 8
  %9 = alloca %struct.se_device*, align 8
  store %struct.se_lun* %0, %struct.se_lun** %5, align 8
  store %struct.se_dev_entry* %1, %struct.se_dev_entry** %6, align 8
  store %struct.se_node_acl* %2, %struct.se_node_acl** %7, align 8
  store %struct.se_portal_group* %3, %struct.se_portal_group** %8, align 8
  %10 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %11 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.se_device* @rcu_dereference_raw(i32 %12)
  store %struct.se_device* %13, %struct.se_device** %9, align 8
  %14 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %15 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %14, i32 0, i32 0
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %18 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %21 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %20, i32 0, i32 9
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.se_lun*, %struct.se_lun** %5, align 8
  %24 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %27 = call i32 @core_scsi3_ua_release_all(%struct.se_dev_entry* %26)
  %28 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %29 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %28, i32 0, i32 8
  %30 = call i32 @hlist_del_rcu(i32* %29)
  %31 = load i32, i32* @DEF_PR_REG_ACTIVE, align 4
  %32 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %33 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %32, i32 0, i32 7
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  %35 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %36 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %38 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %37, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %40 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %44 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %43, i32 0, i32 4
  %45 = load i32, i32* @target_pr_kref_release, align 4
  %46 = call i32 @kref_put(i32* %44, i32 %45)
  %47 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %48 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %47, i32 0, i32 3
  %49 = call i32 @wait_for_completion(i32* %48)
  %50 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %51 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @rcu_assign_pointer(i32 %52, i32* null)
  %54 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %55 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @rcu_assign_pointer(i32 %56, i32* null)
  %58 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %59 = load i32, i32* @rcu_head, align 4
  %60 = call i32 @kfree_rcu(%struct.se_dev_entry* %58, i32 %59)
  %61 = load %struct.se_device*, %struct.se_device** %9, align 8
  %62 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %63 = call i32 @core_scsi3_free_pr_reg_from_nacl(%struct.se_device* %61, %struct.se_node_acl* %62)
  %64 = load %struct.se_node_acl*, %struct.se_node_acl** %7, align 8
  %65 = call i32 @target_luns_data_has_changed(%struct.se_node_acl* %64, i32* null, i32 0)
  ret void
}

declare dso_local %struct.se_device* @rcu_dereference_raw(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @core_scsi3_ua_release_all(%struct.se_dev_entry*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.se_dev_entry*, i32) #1

declare dso_local i32 @core_scsi3_free_pr_reg_from_nacl(%struct.se_device*, %struct.se_node_acl*) #1

declare dso_local i32 @target_luns_data_has_changed(%struct.se_node_acl*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
