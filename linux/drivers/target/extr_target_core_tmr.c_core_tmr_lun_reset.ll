; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tmr.c_core_tmr_lun_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tmr.c_core_tmr_lun_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32, %struct.TYPE_8__*, i32, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.se_tmr_req = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.se_session* }
%struct.se_session = type { %struct.se_portal_group*, %struct.se_node_acl* }
%struct.se_portal_group = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.se_node_acl = type { i32 }
%struct.list_head = type { i32 }
%struct.se_cmd = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"LUN_RESET: TMR caller fabric: %s initiator port %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"LUN_RESET: %s starting for [%s], tas: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Preempt\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"TMR\00", align 1
@DRF_SPC2_RESERVATIONS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"LUN_RESET: SCSI-2 Released reservation\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"LUN_RESET: %s for [%s] Complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_tmr_lun_reset(%struct.se_device* %0, %struct.se_tmr_req* %1, %struct.list_head* %2, %struct.se_cmd* %3) #0 {
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.se_tmr_req*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.se_cmd*, align 8
  %9 = alloca %struct.se_node_acl*, align 8
  %10 = alloca %struct.se_portal_group*, align 8
  %11 = alloca %struct.se_session*, align 8
  %12 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store %struct.se_tmr_req* %1, %struct.se_tmr_req** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store %struct.se_cmd* %3, %struct.se_cmd** %8, align 8
  store %struct.se_node_acl* null, %struct.se_node_acl** %9, align 8
  store %struct.se_portal_group* null, %struct.se_portal_group** %10, align 8
  store %struct.se_session* null, %struct.se_session** %11, align 8
  %13 = load %struct.se_device*, %struct.se_device** %5, align 8
  %14 = getelementptr inbounds %struct.se_device, %struct.se_device* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %12, align 4
  %17 = load %struct.se_tmr_req*, %struct.se_tmr_req** %6, align 8
  %18 = icmp ne %struct.se_tmr_req* %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %4
  %20 = load %struct.se_tmr_req*, %struct.se_tmr_req** %6, align 8
  %21 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %59

24:                                               ; preds = %19
  %25 = load %struct.se_tmr_req*, %struct.se_tmr_req** %6, align 8
  %26 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.se_session*, %struct.se_session** %28, align 8
  %30 = icmp ne %struct.se_session* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %24
  %32 = load %struct.se_tmr_req*, %struct.se_tmr_req** %6, align 8
  %33 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.se_session*, %struct.se_session** %35, align 8
  store %struct.se_session* %36, %struct.se_session** %11, align 8
  %37 = load %struct.se_session*, %struct.se_session** %11, align 8
  %38 = getelementptr inbounds %struct.se_session, %struct.se_session* %37, i32 0, i32 1
  %39 = load %struct.se_node_acl*, %struct.se_node_acl** %38, align 8
  store %struct.se_node_acl* %39, %struct.se_node_acl** %9, align 8
  %40 = load %struct.se_session*, %struct.se_session** %11, align 8
  %41 = getelementptr inbounds %struct.se_session, %struct.se_session* %40, i32 0, i32 0
  %42 = load %struct.se_portal_group*, %struct.se_portal_group** %41, align 8
  store %struct.se_portal_group* %42, %struct.se_portal_group** %10, align 8
  %43 = load %struct.se_node_acl*, %struct.se_node_acl** %9, align 8
  %44 = icmp ne %struct.se_node_acl* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %31
  %46 = load %struct.se_portal_group*, %struct.se_portal_group** %10, align 8
  %47 = icmp ne %struct.se_portal_group* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.se_portal_group*, %struct.se_portal_group** %10, align 8
  %50 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.se_node_acl*, %struct.se_node_acl** %9, align 8
  %55 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %53, i32 %56)
  br label %58

58:                                               ; preds = %48, %45, %31
  br label %59

59:                                               ; preds = %58, %24, %19, %4
  %60 = load %struct.list_head*, %struct.list_head** %7, align 8
  %61 = icmp ne %struct.list_head* %60, null
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %64 = load %struct.se_device*, %struct.se_device** %5, align 8
  %65 = getelementptr inbounds %struct.se_device, %struct.se_device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %68, i32 %69)
  %71 = load %struct.se_device*, %struct.se_device** %5, align 8
  %72 = load %struct.se_tmr_req*, %struct.se_tmr_req** %6, align 8
  %73 = load %struct.list_head*, %struct.list_head** %7, align 8
  %74 = call i32 @core_tmr_drain_tmr_list(%struct.se_device* %71, %struct.se_tmr_req* %72, %struct.list_head* %73)
  %75 = load %struct.se_device*, %struct.se_device** %5, align 8
  %76 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %77 = load %struct.se_session*, %struct.se_session** %11, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.list_head*, %struct.list_head** %7, align 8
  %80 = call i32 @core_tmr_drain_state_list(%struct.se_device* %75, %struct.se_cmd* %76, %struct.se_session* %77, i32 %78, %struct.list_head* %79)
  %81 = load %struct.list_head*, %struct.list_head** %7, align 8
  %82 = icmp ne %struct.list_head* %81, null
  br i1 %82, label %106, label %83

83:                                               ; preds = %59
  %84 = load %struct.se_device*, %struct.se_device** %5, align 8
  %85 = getelementptr inbounds %struct.se_device, %struct.se_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %83
  %91 = load %struct.se_device*, %struct.se_device** %5, align 8
  %92 = getelementptr inbounds %struct.se_device, %struct.se_device* %91, i32 0, i32 3
  %93 = call i32 @spin_lock(i32* %92)
  %94 = load %struct.se_device*, %struct.se_device** %5, align 8
  %95 = getelementptr inbounds %struct.se_device, %struct.se_device* %94, i32 0, i32 4
  store i32* null, i32** %95, align 8
  %96 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.se_device*, %struct.se_device** %5, align 8
  %99 = getelementptr inbounds %struct.se_device, %struct.se_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.se_device*, %struct.se_device** %5, align 8
  %103 = getelementptr inbounds %struct.se_device, %struct.se_device* %102, i32 0, i32 3
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %106

106:                                              ; preds = %90, %83, %59
  %107 = load %struct.se_device*, %struct.se_device** %5, align 8
  %108 = getelementptr inbounds %struct.se_device, %struct.se_device* %107, i32 0, i32 2
  %109 = call i32 @atomic_long_inc(i32* %108)
  %110 = load %struct.list_head*, %struct.list_head** %7, align 8
  %111 = icmp ne %struct.list_head* %110, null
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %114 = load %struct.se_device*, %struct.se_device** %5, align 8
  %115 = getelementptr inbounds %struct.se_device, %struct.se_device* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %113, i32 %118)
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @core_tmr_drain_tmr_list(%struct.se_device*, %struct.se_tmr_req*, %struct.list_head*) #1

declare dso_local i32 @core_tmr_drain_state_list(%struct.se_device*, %struct.se_cmd*, %struct.se_session*, i32, %struct.list_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
