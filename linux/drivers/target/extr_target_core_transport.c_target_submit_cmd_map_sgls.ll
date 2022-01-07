; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_submit_cmd_map_sgls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_submit_cmd_map_sgls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i64, i64, %struct.scatterlist*, i32, i64, i64 }
%struct.se_session = type { %struct.se_portal_group* }
%struct.se_portal_group = type { i32 }
%struct.scatterlist = type { i32, i32 }

@TARGET_SCF_USE_CPUID = common dso_local global i32 0, align 4
@SCF_USE_CPUID = common dso_local global i32 0, align 4
@WORK_CPU_UNBOUND = common dso_local global i32 0, align 4
@TARGET_SCF_UNKNOWN_SIZE = common dso_local global i32 0, align 4
@TARGET_SCF_ACK_KREF = common dso_local global i32 0, align 4
@TARGET_SCF_BIDI_OP = common dso_local global i32 0, align 4
@SCF_BIDI = common dso_local global i32 0, align 4
@SCF_PASSTHROUGH_PROT_SG_TO_MEM_NOALLOC = common dso_local global i32 0, align 4
@SCF_SCSI_DATA_CDB = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_submit_cmd_map_sgls(%struct.se_cmd* %0, %struct.se_session* %1, i8* %2, i8* %3, i32 %4, i64 %5, i32 %6, i32 %7, i32 %8, %struct.scatterlist* %9, i64 %10, %struct.scatterlist* %11, i64 %12, %struct.scatterlist* %13, i64 %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca %struct.se_cmd*, align 8
  %18 = alloca %struct.se_session*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.scatterlist*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.scatterlist*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.scatterlist*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.se_portal_group*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %17, align 8
  store %struct.se_session* %1, %struct.se_session** %18, align 8
  store i8* %2, i8** %19, align 8
  store i8* %3, i8** %20, align 8
  store i32 %4, i32* %21, align 4
  store i64 %5, i64* %22, align 8
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store %struct.scatterlist* %9, %struct.scatterlist** %26, align 8
  store i64 %10, i64* %27, align 8
  store %struct.scatterlist* %11, %struct.scatterlist** %28, align 8
  store i64 %12, i64* %29, align 8
  store %struct.scatterlist* %13, %struct.scatterlist** %30, align 8
  store i64 %14, i64* %31, align 8
  %36 = load %struct.se_session*, %struct.se_session** %18, align 8
  %37 = getelementptr inbounds %struct.se_session, %struct.se_session* %36, i32 0, i32 0
  %38 = load %struct.se_portal_group*, %struct.se_portal_group** %37, align 8
  store %struct.se_portal_group* %38, %struct.se_portal_group** %32, align 8
  %39 = load %struct.se_portal_group*, %struct.se_portal_group** %32, align 8
  %40 = icmp ne %struct.se_portal_group* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %45 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %15
  %49 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %50 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %48, %15
  %54 = phi i1 [ true, %15 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = call i32 (...) @in_interrupt()
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %60 = load %struct.se_portal_group*, %struct.se_portal_group** %32, align 8
  %61 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.se_session*, %struct.se_session** %18, align 8
  %64 = load i64, i64* %22, align 8
  %65 = load i32, i32* %24, align 4
  %66 = load i32, i32* %23, align 4
  %67 = load i8*, i8** %20, align 8
  %68 = call i32 @transport_init_se_cmd(%struct.se_cmd* %59, i32 %62, %struct.se_session* %63, i64 %64, i32 %65, i32 %66, i8* %67)
  %69 = load i32, i32* %25, align 4
  %70 = load i32, i32* @TARGET_SCF_USE_CPUID, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %53
  %74 = load i32, i32* @SCF_USE_CPUID, align 4
  %75 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %76 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %83

79:                                               ; preds = %53
  %80 = load i32, i32* @WORK_CPU_UNBOUND, align 4
  %81 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %82 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %73
  %84 = load i32, i32* %25, align 4
  %85 = load i32, i32* @TARGET_SCF_UNKNOWN_SIZE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %90 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %93 = load i32, i32* %25, align 4
  %94 = load i32, i32* @TARGET_SCF_ACK_KREF, align 4
  %95 = and i32 %93, %94
  %96 = call i32 @target_get_sess_cmd(%struct.se_cmd* %92, i32 %95)
  store i32 %96, i32* %34, align 4
  %97 = load i32, i32* %34, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %34, align 4
  store i32 %100, i32* %16, align 4
  br label %214

101:                                              ; preds = %91
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* @TARGET_SCF_BIDI_OP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* @SCF_BIDI, align 4
  %108 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %109 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %106, %101
  %113 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %114 = load i32, i32* %21, align 4
  %115 = call i64 @transport_lookup_cmd_lun(%struct.se_cmd* %113, i32 %114)
  store i64 %115, i64* %33, align 8
  %116 = load i64, i64* %33, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %120 = load i64, i64* %33, align 8
  %121 = call i32 @transport_send_check_condition_and_sense(%struct.se_cmd* %119, i64 %120, i32 0)
  %122 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %123 = call i32 @target_put_sess_cmd(%struct.se_cmd* %122)
  store i32 0, i32* %16, align 4
  br label %214

124:                                              ; preds = %112
  %125 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %126 = load i8*, i8** %19, align 8
  %127 = call i64 @target_setup_cmd_from_cdb(%struct.se_cmd* %125, i8* %126)
  store i64 %127, i64* %33, align 8
  %128 = load i64, i64* %33, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %132 = load i64, i64* %33, align 8
  %133 = call i32 @transport_generic_request_failure(%struct.se_cmd* %131, i64 %132)
  store i32 0, i32* %16, align 4
  br label %214

134:                                              ; preds = %124
  %135 = load i64, i64* %31, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = load %struct.scatterlist*, %struct.scatterlist** %30, align 8
  %139 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %140 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %139, i32 0, i32 4
  store %struct.scatterlist* %138, %struct.scatterlist** %140, align 8
  %141 = load i64, i64* %31, align 8
  %142 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %143 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %142, i32 0, i32 3
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* @SCF_PASSTHROUGH_PROT_SG_TO_MEM_NOALLOC, align 4
  %145 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %146 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %137, %134
  %150 = load i64, i64* %27, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %209

152:                                              ; preds = %149
  %153 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %154 = icmp ne %struct.scatterlist* %153, null
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i32 @BUG_ON(i32 %156)
  %158 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %159 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @SCF_SCSI_DATA_CDB, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %195, label %164

164:                                              ; preds = %152
  %165 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %166 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %195

170:                                              ; preds = %164
  store i8* null, i8** %35, align 8
  %171 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %172 = icmp ne %struct.scatterlist* %171, null
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %175 = call i32 @sg_page(%struct.scatterlist* %174)
  %176 = call i8* @kmap(i32 %175)
  %177 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %178 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %176, i64 %180
  store i8* %181, i8** %35, align 8
  br label %182

182:                                              ; preds = %173, %170
  %183 = load i8*, i8** %35, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = load i8*, i8** %35, align 8
  %187 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %188 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @memset(i8* %186, i32 0, i32 %189)
  %191 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %192 = call i32 @sg_page(%struct.scatterlist* %191)
  %193 = call i32 @kunmap(i32 %192)
  br label %194

194:                                              ; preds = %185, %182
  br label %195

195:                                              ; preds = %194, %164, %152
  %196 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %197 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %198 = load i64, i64* %27, align 8
  %199 = load %struct.scatterlist*, %struct.scatterlist** %28, align 8
  %200 = load i64, i64* %29, align 8
  %201 = call i64 @transport_generic_map_mem_to_cmd(%struct.se_cmd* %196, %struct.scatterlist* %197, i64 %198, %struct.scatterlist* %199, i64 %200)
  store i64 %201, i64* %33, align 8
  %202 = load i64, i64* %33, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %195
  %205 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %206 = load i64, i64* %33, align 8
  %207 = call i32 @transport_generic_request_failure(%struct.se_cmd* %205, i64 %206)
  store i32 0, i32* %16, align 4
  br label %214

208:                                              ; preds = %195
  br label %209

209:                                              ; preds = %208, %149
  %210 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %211 = call i32 @core_alua_check_nonop_delay(%struct.se_cmd* %210)
  %212 = load %struct.se_cmd*, %struct.se_cmd** %17, align 8
  %213 = call i32 @transport_handle_cdb_direct(%struct.se_cmd* %212)
  store i32 0, i32* %16, align 4
  br label %214

214:                                              ; preds = %209, %204, %130, %118, %99
  %215 = load i32, i32* %16, align 4
  ret i32 %215
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @transport_init_se_cmd(%struct.se_cmd*, i32, %struct.se_session*, i64, i32, i32, i8*) #1

declare dso_local i32 @target_get_sess_cmd(%struct.se_cmd*, i32) #1

declare dso_local i64 @transport_lookup_cmd_lun(%struct.se_cmd*, i32) #1

declare dso_local i32 @transport_send_check_condition_and_sense(%struct.se_cmd*, i64, i32) #1

declare dso_local i32 @target_put_sess_cmd(%struct.se_cmd*) #1

declare dso_local i64 @target_setup_cmd_from_cdb(%struct.se_cmd*, i8*) #1

declare dso_local i32 @transport_generic_request_failure(%struct.se_cmd*, i64) #1

declare dso_local i8* @kmap(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i64 @transport_generic_map_mem_to_cmd(%struct.se_cmd*, %struct.scatterlist*, i64, %struct.scatterlist*, i64) #1

declare dso_local i32 @core_alua_check_nonop_delay(%struct.se_cmd*) #1

declare dso_local i32 @transport_handle_cdb_direct(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
