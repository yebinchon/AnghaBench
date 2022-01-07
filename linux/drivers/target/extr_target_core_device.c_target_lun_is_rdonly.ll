; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_target_lun_is_rdonly.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_device.c_target_lun_is_rdonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.se_session* }
%struct.se_session = type { i32 }
%struct.se_dev_entry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_lun_is_rdonly(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca %struct.se_session*, align 8
  %4 = alloca %struct.se_dev_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %6 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %6, i32 0, i32 1
  %8 = load %struct.se_session*, %struct.se_session** %7, align 8
  store %struct.se_session* %8, %struct.se_session** %3, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.se_session*, %struct.se_session** %3, align 8
  %11 = getelementptr inbounds %struct.se_session, %struct.se_session* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.se_dev_entry* @target_nacl_find_deve(i32 %12, i32 %15)
  store %struct.se_dev_entry* %16, %struct.se_dev_entry** %4, align 8
  %17 = load %struct.se_dev_entry*, %struct.se_dev_entry** %4, align 8
  %18 = icmp ne %struct.se_dev_entry* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.se_dev_entry*, %struct.se_dev_entry** %4, align 8
  %21 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %1
  %25 = phi i1 [ false, %1 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = call i32 (...) @rcu_read_unlock()
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.se_dev_entry* @target_nacl_find_deve(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
