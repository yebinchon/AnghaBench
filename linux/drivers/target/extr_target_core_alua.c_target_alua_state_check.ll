; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_target_alua_state_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_alua.c_target_alua_state_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i8*, %struct.se_lun*, %struct.se_device* }
%struct.se_lun = type { i32, %struct.t10_alua_tg_pt_gp*, i32 }
%struct.t10_alua_tg_pt_gp = type { i32, i32 }
%struct.se_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@HBA_FLAGS_INTERNAL_USE = common dso_local global i32 0, align 4
@TRANSPORT_FLAG_PASSTHROUGH_ALUA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"ALUA: Got secondary offline status for local target port\0A\00", align 1
@ASCQ_04H_ALUA_OFFLINE = common dso_local global i32 0, align 4
@TCM_CHECK_CONDITION_NOT_READY = common dso_local global i32 0, align 4
@ALUA_ACCESS_STATE_ACTIVE_OPTIMIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unknown ALUA access state: 0x%02x\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_alua_state_check(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_lun*, align 8
  %7 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 2
  %12 = load %struct.se_device*, %struct.se_device** %11, align 8
  store %struct.se_device* %12, %struct.se_device** %4, align 8
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  %16 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %16, i32 0, i32 1
  %18 = load %struct.se_lun*, %struct.se_lun** %17, align 8
  store %struct.se_lun* %18, %struct.se_lun** %6, align 8
  %19 = load %struct.se_device*, %struct.se_device** %4, align 8
  %20 = getelementptr inbounds %struct.se_device, %struct.se_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HBA_FLAGS_INTERNAL_USE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %120

28:                                               ; preds = %1
  %29 = load %struct.se_device*, %struct.se_device** %4, align 8
  %30 = getelementptr inbounds %struct.se_device, %struct.se_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TRANSPORT_FLAG_PASSTHROUGH_ALUA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %120

38:                                               ; preds = %28
  %39 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %40 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %39, i32 0, i32 2
  %41 = call i64 @atomic_read(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %46 = load i32, i32* @ASCQ_04H_ALUA_OFFLINE, align 4
  %47 = call i32 @set_ascq(%struct.se_cmd* %45, i32 %46)
  %48 = load i32, i32* @TCM_CHECK_CONDITION_NOT_READY, align 4
  store i32 %48, i32* %2, align 4
  br label %120

49:                                               ; preds = %38
  %50 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %51 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %50, i32 0, i32 1
  %52 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %51, align 8
  %53 = icmp ne %struct.t10_alua_tg_pt_gp* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %120

55:                                               ; preds = %49
  %56 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %57 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %56, i32 0, i32 0
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %60 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %59, i32 0, i32 1
  %61 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %60, align 8
  store %struct.t10_alua_tg_pt_gp* %61, %struct.t10_alua_tg_pt_gp** %7, align 8
  %62 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %7, align 8
  %63 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %7, align 8
  %66 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  %68 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %69 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @ALUA_ACCESS_STATE_ACTIVE_OPTIMIZED, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %120

75:                                               ; preds = %55
  %76 = load i32, i32* %8, align 4
  switch i32 %76, label %115 [
    i32 133, label %77
    i32 130, label %82
    i32 128, label %90
    i32 129, label %98
    i32 132, label %106
    i32 131, label %114
  ]

77:                                               ; preds = %75
  %78 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @core_alua_state_nonoptimized(%struct.se_cmd* %78, i8* %79, i32 %80)
  br label %119

82:                                               ; preds = %75
  %83 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @core_alua_state_standby(%struct.se_cmd* %83, i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @TCM_CHECK_CONDITION_NOT_READY, align 4
  store i32 %88, i32* %2, align 4
  br label %120

89:                                               ; preds = %82
  br label %119

90:                                               ; preds = %75
  %91 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @core_alua_state_unavailable(%struct.se_cmd* %91, i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @TCM_CHECK_CONDITION_NOT_READY, align 4
  store i32 %96, i32* %2, align 4
  br label %120

97:                                               ; preds = %90
  br label %119

98:                                               ; preds = %75
  %99 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 @core_alua_state_transition(%struct.se_cmd* %99, i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @TCM_CHECK_CONDITION_NOT_READY, align 4
  store i32 %104, i32* %2, align 4
  br label %120

105:                                              ; preds = %98
  br label %119

106:                                              ; preds = %75
  %107 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %108 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %7, align 8
  %109 = call i32 @core_alua_state_lba_dependent(%struct.se_cmd* %107, %struct.t10_alua_tg_pt_gp* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @TCM_CHECK_CONDITION_NOT_READY, align 4
  store i32 %112, i32* %2, align 4
  br label %120

113:                                              ; preds = %106
  br label %119

114:                                              ; preds = %75
  br label %115

115:                                              ; preds = %75, %114
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %118, i32* %2, align 4
  br label %120

119:                                              ; preds = %113, %105, %97, %89, %77
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %115, %111, %103, %95, %87, %74, %54, %43, %37, %27
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @set_ascq(%struct.se_cmd*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @core_alua_state_nonoptimized(%struct.se_cmd*, i8*, i32) #1

declare dso_local i32 @core_alua_state_standby(%struct.se_cmd*, i8*) #1

declare dso_local i32 @core_alua_state_unavailable(%struct.se_cmd*, i8*) #1

declare dso_local i32 @core_alua_state_transition(%struct.se_cmd*, i8*) #1

declare dso_local i32 @core_alua_state_lba_dependent(%struct.se_cmd*, %struct.t10_alua_tg_pt_gp*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
