; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_dump_service_use_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_dump_service_use_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_state = type { i32, %struct.vchiq_service** }
%struct.vchiq_service = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vchiq_arm_state = type { i32, i32, i32, i32, i32 }
%struct.service_data_struct = type { i64, i32, i32 }

@vchiq_dump_service_use_state.nz = internal global i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [23 x i8] c"<-- preventing suspend\00", align 1
@MAX_SERVICES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VCHIQ_SRVSTATE_FREE = common dso_local global i64 0, align 8
@vchiq_susp_log_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"-- Videcore suspend state: %s --\00", align 1
@suspend_state_names = common dso_local global i32* null, align 8
@VC_SUSPEND_NUM_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"-- Videcore resume state: %s --\00", align 1
@resume_state_names = common dso_local global i32* null, align 8
@VC_RESUME_NUM_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [93 x i8] c"Too many active services (%d).  Only dumping up to first %d services with non-zero use-count\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"----- %c%c%c%c:%d service count %d %s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"----- VCHIQ use count count %d\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"--- Overall vchiq instance use count %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_dump_service_use_state(%struct.vchiq_state* %0) #0 {
  %2 = alloca %struct.vchiq_state*, align 8
  %3 = alloca %struct.vchiq_arm_state*, align 8
  %4 = alloca %struct.service_data_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vchiq_service*, align 8
  store %struct.vchiq_state* %0, %struct.vchiq_state** %2, align 8
  %14 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %15 = call %struct.vchiq_arm_state* @vchiq_platform_get_arm_state(%struct.vchiq_state* %14)
  store %struct.vchiq_arm_state* %15, %struct.vchiq_arm_state** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %17 = icmp ne %struct.vchiq_arm_state* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %199

19:                                               ; preds = %1
  %20 = load i32, i32* @MAX_SERVICES, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.service_data_struct* @kmalloc_array(i32 %20, i32 16, i32 %21)
  store %struct.service_data_struct* %22, %struct.service_data_struct** %4, align 8
  %23 = load %struct.service_data_struct*, %struct.service_data_struct** %4, align 8
  %24 = icmp ne %struct.service_data_struct* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %199

26:                                               ; preds = %19
  %27 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %28 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %27, i32 0, i32 4
  %29 = call i32 @read_lock_bh(i32* %28)
  %30 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %31 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %34 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %37 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %40 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %43 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @MAX_SERVICES, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %26
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %114, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %117

54:                                               ; preds = %50
  %55 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %56 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %55, i32 0, i32 1
  %57 = load %struct.vchiq_service**, %struct.vchiq_service*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.vchiq_service*, %struct.vchiq_service** %57, i64 %59
  %61 = load %struct.vchiq_service*, %struct.vchiq_service** %60, align 8
  store %struct.vchiq_service* %61, %struct.vchiq_service** %13, align 8
  %62 = load %struct.vchiq_service*, %struct.vchiq_service** %13, align 8
  %63 = icmp ne %struct.vchiq_service* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  br label %114

65:                                               ; preds = %54
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.vchiq_service*, %struct.vchiq_service** %13, align 8
  %70 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %114

74:                                               ; preds = %68, %65
  %75 = load %struct.vchiq_service*, %struct.vchiq_service** %13, align 8
  %76 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @VCHIQ_SRVSTATE_FREE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %114

81:                                               ; preds = %74
  %82 = load %struct.vchiq_service*, %struct.vchiq_service** %13, align 8
  %83 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.service_data_struct*, %struct.service_data_struct** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %86, i64 %88
  %90 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %89, i32 0, i32 2
  store i32 %85, i32* %90, align 4
  %91 = load %struct.vchiq_service*, %struct.vchiq_service** %13, align 8
  %92 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.service_data_struct*, %struct.service_data_struct** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %94, i64 %96
  %98 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %97, i32 0, i32 1
  store i32 %93, i32* %98, align 8
  %99 = load %struct.vchiq_service*, %struct.vchiq_service** %13, align 8
  %100 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.service_data_struct*, %struct.service_data_struct** %4, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %102, i64 %104
  %106 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %105, i32 0, i32 0
  store i64 %101, i64* %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @MAX_SERVICES, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %81
  br label %117

113:                                              ; preds = %81
  br label %114

114:                                              ; preds = %113, %80, %73, %64
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %50

117:                                              ; preds = %112, %50
  %118 = load %struct.vchiq_arm_state*, %struct.vchiq_arm_state** %3, align 8
  %119 = getelementptr inbounds %struct.vchiq_arm_state, %struct.vchiq_arm_state* %118, i32 0, i32 4
  %120 = call i32 @read_unlock_bh(i32* %119)
  %121 = load i32, i32* @vchiq_susp_log_level, align 4
  %122 = load i32*, i32** @suspend_state_names, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @VC_SUSPEND_NUM_OFFSET, align 4
  %125 = add i32 %123, %124
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i8*, i32, ...) @vchiq_log_warning(i32 %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @vchiq_susp_log_level, align 4
  %131 = load i32*, i32** @resume_state_names, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @VC_RESUME_NUM_OFFSET, align 4
  %134 = add i32 %132, %133
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, i32, ...) @vchiq_log_warning(i32 %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %117
  %142 = load i32, i32* @vchiq_susp_log_level, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 (i32, i8*, i32, ...) @vchiq_log_warning(i32 %142, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %117
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %185, %146
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %188

151:                                              ; preds = %147
  %152 = load i32, i32* @vchiq_susp_log_level, align 4
  %153 = load %struct.service_data_struct*, %struct.service_data_struct** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %153, i64 %155
  %157 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @VCHIQ_FOURCC_AS_4CHARS(i32 %158)
  %160 = load %struct.service_data_struct*, %struct.service_data_struct** %4, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %160, i64 %162
  %164 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.service_data_struct*, %struct.service_data_struct** %4, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %166, i64 %168
  %170 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.service_data_struct*, %struct.service_data_struct** %4, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %172, i64 %174
  %176 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %151
  %180 = load i8*, i8** @vchiq_dump_service_use_state.nz, align 8
  br label %182

181:                                              ; preds = %151
  br label %182

182:                                              ; preds = %181, %179
  %183 = phi i8* [ %180, %179 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %181 ]
  %184 = call i32 (i32, i8*, i32, ...) @vchiq_log_warning(i32 %152, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %159, i32 %165, i64 %171, i8* %183)
  br label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %5, align 4
  br label %147

188:                                              ; preds = %147
  %189 = load i32, i32* @vchiq_susp_log_level, align 4
  %190 = load i32, i32* %10, align 4
  %191 = call i32 (i32, i8*, i32, ...) @vchiq_log_warning(i32 %189, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* @vchiq_susp_log_level, align 4
  %193 = load i32, i32* %11, align 4
  %194 = call i32 (i32, i8*, i32, ...) @vchiq_log_warning(i32 %192, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %193)
  %195 = load %struct.service_data_struct*, %struct.service_data_struct** %4, align 8
  %196 = call i32 @kfree(%struct.service_data_struct* %195)
  %197 = load %struct.vchiq_state*, %struct.vchiq_state** %2, align 8
  %198 = call i32 @vchiq_dump_platform_use_state(%struct.vchiq_state* %197)
  br label %199

199:                                              ; preds = %188, %25, %18
  ret void
}

declare dso_local %struct.vchiq_arm_state* @vchiq_platform_get_arm_state(%struct.vchiq_state*) #1

declare dso_local %struct.service_data_struct* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @vchiq_log_warning(i32, i8*, i32, ...) #1

declare dso_local i32 @VCHIQ_FOURCC_AS_4CHARS(i32) #1

declare dso_local i32 @kfree(%struct.service_data_struct*) #1

declare dso_local i32 @vchiq_dump_platform_use_state(%struct.vchiq_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
