; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_transport_lookup_tmr_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_transport_lookup_tmr_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i8*, %struct.TYPE_3__*, i32, i32, i32, %struct.se_lun*, %struct.se_tmr_req*, %struct.se_session* }
%struct.TYPE_3__ = type { i32 }
%struct.se_lun = type { i32, i32 }
%struct.se_tmr_req = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.se_session = type { %struct.se_node_acl* }
%struct.se_node_acl = type { i32 }
%struct.se_dev_entry = type { i32, i32 }

@SCF_SE_LUN_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"TARGET_CORE[%s]: Detected NON_EXISTENT_LUN Access for 0x%08llx\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_lookup_tmr_lun(%struct.se_cmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_dev_entry*, align 8
  %7 = alloca %struct.se_lun*, align 8
  %8 = alloca %struct.se_session*, align 8
  %9 = alloca %struct.se_node_acl*, align 8
  %10 = alloca %struct.se_tmr_req*, align 8
  %11 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.se_lun* null, %struct.se_lun** %7, align 8
  %12 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 8
  %14 = load %struct.se_session*, %struct.se_session** %13, align 8
  store %struct.se_session* %14, %struct.se_session** %8, align 8
  %15 = load %struct.se_session*, %struct.se_session** %8, align 8
  %16 = getelementptr inbounds %struct.se_session, %struct.se_session* %15, i32 0, i32 0
  %17 = load %struct.se_node_acl*, %struct.se_node_acl** %16, align 8
  store %struct.se_node_acl* %17, %struct.se_node_acl** %9, align 8
  %18 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 7
  %20 = load %struct.se_tmr_req*, %struct.se_tmr_req** %19, align 8
  store %struct.se_tmr_req* %20, %struct.se_tmr_req** %10, align 8
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.se_node_acl*, %struct.se_node_acl** %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl* %22, i32 %23)
  store %struct.se_dev_entry* %24, %struct.se_dev_entry** %6, align 8
  %25 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %26 = icmp ne %struct.se_dev_entry* %25, null
  br i1 %26, label %27, label %56

27:                                               ; preds = %2
  %28 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %29 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.se_lun* @rcu_dereference(i32 %30)
  store %struct.se_lun* %31, %struct.se_lun** %7, align 8
  %32 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %33 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %32, i32 0, i32 1
  %34 = call i32 @percpu_ref_tryget_live(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  store %struct.se_lun* null, %struct.se_lun** %7, align 8
  br label %57

37:                                               ; preds = %27
  %38 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %39 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 6
  store %struct.se_lun* %38, %struct.se_lun** %40, align 8
  %41 = load %struct.se_dev_entry*, %struct.se_dev_entry** %6, align 8
  %42 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @SCF_SE_LUN_CMD, align 4
  %50 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %55 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %37, %2
  br label %57

57:                                               ; preds = %56, %36
  %58 = call i32 (...) @rcu_read_unlock()
  %59 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %60 = icmp ne %struct.se_lun* %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %57
  %62 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %63 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %104

71:                                               ; preds = %57
  %72 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %73 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @rcu_dereference_raw(i32 %74)
  %76 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %77 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %79 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @rcu_dereference_raw(i32 %80)
  %82 = bitcast i8* %81 to %struct.TYPE_4__*
  %83 = load %struct.se_tmr_req*, %struct.se_tmr_req** %10, align 8
  %84 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %83, i32 0, i32 0
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %84, align 8
  %85 = load %struct.se_tmr_req*, %struct.se_tmr_req** %10, align 8
  %86 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load %struct.se_tmr_req*, %struct.se_tmr_req** %10, align 8
  %92 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %91, i32 0, i32 1
  %93 = load %struct.se_tmr_req*, %struct.se_tmr_req** %10, align 8
  %94 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = call i32 @list_add_tail(i32* %92, i32* %96)
  %98 = load %struct.se_tmr_req*, %struct.se_tmr_req** %10, align 8
  %99 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %71, %61
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.se_dev_entry* @target_nacl_find_deve(%struct.se_node_acl*, i32) #1

declare dso_local %struct.se_lun* @rcu_dereference(i32) #1

declare dso_local i32 @percpu_ref_tryget_live(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i8* @rcu_dereference_raw(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
