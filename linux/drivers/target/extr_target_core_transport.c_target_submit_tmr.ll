; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_submit_tmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_submit_tmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.se_session = type { %struct.se_portal_group* }
%struct.se_portal_group = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@TCM_SIMPLE_TAG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TMR_ABORT_TASK = common dso_local global i8 0, align 1
@TARGET_SCF_ACK_KREF = common dso_local global i32 0, align 4
@TARGET_SCF_LOOKUP_LUN_FROM_TAG = common dso_local global i32 0, align 4
@target_complete_tmr_failure = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_submit_tmr(%struct.se_cmd* %0, %struct.se_session* %1, i8* %2, i32 %3, i8* %4, i8 zeroext %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.se_cmd*, align 8
  %12 = alloca %struct.se_session*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.se_portal_group*, align 8
  %21 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %11, align 8
  store %struct.se_session* %1, %struct.se_session** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i8 %5, i8* %16, align 1
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = load %struct.se_session*, %struct.se_session** %12, align 8
  %23 = getelementptr inbounds %struct.se_session, %struct.se_session* %22, i32 0, i32 0
  %24 = load %struct.se_portal_group*, %struct.se_portal_group** %23, align 8
  store %struct.se_portal_group* %24, %struct.se_portal_group** %20, align 8
  %25 = load %struct.se_portal_group*, %struct.se_portal_group** %20, align 8
  %26 = icmp ne %struct.se_portal_group* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.se_cmd*, %struct.se_cmd** %11, align 8
  %31 = load %struct.se_portal_group*, %struct.se_portal_group** %20, align 8
  %32 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.se_session*, %struct.se_session** %12, align 8
  %35 = load i32, i32* @DMA_NONE, align 4
  %36 = load i32, i32* @TCM_SIMPLE_TAG, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @transport_init_se_cmd(%struct.se_cmd* %30, i32 %33, %struct.se_session* %34, i32 0, i32 %35, i32 %36, i8* %37)
  %39 = load %struct.se_cmd*, %struct.se_cmd** %11, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load i8, i8* %16, align 1
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @core_tmr_alloc_req(%struct.se_cmd* %39, i8* %40, i8 zeroext %41, i32 %42)
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %21, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %9
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %111

49:                                               ; preds = %9
  %50 = load i8, i8* %16, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @TMR_ABORT_TASK, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* %18, align 4
  %57 = load %struct.se_cmd*, %struct.se_cmd** %11, align 8
  %58 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.se_cmd*, %struct.se_cmd** %11, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* @TARGET_SCF_ACK_KREF, align 4
  %65 = and i32 %63, %64
  %66 = call i32 @target_get_sess_cmd(%struct.se_cmd* %62, i32 %65)
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %21, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.se_cmd*, %struct.se_cmd** %11, align 8
  %71 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = call i32 @core_tmr_release_req(%struct.TYPE_2__* %72)
  %74 = load i32, i32* %21, align 4
  store i32 %74, i32* %10, align 4
  br label %111

75:                                               ; preds = %61
  %76 = load i8, i8* %16, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @TMR_ABORT_TASK, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* @TARGET_SCF_LOOKUP_LUN_FROM_TAG, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.se_session*, %struct.se_session** %12, align 8
  %88 = load i32, i32* %18, align 4
  %89 = call i32 @target_lookup_lun_from_tag(%struct.se_session* %87, i32 %88, i32* %14)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  br label %103

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %81, %75
  %94 = load %struct.se_cmd*, %struct.se_cmd** %11, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @transport_lookup_tmr_lun(%struct.se_cmd* %94, i32 %95)
  store i32 %96, i32* %21, align 4
  %97 = load i32, i32* %21, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %103

100:                                              ; preds = %93
  %101 = load %struct.se_cmd*, %struct.se_cmd** %11, align 8
  %102 = call i32 @transport_generic_handle_tmr(%struct.se_cmd* %101)
  store i32 0, i32* %10, align 4
  br label %111

103:                                              ; preds = %99, %91
  %104 = load %struct.se_cmd*, %struct.se_cmd** %11, align 8
  %105 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %104, i32 0, i32 0
  %106 = load i32, i32* @target_complete_tmr_failure, align 4
  %107 = call i32 @INIT_WORK(i32* %105, i32 %106)
  %108 = load %struct.se_cmd*, %struct.se_cmd** %11, align 8
  %109 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %108, i32 0, i32 0
  %110 = call i32 @schedule_work(i32* %109)
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %103, %100, %69, %46
  %112 = load i32, i32* %10, align 4
  ret i32 %112
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @transport_init_se_cmd(%struct.se_cmd*, i32, %struct.se_session*, i32, i32, i32, i8*) #1

declare dso_local i32 @core_tmr_alloc_req(%struct.se_cmd*, i8*, i8 zeroext, i32) #1

declare dso_local i32 @target_get_sess_cmd(%struct.se_cmd*, i32) #1

declare dso_local i32 @core_tmr_release_req(%struct.TYPE_2__*) #1

declare dso_local i32 @target_lookup_lun_from_tag(%struct.se_session*, i32, i32*) #1

declare dso_local i32 @transport_lookup_tmr_lun(%struct.se_cmd*, i32) #1

declare dso_local i32 @transport_generic_handle_tmr(%struct.se_cmd*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
