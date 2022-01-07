; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_remove_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_remove_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }
%struct.se_lun = type { i32, i32, i32, i64, i32 }
%struct.se_device = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@HBA_FLAGS_INTERNAL_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @core_tpg_remove_lun(%struct.se_portal_group* %0, %struct.se_lun* %1) #0 {
  %3 = alloca %struct.se_portal_group*, align 8
  %4 = alloca %struct.se_lun*, align 8
  %5 = alloca %struct.se_device*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %3, align 8
  store %struct.se_lun* %1, %struct.se_lun** %4, align 8
  %6 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %7 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = call %struct.se_device* @rcu_dereference_raw(i64 %8)
  store %struct.se_device* %9, %struct.se_device** %5, align 8
  %10 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %11 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %13 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %14 = call i32 @core_clear_lun_from_tpg(%struct.se_lun* %12, %struct.se_portal_group* %13)
  %15 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %16 = call i32 @transport_clear_lun_ref(%struct.se_lun* %15)
  %17 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %18 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %21 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %2
  %25 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %26 = call i32 @target_detach_tg_pt_gp(%struct.se_lun* %25)
  %27 = load %struct.se_device*, %struct.se_device** %5, align 8
  %28 = getelementptr inbounds %struct.se_device, %struct.se_device* %27, i32 0, i32 1
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %31 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %30, i32 0, i32 4
  %32 = call i32 @list_del(i32* %31)
  %33 = load %struct.se_device*, %struct.se_device** %5, align 8
  %34 = getelementptr inbounds %struct.se_device, %struct.se_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %38 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @rcu_assign_pointer(i64 %39, i32* null)
  %41 = load %struct.se_device*, %struct.se_device** %5, align 8
  %42 = getelementptr inbounds %struct.se_device, %struct.se_device* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock(i32* %42)
  br label %44

44:                                               ; preds = %24, %2
  %45 = load %struct.se_device*, %struct.se_device** %5, align 8
  %46 = getelementptr inbounds %struct.se_device, %struct.se_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HBA_FLAGS_INTERNAL_USE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %55 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %54, i32 0, i32 2
  %56 = call i32 @hlist_del_rcu(i32* %55)
  br label %57

57:                                               ; preds = %53, %44
  %58 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %59 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  %61 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.se_lun*, %struct.se_lun** %4, align 8
  %64 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %63, i32 0, i32 1
  %65 = call i32 @percpu_ref_exit(i32* %64)
  ret void
}

declare dso_local %struct.se_device* @rcu_dereference_raw(i64) #1

declare dso_local i32 @core_clear_lun_from_tpg(%struct.se_lun*, %struct.se_portal_group*) #1

declare dso_local i32 @transport_clear_lun_ref(%struct.se_lun*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @target_detach_tg_pt_gp(%struct.se_lun*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i64, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @percpu_ref_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
