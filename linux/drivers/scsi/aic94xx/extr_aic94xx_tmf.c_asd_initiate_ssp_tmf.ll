; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_initiate_ssp_tmf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_initiate_ssp_tmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.domain_device = type { i32, i32, i64, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { i32 }
%struct.asd_ascb = type { %struct.scb*, %struct.TYPE_15__*, i32* }
%struct.scb = type { %struct.TYPE_14__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@completion = common dso_local global i32 0, align 4
@tcs = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@SAS_PROTOCOL_SSP = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_ESUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TMF_QUERY_TASK = common dso_local global i32 0, align 4
@QUERY_SSP_TASK = common dso_local global i32 0, align 4
@INITIATE_SSP_TMF = common dso_local global i32 0, align 4
@SSP_TASK = common dso_local global i32 0, align 4
@HASHED_SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@ITNL_TIMEOUT_CONST = common dso_local global i32 0, align 4
@asd_tmf_tasklet_complete = common dso_local global i32 0, align 4
@asd_tmf_timedout = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@TMF_RESP_INVALID_FRAME = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32*, i32, i32)* @asd_initiate_ssp_tmf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_initiate_ssp_tmf(%struct.domain_device* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.asd_ha_struct*, align 8
  %11 = alloca %struct.asd_ascb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scb*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %15 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %14, i32 0, i32 3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %19, align 8
  store %struct.asd_ha_struct* %20, %struct.asd_ha_struct** %10, align 8
  store i32 1, i32* %12, align 4
  %21 = load i32, i32* @completion, align 4
  %22 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tcs, i32 0, i32 0), align 4
  %24 = call i32 @DECLARE_TCS(i32 %23)
  %25 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %26 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SAS_PROTOCOL_SSP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @TMF_RESP_FUNC_ESUPP, align 4
  store i32 %32, i32* %5, align 4
  br label %179

33:                                               ; preds = %4
  %34 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.asd_ascb* @asd_ascb_alloc_list(%struct.asd_ha_struct* %34, i32* %12, i32 %35)
  store %struct.asd_ascb* %36, %struct.asd_ascb** %11, align 8
  %37 = load %struct.asd_ascb*, %struct.asd_ascb** %11, align 8
  %38 = icmp ne %struct.asd_ascb* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %179

42:                                               ; preds = %33
  %43 = load %struct.asd_ascb*, %struct.asd_ascb** %11, align 8
  %44 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %43, i32 0, i32 2
  store i32* @completion, i32** %44, align 8
  %45 = load %struct.asd_ascb*, %struct.asd_ascb** %11, align 8
  %46 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %45, i32 0, i32 1
  store %struct.TYPE_15__* @tcs, %struct.TYPE_15__** %46, align 8
  %47 = load %struct.asd_ascb*, %struct.asd_ascb** %11, align 8
  %48 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %47, i32 0, i32 0
  %49 = load %struct.scb*, %struct.scb** %48, align 8
  store %struct.scb* %49, %struct.scb** %13, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @TMF_QUERY_TASK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load i32, i32* @QUERY_SSP_TASK, align 4
  %55 = load %struct.scb*, %struct.scb** %13, align 8
  %56 = getelementptr inbounds %struct.scb, %struct.scb* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  br label %63

58:                                               ; preds = %42
  %59 = load i32, i32* @INITIATE_SSP_TMF, align 4
  %60 = load %struct.scb*, %struct.scb** %13, align 8
  %61 = getelementptr inbounds %struct.scb, %struct.scb* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.scb*, %struct.scb** %13, align 8
  %65 = getelementptr inbounds %struct.scb, %struct.scb* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i32 16, i32* %66, align 8
  %67 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %68 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.scb*, %struct.scb** %13, align 8
  %71 = getelementptr inbounds %struct.scb, %struct.scb* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @SSP_TASK, align 4
  %76 = load %struct.scb*, %struct.scb** %13, align 8
  %77 = getelementptr inbounds %struct.scb, %struct.scb* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 3
  store i32 %75, i32* %79, align 4
  %80 = load %struct.scb*, %struct.scb** %13, align 8
  %81 = getelementptr inbounds %struct.scb, %struct.scb* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %86 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @HASHED_SAS_ADDR_SIZE, align 4
  %89 = call i32 @memcpy(i32 %84, i32* %87, i32 %88)
  %90 = load %struct.scb*, %struct.scb** %13, align 8
  %91 = getelementptr inbounds %struct.scb, %struct.scb* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %96 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %95, i32 0, i32 3
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @HASHED_SAS_ADDR_SIZE, align 4
  %103 = call i32 @memcpy(i32 %94, i32* %101, i32 %102)
  %104 = call i32 @cpu_to_be16(i32 65535)
  %105 = load %struct.scb*, %struct.scb** %13, align 8
  %106 = getelementptr inbounds %struct.scb, %struct.scb* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 8
  %109 = load %struct.scb*, %struct.scb** %13, align 8
  %110 = getelementptr inbounds %struct.scb, %struct.scb* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @memcpy(i32 %113, i32* %114, i32 8)
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.scb*, %struct.scb** %13, align 8
  %118 = getelementptr inbounds %struct.scb, %struct.scb* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 8
  %121 = call i8* @cpu_to_le16(i32 65535)
  %122 = load %struct.scb*, %struct.scb** %13, align 8
  %123 = getelementptr inbounds %struct.scb, %struct.scb* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 5
  store i8* %121, i8** %124, align 8
  %125 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %126 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i8* @cpu_to_le16(i32 %128)
  %130 = load %struct.scb*, %struct.scb** %13, align 8
  %131 = getelementptr inbounds %struct.scb, %struct.scb* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 4
  store i8* %129, i8** %132, align 8
  %133 = load %struct.scb*, %struct.scb** %13, align 8
  %134 = getelementptr inbounds %struct.scb, %struct.scb* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  %136 = load i32, i32* @ITNL_TIMEOUT_CONST, align 4
  %137 = call i8* @cpu_to_le16(i32 %136)
  %138 = load %struct.scb*, %struct.scb** %13, align 8
  %139 = getelementptr inbounds %struct.scb, %struct.scb* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 3
  store i8* %137, i8** %140, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @TMF_QUERY_TASK, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %63
  %145 = load i32, i32* %9, align 4
  %146 = call i8* @cpu_to_le16(i32 %145)
  %147 = load %struct.scb*, %struct.scb** %13, align 8
  %148 = getelementptr inbounds %struct.scb, %struct.scb* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  store i8* %146, i8** %149, align 8
  br label %150

150:                                              ; preds = %144, %63
  %151 = load %struct.asd_ascb*, %struct.asd_ascb** %11, align 8
  %152 = load i32, i32* @asd_tmf_tasklet_complete, align 4
  %153 = load i32, i32* @asd_tmf_timedout, align 4
  %154 = call i32 @asd_enqueue_internal(%struct.asd_ascb* %151, i32 %152, i32 %153)
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %175

158:                                              ; preds = %150
  %159 = call i32 @wait_for_completion(i32* @completion)
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tcs, i32 0, i32 0), align 4
  switch i32 %160, label %171 [
    i32 134, label %161
    i32 133, label %163
    i32 128, label %165
    i32 130, label %167
    i32 129, label %167
    i32 132, label %167
    i32 131, label %169
  ]

161:                                              ; preds = %158
  %162 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  store i32 %162, i32* %12, align 4
  br label %173

163:                                              ; preds = %158
  %164 = load i32, i32* @TMF_RESP_INVALID_FRAME, align 4
  store i32 %164, i32* %12, align 4
  br label %173

165:                                              ; preds = %158
  %166 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %166, i32* %12, align 4
  br label %173

167:                                              ; preds = %158, %158, %158
  %168 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  store i32 %168, i32* %12, align 4
  br label %173

169:                                              ; preds = %158
  %170 = load i32, i32* @TMF_RESP_FUNC_ESUPP, align 4
  store i32 %170, i32* %12, align 4
  br label %173

171:                                              ; preds = %158
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tcs, i32 0, i32 0), align 4
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %171, %169, %167, %165, %163, %161
  %174 = load i32, i32* %12, align 4
  store i32 %174, i32* %5, align 4
  br label %179

175:                                              ; preds = %157
  %176 = load %struct.asd_ascb*, %struct.asd_ascb** %11, align 8
  %177 = call i32 @asd_ascb_free(%struct.asd_ascb* %176)
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %175, %173, %39, %31
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @DECLARE_TCS(i32) #1

declare dso_local %struct.asd_ascb* @asd_ascb_alloc_list(%struct.asd_ha_struct*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @asd_enqueue_internal(%struct.asd_ascb*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @asd_ascb_free(%struct.asd_ascb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
