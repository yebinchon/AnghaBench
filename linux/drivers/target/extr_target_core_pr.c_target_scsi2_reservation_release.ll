; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_target_scsi2_reservation_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_target_scsi2_reservation_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.TYPE_7__*, %struct.se_session*, %struct.se_device* }
%struct.TYPE_7__ = type { i32 }
%struct.se_session = type { i64, %struct.TYPE_8__*, %struct.se_portal_group* }
%struct.TYPE_8__ = type { i32 }
%struct.se_portal_group = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.se_device = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }

@TCM_RESERVATION_CONFLICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"SCSI-2 Released reservation for %s LUN: %llu -> MAPPED LUN: %llu for %s\0A\00", align 1
@GOOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_scsi2_reservation_release(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.se_session*, align 8
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 3
  %10 = load %struct.se_device*, %struct.se_device** %9, align 8
  store %struct.se_device* %10, %struct.se_device** %4, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 2
  %13 = load %struct.se_session*, %struct.se_session** %12, align 8
  store %struct.se_session* %13, %struct.se_session** %5, align 8
  %14 = load %struct.se_session*, %struct.se_session** %5, align 8
  %15 = icmp ne %struct.se_session* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.se_session*, %struct.se_session** %5, align 8
  %18 = getelementptr inbounds %struct.se_session, %struct.se_session* %17, i32 0, i32 2
  %19 = load %struct.se_portal_group*, %struct.se_portal_group** %18, align 8
  %20 = icmp ne %struct.se_portal_group* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  br label %94

22:                                               ; preds = %16
  %23 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %24 = call i32 @target_check_scsi2_reservation_conflict(%struct.se_cmd* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %94

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @TCM_RESERVATION_CONFLICT, align 4
  store i32 %32, i32* %2, align 4
  br label %98

33:                                               ; preds = %28
  %34 = load %struct.se_device*, %struct.se_device** %4, align 8
  %35 = getelementptr inbounds %struct.se_device, %struct.se_device* %34, i32 0, i32 1
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.se_device*, %struct.se_device** %4, align 8
  %38 = getelementptr inbounds %struct.se_device, %struct.se_device* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.se_session*, %struct.se_session** %5, align 8
  %43 = icmp ne %struct.se_session* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %33
  br label %90

45:                                               ; preds = %41
  %46 = load %struct.se_device*, %struct.se_device** %4, align 8
  %47 = getelementptr inbounds %struct.se_device, %struct.se_device* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load %struct.se_session*, %struct.se_session** %5, align 8
  %52 = getelementptr inbounds %struct.se_session, %struct.se_session* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = icmp ne %struct.TYPE_8__* %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %90

56:                                               ; preds = %45
  %57 = load %struct.se_device*, %struct.se_device** %4, align 8
  %58 = getelementptr inbounds %struct.se_device, %struct.se_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.se_session*, %struct.se_session** %5, align 8
  %61 = getelementptr inbounds %struct.se_session, %struct.se_session* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %90

65:                                               ; preds = %56
  %66 = load %struct.se_device*, %struct.se_device** %4, align 8
  %67 = call i32 @target_release_reservation(%struct.se_device* %66)
  %68 = load %struct.se_session*, %struct.se_session** %5, align 8
  %69 = getelementptr inbounds %struct.se_session, %struct.se_session* %68, i32 0, i32 2
  %70 = load %struct.se_portal_group*, %struct.se_portal_group** %69, align 8
  store %struct.se_portal_group* %70, %struct.se_portal_group** %6, align 8
  %71 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %72 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %77 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %82 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.se_session*, %struct.se_session** %5, align 8
  %85 = getelementptr inbounds %struct.se_session, %struct.se_session* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %80, i32 %83, i32 %88)
  br label %90

90:                                               ; preds = %65, %64, %55, %44
  %91 = load %struct.se_device*, %struct.se_device** %4, align 8
  %92 = getelementptr inbounds %struct.se_device, %struct.se_device* %91, i32 0, i32 1
  %93 = call i32 @spin_unlock(i32* %92)
  br label %94

94:                                               ; preds = %90, %27, %21
  %95 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %96 = load i32, i32* @GOOD, align 4
  %97 = call i32 @target_complete_cmd(%struct.se_cmd* %95, i32 %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %31
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @target_check_scsi2_reservation_conflict(%struct.se_cmd*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @target_release_reservation(%struct.se_device*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
