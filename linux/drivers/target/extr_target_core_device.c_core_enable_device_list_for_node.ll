; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_enable_device_list_for_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_core_enable_device_list_for_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { i32, i32 }
%struct.se_lun_acl = type { i32, i32 }
%struct.se_node_acl = type { i32, i32, i32 }
%struct.se_portal_group = type { i32 }
%struct.se_dev_entry = type { i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to allocate se_dev_entry memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"Existing orig->se_lun doesn't match new lun for dynamic -> explicit NodeACL conversion: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [96 x i8] c"Detected existing explicit se_lun_acl->se_lun_group reference for %s mapped_lun: %llu, failing\0A\00", align 1
@target_pr_kref_release = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_enable_device_list_for_node(%struct.se_lun* %0, %struct.se_lun_acl* %1, i32 %2, i32 %3, %struct.se_node_acl* %4, %struct.se_portal_group* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.se_lun*, align 8
  %9 = alloca %struct.se_lun_acl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.se_node_acl*, align 8
  %13 = alloca %struct.se_portal_group*, align 8
  %14 = alloca %struct.se_dev_entry*, align 8
  %15 = alloca %struct.se_dev_entry*, align 8
  %16 = alloca %struct.se_lun*, align 8
  store %struct.se_lun* %0, %struct.se_lun** %8, align 8
  store %struct.se_lun_acl* %1, %struct.se_lun_acl** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.se_node_acl* %4, %struct.se_node_acl** %12, align 8
  store %struct.se_portal_group* %5, %struct.se_portal_group** %13, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.se_dev_entry* @kzalloc(i32 64, i32 %17)
  store %struct.se_dev_entry* %18, %struct.se_dev_entry** %15, align 8
  %19 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %20 = icmp ne %struct.se_dev_entry* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %193

25:                                               ; preds = %6
  %26 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %27 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %26, i32 0, i32 11
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %30 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %29, i32 0, i32 10
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %33 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %32, i32 0, i32 1
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %37 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 8
  %38 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %39 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %38, i32 0, i32 6
  %40 = call i32 @kref_init(i32* %39)
  %41 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %42 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %41, i32 0, i32 5
  %43 = call i32 @init_completion(i32* %42)
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %46 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = call i32 (...) @get_jiffies_64()
  %48 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %49 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 4
  %50 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %51 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %55 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl* %57, i32 %58)
  store %struct.se_dev_entry* %59, %struct.se_dev_entry** %14, align 8
  %60 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %61 = icmp ne %struct.se_dev_entry* %60, null
  br i1 %61, label %62, label %159

62:                                               ; preds = %25
  %63 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %64 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %159

67:                                               ; preds = %62
  %68 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %69 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %72 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %71, i32 0, i32 0
  %73 = call i32 @lockdep_is_held(i32* %72)
  %74 = call %struct.se_lun_acl* @rcu_dereference_check(i32* %70, i32 %73)
  %75 = bitcast %struct.se_lun_acl* %74 to %struct.se_lun*
  store %struct.se_lun* %75, %struct.se_lun** %16, align 8
  %76 = load %struct.se_lun*, %struct.se_lun** %16, align 8
  %77 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %78 = icmp ne %struct.se_lun* %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %67
  %80 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %81 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %85 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %88 = call i32 @kfree(%struct.se_dev_entry* %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %193

91:                                               ; preds = %67
  %92 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %93 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %98 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %103 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %106 = call i32 @kfree(%struct.se_dev_entry* %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %7, align 4
  br label %193

109:                                              ; preds = %91
  %110 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %111 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %114 = bitcast %struct.se_lun* %113 to %struct.se_lun_acl*
  %115 = call i32 @rcu_assign_pointer(i32* %112, %struct.se_lun_acl* %114)
  %116 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %117 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.se_lun_acl*, %struct.se_lun_acl** %9, align 8
  %120 = call i32 @rcu_assign_pointer(i32* %118, %struct.se_lun_acl* %119)
  %121 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %122 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %121, i32 0, i32 2
  %123 = call i32 @hlist_del_rcu(i32* %122)
  %124 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %125 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %124, i32 0, i32 2
  %126 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %127 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %126, i32 0, i32 1
  %128 = call i32 @hlist_add_head_rcu(i32* %125, i32* %127)
  %129 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %130 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %133 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %132, i32 0, i32 0
  %134 = call i32 @spin_lock(i32* %133)
  %135 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %136 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %135, i32 0, i32 1
  %137 = call i32 @list_del(i32* %136)
  %138 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %139 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %138, i32 0, i32 1
  %140 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %141 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %140, i32 0, i32 1
  %142 = call i32 @list_add_tail(i32* %139, i32* %141)
  %143 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %144 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %143, i32 0, i32 0
  %145 = call i32 @spin_unlock(i32* %144)
  %146 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %147 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %146, i32 0, i32 6
  %148 = load i32, i32* @target_pr_kref_release, align 4
  %149 = call i32 @kref_put(i32* %147, i32 %148)
  %150 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %151 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %150, i32 0, i32 5
  %152 = call i32 @wait_for_completion(i32* %151)
  %153 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %154 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %155 = call i32 @target_luns_data_has_changed(%struct.se_node_acl* %153, %struct.se_dev_entry* %154, i32 1)
  %156 = load %struct.se_dev_entry*, %struct.se_dev_entry** %14, align 8
  %157 = load i32, i32* @rcu_head, align 4
  %158 = call i32 @kfree_rcu(%struct.se_dev_entry* %156, i32 %157)
  store i32 0, i32* %7, align 4
  br label %193

159:                                              ; preds = %62, %25
  %160 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %161 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %160, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %164 = bitcast %struct.se_lun* %163 to %struct.se_lun_acl*
  %165 = call i32 @rcu_assign_pointer(i32* %162, %struct.se_lun_acl* %164)
  %166 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %167 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.se_lun_acl*, %struct.se_lun_acl** %9, align 8
  %170 = call i32 @rcu_assign_pointer(i32* %168, %struct.se_lun_acl* %169)
  %171 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %172 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %171, i32 0, i32 2
  %173 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %174 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %173, i32 0, i32 1
  %175 = call i32 @hlist_add_head_rcu(i32* %172, i32* %174)
  %176 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %177 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %176, i32 0, i32 0
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %180 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %179, i32 0, i32 0
  %181 = call i32 @spin_lock(i32* %180)
  %182 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %183 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %182, i32 0, i32 1
  %184 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %185 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %184, i32 0, i32 1
  %186 = call i32 @list_add_tail(i32* %183, i32* %185)
  %187 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %188 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %187, i32 0, i32 0
  %189 = call i32 @spin_unlock(i32* %188)
  %190 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %191 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %192 = call i32 @target_luns_data_has_changed(%struct.se_node_acl* %190, %struct.se_dev_entry* %191, i32 1)
  store i32 0, i32* %7, align 4
  br label %193

193:                                              ; preds = %159, %109, %96, %79, %21
  %194 = load i32, i32* %7, align 4
  ret i32 %194
}

declare dso_local %struct.se_dev_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl*, i32) #1

declare dso_local %struct.se_lun_acl* @rcu_dereference_check(i32*, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.se_dev_entry*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.se_lun_acl*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @target_luns_data_has_changed(%struct.se_node_acl*, %struct.se_dev_entry*, i32) #1

declare dso_local i32 @kfree_rcu(%struct.se_dev_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
