; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_sli4_set_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_sli4_set_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.lpfc_lcb_context = type { i32, i32 }
%union.lpfc_sli4_cfg_shdr = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32, i32, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_15__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %union.lpfc_sli4_cfg_shdr }

@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_SET_BEACON_CONFIG = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@lpfc_els_lcb_rsp = common dso_local global i32 0, align 4
@lpfc_mbx_set_beacon_port_num = common dso_local global i32 0, align 4
@lpfc_mbx_set_beacon_state = common dso_local global i32 0, align 4
@BEACON_VERSION_V1 = common dso_local global i32 0, align 4
@LCB_CAPABILITY_DURATION = common dso_local global i32 0, align 4
@lpfc_mbx_set_beacon_port_type = common dso_local global i32 0, align 4
@lpfc_mbx_set_beacon_duration_v1 = common dso_local global i32 0, align 4
@BEACON_VERSION_V0 = common dso_local global i32 0, align 4
@lpfc_mbx_set_beacon_duration = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_lcb_context*, i32)* @lpfc_sli4_set_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_set_beacon(%struct.lpfc_vport* %0, %struct.lpfc_lcb_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_lcb_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %union.lpfc_sli4_cfg_shdr*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_lcb_context* %1, %struct.lpfc_lcb_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 0
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %8, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %10, align 8
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_24__* @mempool_alloc(i32 %18, i32 %19)
  store %struct.TYPE_24__* %20, %struct.TYPE_24__** %10, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %22 = icmp ne %struct.TYPE_24__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %174

24:                                               ; preds = %3
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  store %union.lpfc_sli4_cfg_shdr* %31, %union.lpfc_sli4_cfg_shdr** %9, align 8
  store i32 0, i32* %11, align 4
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %34 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_COMMON, align 4
  %35 = load i32, i32* @LPFC_MBOX_OPCODE_SET_BEACON_CONFIG, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %38 = call i32 @lpfc_sli4_config(%struct.lpfc_hba* %32, %struct.TYPE_24__* %33, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %6, align 8
  %40 = bitcast %struct.lpfc_lcb_context* %39 to i8*
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @lpfc_els_lcb_rsp, align 4
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @lpfc_mbx_set_beacon_port_num, align 4
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bf_set(i32 %51, %struct.TYPE_15__* %56, i32 %60)
  %62 = load i32, i32* @lpfc_mbx_set_beacon_state, align 4
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @bf_set(i32 %62, %struct.TYPE_15__* %67, i32 %68)
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %24
  %83 = load i32, i32* @BEACON_VERSION_V1, align 4
  %84 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %9, align 8
  %85 = bitcast %union.lpfc_sli4_cfg_shdr* %84 to %struct.TYPE_20__*
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @LCB_CAPABILITY_DURATION, align 4
  %88 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %6, align 8
  %89 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @lpfc_mbx_set_beacon_port_type, align 4
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = call i32 @bf_set(i32 %92, %struct.TYPE_15__* %97, i32 0)
  %99 = load i32, i32* @lpfc_mbx_set_beacon_duration_v1, align 4
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %6, align 8
  %106 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @be16_to_cpu(i32 %107)
  %109 = call i32 @bf_set(i32 %99, %struct.TYPE_15__* %104, i32 %108)
  br label %159

110:                                              ; preds = %24
  %111 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %6, align 8
  %112 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @be16_to_cpu(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @mempool_free(%struct.TYPE_24__* %117, i32 %120)
  store i32 1, i32* %4, align 4
  br label %174

122:                                              ; preds = %110
  %123 = load i32, i32* @BEACON_VERSION_V0, align 4
  %124 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %9, align 8
  %125 = bitcast %union.lpfc_sli4_cfg_shdr* %124 to %struct.TYPE_20__*
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @LCB_CAPABILITY_DURATION, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %6, align 8
  %130 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* @lpfc_mbx_set_beacon_state, align 4
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @bf_set(i32 %133, %struct.TYPE_15__* %138, i32 %139)
  %141 = load i32, i32* @lpfc_mbx_set_beacon_port_type, align 4
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = call i32 @bf_set(i32 %141, %struct.TYPE_15__* %146, i32 1)
  %148 = load i32, i32* @lpfc_mbx_set_beacon_duration, align 4
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %6, align 8
  %155 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @be16_to_cpu(i32 %156)
  %158 = call i32 @bf_set(i32 %148, %struct.TYPE_15__* %153, i32 %157)
  br label %159

159:                                              ; preds = %122, %82
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %162 = load i32, i32* @MBX_NOWAIT, align 4
  %163 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %160, %struct.TYPE_24__* %161, i32 %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %159
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @mempool_free(%struct.TYPE_24__* %168, i32 %171)
  store i32 1, i32* %4, align 4
  br label %174

173:                                              ; preds = %159
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %173, %167, %116, %23
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local %struct.TYPE_24__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_sli4_config(%struct.lpfc_hba*, %struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i32 @bf_set(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
