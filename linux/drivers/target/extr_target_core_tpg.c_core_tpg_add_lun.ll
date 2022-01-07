; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_add_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_add_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32, i32 }
%struct.se_lun = type { i32, i32, i32, i32, i32, i32 }
%struct.se_device = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@core_tpg_lun_ref_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TRANSPORT_FLAG_PASSTHROUGH_ALUA = common dso_local global i32 0, align 4
@HBA_FLAGS_INTERNAL_USE = common dso_local global i32 0, align 4
@DF_READ_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_tpg_add_lun(%struct.se_portal_group* %0, %struct.se_lun* %1, i32 %2, %struct.se_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca %struct.se_lun*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.se_device*, align 8
  %10 = alloca i32, align 4
  store %struct.se_portal_group* %0, %struct.se_portal_group** %6, align 8
  store %struct.se_lun* %1, %struct.se_lun** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.se_device* %3, %struct.se_device** %9, align 8
  %11 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %12 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %11, i32 0, i32 1
  %13 = load i32, i32* @core_tpg_lun_ref_release, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @percpu_ref_init(i32* %12, i32 %13, i32 0, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %116

19:                                               ; preds = %4
  %20 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %21 = load %struct.se_device*, %struct.se_device** %9, align 8
  %22 = call i32 @core_alloc_rtpi(%struct.se_lun* %20, %struct.se_device* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %112

26:                                               ; preds = %19
  %27 = load %struct.se_device*, %struct.se_device** %9, align 8
  %28 = getelementptr inbounds %struct.se_device, %struct.se_device* %27, i32 0, i32 7
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TRANSPORT_FLAG_PASSTHROUGH_ALUA, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %26
  %36 = load %struct.se_device*, %struct.se_device** %9, align 8
  %37 = getelementptr inbounds %struct.se_device, %struct.se_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HBA_FLAGS_INTERNAL_USE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %35
  %45 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %46 = load %struct.se_device*, %struct.se_device** %9, align 8
  %47 = getelementptr inbounds %struct.se_device, %struct.se_device* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @target_attach_tg_pt_gp(%struct.se_lun* %45, i32 %49)
  br label %51

51:                                               ; preds = %44, %35, %26
  %52 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %53 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.se_device*, %struct.se_device** %9, align 8
  %56 = getelementptr inbounds %struct.se_device, %struct.se_device* %55, i32 0, i32 2
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.se_device*, %struct.se_device** %9, align 8
  %59 = getelementptr inbounds %struct.se_device, %struct.se_device* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %62 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %64 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.se_device*, %struct.se_device** %9, align 8
  %67 = call i32 @rcu_assign_pointer(i32 %65, %struct.se_device* %66)
  %68 = load %struct.se_device*, %struct.se_device** %9, align 8
  %69 = getelementptr inbounds %struct.se_device, %struct.se_device* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %73 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %72, i32 0, i32 3
  %74 = load %struct.se_device*, %struct.se_device** %9, align 8
  %75 = getelementptr inbounds %struct.se_device, %struct.se_device* %74, i32 0, i32 3
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  %77 = load %struct.se_device*, %struct.se_device** %9, align 8
  %78 = getelementptr inbounds %struct.se_device, %struct.se_device* %77, i32 0, i32 2
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load %struct.se_device*, %struct.se_device** %9, align 8
  %81 = getelementptr inbounds %struct.se_device, %struct.se_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @DF_READ_ONLY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %51
  %87 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %88 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  br label %93

89:                                               ; preds = %51
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %92 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %86
  %94 = load %struct.se_device*, %struct.se_device** %9, align 8
  %95 = getelementptr inbounds %struct.se_device, %struct.se_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @HBA_FLAGS_INTERNAL_USE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %93
  %103 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %104 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %103, i32 0, i32 2
  %105 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %106 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %105, i32 0, i32 1
  %107 = call i32 @hlist_add_head_rcu(i32* %104, i32* %106)
  br label %108

108:                                              ; preds = %102, %93
  %109 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %110 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  store i32 0, i32* %5, align 4
  br label %118

112:                                              ; preds = %25
  %113 = load %struct.se_lun*, %struct.se_lun** %7, align 8
  %114 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %113, i32 0, i32 1
  %115 = call i32 @percpu_ref_exit(i32* %114)
  br label %116

116:                                              ; preds = %112, %18
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %108
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @percpu_ref_init(i32*, i32, i32, i32) #1

declare dso_local i32 @core_alloc_rtpi(%struct.se_lun*, %struct.se_device*) #1

declare dso_local i32 @target_attach_tg_pt_gp(%struct.se_lun*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.se_device*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @percpu_ref_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
