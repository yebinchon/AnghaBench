; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_optee_from_msg_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_optee_from_msg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_param = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { %struct.tee_shm*, i64, i64 }
%struct.tee_shm = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.optee_msg_param = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@OPTEE_MSG_ATTR_TYPE_MASK = common dso_local global i32 0, align 4
@TEE_IOCTL_PARAM_ATTR_TYPE_NONE = common dso_local global i32 0, align 4
@TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT = common dso_local global i32 0, align 4
@TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optee_from_msg_param(%struct.tee_param* %0, i64 %1, %struct.optee_msg_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tee_param*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.optee_msg_param*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tee_shm*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tee_param*, align 8
  %13 = alloca %struct.optee_msg_param*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.tee_param* %0, %struct.tee_param** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.optee_msg_param* %2, %struct.optee_msg_param** %7, align 8
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %211, %3
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %214

20:                                               ; preds = %16
  %21 = load %struct.tee_param*, %struct.tee_param** %5, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %21, i64 %22
  store %struct.tee_param* %23, %struct.tee_param** %12, align 8
  %24 = load %struct.optee_msg_param*, %struct.optee_msg_param** %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %24, i64 %25
  store %struct.optee_msg_param* %26, %struct.optee_msg_param** %13, align 8
  %27 = load %struct.optee_msg_param*, %struct.optee_msg_param** %13, align 8
  %28 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @OPTEE_MSG_ATTR_TYPE_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  switch i32 %32, label %207 [
    i32 137, label %33
    i32 129, label %40
    i32 128, label %40
    i32 130, label %40
    i32 132, label %74
    i32 131, label %74
    i32 133, label %74
    i32 135, label %159
    i32 134, label %159
    i32 136, label %159
  ]

33:                                               ; preds = %20
  %34 = load i32, i32* @TEE_IOCTL_PARAM_ATTR_TYPE_NONE, align 4
  %35 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %36 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %38 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %37, i32 0, i32 1
  %39 = call i32 @memset(%struct.TYPE_14__* %38, i32 0, i32 40)
  br label %210

40:                                               ; preds = %20, %20, %20
  %41 = load i32, i32* @TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT, align 4
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %41, %42
  %44 = sub nsw i32 %43, 129
  %45 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %46 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.optee_msg_param*, %struct.optee_msg_param** %13, align 8
  %48 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %53 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i32 %51, i32* %55, align 8
  %56 = load %struct.optee_msg_param*, %struct.optee_msg_param** %13, align 8
  %57 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %62 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load %struct.optee_msg_param*, %struct.optee_msg_param** %13, align 8
  %66 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %71 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  br label %210

74:                                               ; preds = %20, %20, %20
  %75 = load i32, i32* @TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT, align 4
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %75, %76
  %78 = sub nsw i32 %77, 132
  %79 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %80 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.optee_msg_param*, %struct.optee_msg_param** %13, align 8
  %82 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %87 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  store i64 %85, i64* %89, align 8
  %90 = load %struct.optee_msg_param*, %struct.optee_msg_param** %13, align 8
  %91 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.tee_shm*
  store %struct.tee_shm* %95, %struct.tee_shm** %10, align 8
  %96 = load %struct.tee_shm*, %struct.tee_shm** %10, align 8
  %97 = icmp ne %struct.tee_shm* %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %74
  %99 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %100 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %104 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store %struct.tee_shm* null, %struct.tee_shm** %106, align 8
  br label %210

107:                                              ; preds = %74
  %108 = load %struct.tee_shm*, %struct.tee_shm** %10, align 8
  %109 = call i32 @tee_shm_get_pa(%struct.tee_shm* %108, i64 0, i64* %11)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %4, align 4
  br label %215

114:                                              ; preds = %107
  %115 = load %struct.optee_msg_param*, %struct.optee_msg_param** %13, align 8
  %116 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = sub nsw i64 %119, %120
  %122 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %123 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  store i64 %121, i64* %125, align 8
  %126 = load %struct.tee_shm*, %struct.tee_shm** %10, align 8
  %127 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %128 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  store %struct.tee_shm* %126, %struct.tee_shm** %130, align 8
  %131 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %132 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %114
  %138 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %139 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %144 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %142, %147
  %149 = sub nsw i64 %148, 1
  store i64 %149, i64* %15, align 8
  %150 = load %struct.tee_shm*, %struct.tee_shm** %10, align 8
  %151 = load i64, i64* %15, align 8
  %152 = call i32 @tee_shm_get_pa(%struct.tee_shm* %150, i64 %151, i64* null)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %137
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %4, align 4
  br label %215

157:                                              ; preds = %137
  br label %158

158:                                              ; preds = %157, %114
  br label %210

159:                                              ; preds = %20, %20, %20
  %160 = load i32, i32* @TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT, align 4
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %160, %161
  %163 = sub nsw i32 %162, 135
  %164 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %165 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.optee_msg_param*, %struct.optee_msg_param** %13, align 8
  %167 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %172 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  store i64 %170, i64* %174, align 8
  %175 = load %struct.optee_msg_param*, %struct.optee_msg_param** %13, align 8
  %176 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = inttoptr i64 %179 to %struct.tee_shm*
  store %struct.tee_shm* %180, %struct.tee_shm** %10, align 8
  %181 = load %struct.tee_shm*, %struct.tee_shm** %10, align 8
  %182 = icmp ne %struct.tee_shm* %181, null
  br i1 %182, label %192, label %183

183:                                              ; preds = %159
  %184 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %185 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  store i64 0, i64* %187, align 8
  %188 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %189 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  store %struct.tee_shm* null, %struct.tee_shm** %191, align 8
  br label %210

192:                                              ; preds = %159
  %193 = load %struct.optee_msg_param*, %struct.optee_msg_param** %13, align 8
  %194 = getelementptr inbounds %struct.optee_msg_param, %struct.optee_msg_param* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %199 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  store i64 %197, i64* %201, align 8
  %202 = load %struct.tee_shm*, %struct.tee_shm** %10, align 8
  %203 = load %struct.tee_param*, %struct.tee_param** %12, align 8
  %204 = getelementptr inbounds %struct.tee_param, %struct.tee_param* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  store %struct.tee_shm* %202, %struct.tee_shm** %206, align 8
  br label %210

207:                                              ; preds = %20
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %4, align 4
  br label %215

210:                                              ; preds = %192, %183, %158, %98, %40, %33
  br label %211

211:                                              ; preds = %210
  %212 = load i64, i64* %9, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %9, align 8
  br label %16

214:                                              ; preds = %16
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %214, %207, %155, %112
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @tee_shm_get_pa(%struct.tee_shm*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
