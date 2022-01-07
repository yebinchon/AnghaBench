; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_ethsw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { %struct.TYPE_3__, %struct.device }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.ethsw_core = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.dpsw_stp_cfg = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"dpsw_open err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"dpsw_get_attributes err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"dpsw_get_api_version err %d\0A\00", align 1
@DPSW_MIN_VER_MAJOR = common dso_local global i64 0, align 8
@DPSW_MIN_VER_MINOR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"DPSW version %d:%d not supported. Use %d.%d or greater.\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"dpsw_reset err %d\0A\00", align 1
@DPSW_FDB_LEARNING_MODE_HW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"dpsw_fdb_set_learning_mode err %d\0A\00", align 1
@DEFAULT_VLAN_ID = common dso_local global i32 0, align 4
@DPSW_STP_STATE_FORWARDING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"dpsw_if_set_stp err %d for port %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"dpsw_if_set_broadcast err %d for port %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%s_ordered\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"ethsw\00", align 1
@ethsw_owq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @ethsw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethsw_init(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ethsw_core*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dpsw_stp_cfg, align 4
  %10 = alloca i32, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  %11 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.ethsw_core* @dev_get_drvdata(%struct.device* %13)
  store %struct.ethsw_core* %14, %struct.ethsw_core** %5, align 8
  %15 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %16 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %20 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %22 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %25 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %28 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %27, i32 0, i32 0
  %29 = call i32 @dpsw_open(i32 %23, i32 0, i32 %26, i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %2, align 4
  br label %190

37:                                               ; preds = %1
  %38 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %39 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %42 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %45 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %44, i32 0, i32 2
  %46 = call i32 @dpsw_get_attributes(i32 %40, i32 0, i32 %43, %struct.TYPE_4__* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %181

53:                                               ; preds = %37
  %54 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %55 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dpsw_get_api_version(i32 %56, i32 0, i64* %6, i64* %7)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %181

64:                                               ; preds = %53
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @DPSW_MIN_VER_MAJOR, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @DPSW_MIN_VER_MAJOR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @DPSW_MIN_VER_MINOR, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72, %64
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load i64, i64* %6, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @DPSW_MIN_VER_MAJOR, align 8
  %82 = load i64, i64* @DPSW_MIN_VER_MINOR, align 8
  %83 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %79, i64 %80, i64 %81, i64 %82)
  %84 = load i32, i32* @ENOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %10, align 4
  br label %181

86:                                               ; preds = %72, %68
  %87 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %88 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %91 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dpsw_reset(i32 %89, i32 0, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %181

100:                                              ; preds = %86
  %101 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %102 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %105 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @DPSW_FDB_LEARNING_MODE_HW, align 4
  %108 = call i32 @dpsw_fdb_set_learning_mode(i32 %103, i32 0, i32 %106, i32 0, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %100
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  br label %181

115:                                              ; preds = %100
  %116 = load i32, i32* @DEFAULT_VLAN_ID, align 4
  %117 = getelementptr inbounds %struct.dpsw_stp_cfg, %struct.dpsw_stp_cfg* %9, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* @DPSW_STP_STATE_FORWARDING, align 4
  %119 = getelementptr inbounds %struct.dpsw_stp_cfg, %struct.dpsw_stp_cfg* %9, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  store i64 0, i64* %8, align 8
  br label %120

120:                                              ; preds = %160, %115
  %121 = load i64, i64* %8, align 8
  %122 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %123 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %121, %125
  br i1 %126, label %127, label %163

127:                                              ; preds = %120
  %128 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %129 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %132 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @dpsw_if_set_stp(i32 %130, i32 0, i32 %133, i64 %134, %struct.dpsw_stp_cfg* %9)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %127
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load i64, i64* %8, align 8
  %142 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %140, i64 %141)
  br label %181

143:                                              ; preds = %127
  %144 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %145 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %148 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = call i32 @dpsw_if_set_broadcast(i32 %146, i32 0, i32 %149, i64 %150, i32 1)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %143
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i64, i64* %8, align 8
  %158 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %155, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %156, i64 %157)
  br label %181

159:                                              ; preds = %143
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %8, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %8, align 8
  br label %120

163:                                              ; preds = %120
  %164 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %165 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i32 %165, i32* @ethsw_owq, align 4
  %166 = load i32, i32* @ethsw_owq, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* @ENOMEM, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %10, align 4
  br label %181

171:                                              ; preds = %163
  %172 = load %struct.device*, %struct.device** %4, align 8
  %173 = call i32 @ethsw_register_notifier(%struct.device* %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %178

177:                                              ; preds = %171
  store i32 0, i32* %2, align 4
  br label %190

178:                                              ; preds = %176
  %179 = load i32, i32* @ethsw_owq, align 4
  %180 = call i32 @destroy_workqueue(i32 %179)
  br label %181

181:                                              ; preds = %178, %168, %154, %138, %111, %96, %76, %60, %49
  %182 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %183 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.ethsw_core*, %struct.ethsw_core** %5, align 8
  %186 = getelementptr inbounds %struct.ethsw_core, %struct.ethsw_core* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @dpsw_close(i32 %184, i32 0, i32 %187)
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %181, %177, %32
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.ethsw_core* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dpsw_open(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @dpsw_get_attributes(i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dpsw_get_api_version(i32, i32, i64*, i64*) #1

declare dso_local i32 @dpsw_reset(i32, i32, i32) #1

declare dso_local i32 @dpsw_fdb_set_learning_mode(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dpsw_if_set_stp(i32, i32, i32, i64, %struct.dpsw_stp_cfg*) #1

declare dso_local i32 @dpsw_if_set_broadcast(i32, i32, i32, i64, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32, i8*) #1

declare dso_local i32 @ethsw_register_notifier(%struct.device*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @dpsw_close(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
