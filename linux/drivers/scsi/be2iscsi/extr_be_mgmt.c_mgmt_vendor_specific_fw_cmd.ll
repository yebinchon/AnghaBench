; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_vendor_specific_fw_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_vendor_specific_fw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32 }
%struct.beiscsi_hba = type { i32 }
%struct.bsg_job = type { %struct.TYPE_6__, i32, %struct.iscsi_bsg_request* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.iscsi_bsg_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i16* }
%struct.be_dma_mem = type { i32, i32, %struct.be_bsg_vendor_cmd* }
%struct.be_bsg_vendor_cmd = type { i16, i16, i16, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_sge = type { i8*, i8*, i8* }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_WRITE_FLASH = common dso_local global i32 0, align 4
@OPCODE_COMMON_READ_FLASH = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"BG_%d : Unsupported cmd = 0x%x\0A\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_vendor_specific_fw_cmd(%struct.be_ctrl_info* %0, %struct.beiscsi_hba* %1, %struct.bsg_job* %2, %struct.be_dma_mem* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_ctrl_info*, align 8
  %7 = alloca %struct.beiscsi_hba*, align 8
  %8 = alloca %struct.bsg_job*, align 8
  %9 = alloca %struct.be_dma_mem*, align 8
  %10 = alloca %struct.be_mcc_wrb*, align 8
  %11 = alloca %struct.be_sge*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iscsi_bsg_request*, align 8
  %14 = alloca %struct.be_bsg_vendor_cmd*, align 8
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %6, align 8
  store %struct.beiscsi_hba* %1, %struct.beiscsi_hba** %7, align 8
  store %struct.bsg_job* %2, %struct.bsg_job** %8, align 8
  store %struct.be_dma_mem* %3, %struct.be_dma_mem** %9, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %20 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %19, i32 0, i32 2
  %21 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %20, align 8
  store %struct.iscsi_bsg_request* %21, %struct.iscsi_bsg_request** %13, align 8
  %22 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %23 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %22, i32 0, i32 2
  %24 = load %struct.be_bsg_vendor_cmd*, %struct.be_bsg_vendor_cmd** %23, align 8
  store %struct.be_bsg_vendor_cmd* %24, %struct.be_bsg_vendor_cmd** %14, align 8
  %25 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %26 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %32 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %31, i32 0, i32 2
  %33 = load %struct.be_bsg_vendor_cmd*, %struct.be_bsg_vendor_cmd** %32, align 8
  %34 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %35 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memset(%struct.be_bsg_vendor_cmd* %33, i32 0, i32 %36)
  %38 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %13, align 8
  %39 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i16*, i16** %41, align 8
  %43 = getelementptr inbounds i16, i16* %42, i64 1
  %44 = load i16, i16* %43, align 2
  store i16 %44, i16* %15, align 2
  %45 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %13, align 8
  %46 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i16*, i16** %48, align 8
  %50 = getelementptr inbounds i16, i16* %49, i64 2
  %51 = load i16, i16* %50, align 2
  store i16 %51, i16* %16, align 2
  %52 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %13, align 8
  %53 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i16*, i16** %55, align 8
  %57 = getelementptr inbounds i16, i16* %56, i64 3
  %58 = load i16, i16* %57, align 2
  store i16 %58, i16* %17, align 2
  %59 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %13, align 8
  %60 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i16*, i16** %62, align 8
  %64 = getelementptr inbounds i16, i16* %63, i64 4
  %65 = load i16, i16* %64, align 2
  store i16 %65, i16* %18, align 2
  %66 = load i16, i16* %15, align 2
  %67 = load %struct.be_bsg_vendor_cmd*, %struct.be_bsg_vendor_cmd** %14, align 8
  %68 = getelementptr inbounds %struct.be_bsg_vendor_cmd, %struct.be_bsg_vendor_cmd* %67, i32 0, i32 0
  store i16 %66, i16* %68, align 4
  %69 = load i16, i16* %17, align 2
  %70 = load %struct.be_bsg_vendor_cmd*, %struct.be_bsg_vendor_cmd** %14, align 8
  %71 = getelementptr inbounds %struct.be_bsg_vendor_cmd, %struct.be_bsg_vendor_cmd* %70, i32 0, i32 1
  store i16 %69, i16* %71, align 2
  %72 = load i16, i16* %18, align 2
  %73 = load %struct.be_bsg_vendor_cmd*, %struct.be_bsg_vendor_cmd** %14, align 8
  %74 = getelementptr inbounds %struct.be_bsg_vendor_cmd, %struct.be_bsg_vendor_cmd* %73, i32 0, i32 2
  store i16 %72, i16* %74, align 4
  %75 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %76 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %75, i32 0, i32 0
  %77 = call i64 @mutex_lock_interruptible(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %193

80:                                               ; preds = %4
  %81 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %13, align 8
  %82 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i16*, i16** %84, align 8
  %86 = getelementptr inbounds i16, i16* %85, i64 0
  %87 = load i16, i16* %86, align 2
  %88 = zext i16 %87 to i32
  switch i32 %88, label %129 [
    i32 128, label %89
    i32 129, label %123
  ]

89:                                               ; preds = %80
  %90 = load i16, i16* %17, align 2
  %91 = zext i16 %90 to i32
  %92 = load i16, i16* %16, align 2
  %93 = zext i16 %92 to i32
  %94 = mul nsw i32 %91, %93
  %95 = load i16, i16* %18, align 2
  %96 = zext i16 %95 to i32
  %97 = add nsw i32 %94, %96
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* %18, align 2
  %99 = load %struct.be_bsg_vendor_cmd*, %struct.be_bsg_vendor_cmd** %14, align 8
  %100 = getelementptr inbounds %struct.be_bsg_vendor_cmd, %struct.be_bsg_vendor_cmd* %99, i32 0, i32 3
  %101 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %102 = load i32, i32* @OPCODE_COMMON_WRITE_FLASH, align 4
  %103 = call i32 @be_cmd_hdr_prepare(i32* %100, i32 %101, i32 %102, i32 12)
  %104 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %105 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %109 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %113 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %112, i32 0, i32 2
  %114 = load %struct.be_bsg_vendor_cmd*, %struct.be_bsg_vendor_cmd** %113, align 8
  %115 = load i16, i16* %18, align 2
  %116 = zext i16 %115 to i32
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.be_bsg_vendor_cmd, %struct.be_bsg_vendor_cmd* %114, i64 %117
  %119 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %120 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @sg_copy_to_buffer(i32 %107, i32 %111, %struct.be_bsg_vendor_cmd* %118, i32 %121)
  br label %146

123:                                              ; preds = %80
  %124 = load %struct.be_bsg_vendor_cmd*, %struct.be_bsg_vendor_cmd** %14, align 8
  %125 = getelementptr inbounds %struct.be_bsg_vendor_cmd, %struct.be_bsg_vendor_cmd* %124, i32 0, i32 3
  %126 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %127 = load i32, i32* @OPCODE_COMMON_READ_FLASH, align 4
  %128 = call i32 @be_cmd_hdr_prepare(i32* %125, i32 %126, i32 %127, i32 12)
  br label %146

129:                                              ; preds = %80
  %130 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %131 = load i32, i32* @KERN_WARNING, align 4
  %132 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %133 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %13, align 8
  %134 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i16*, i16** %136, align 8
  %138 = getelementptr inbounds i16, i16* %137, i64 0
  %139 = load i16, i16* %138, align 2
  %140 = call i32 @beiscsi_log(%struct.beiscsi_hba* %130, i32 %131, i32 %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i16 signext %139)
  %141 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %142 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %141, i32 0, i32 0
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = load i32, i32* @EPERM, align 4
  %145 = sub i32 0, %144
  store i32 %145, i32* %5, align 4
  br label %193

146:                                              ; preds = %123, %89
  %147 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %148 = call %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba* %147, i32* %12)
  store %struct.be_mcc_wrb* %148, %struct.be_mcc_wrb** %10, align 8
  %149 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %150 = icmp ne %struct.be_mcc_wrb* %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %146
  %152 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %153 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %152, i32 0, i32 0
  %154 = call i32 @mutex_unlock(i32* %153)
  store i32 0, i32* %5, align 4
  br label %193

155:                                              ; preds = %146
  %156 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %157 = call %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb* %156)
  store %struct.be_sge* %157, %struct.be_sge** %11, align 8
  %158 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %159 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %160 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %163 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %158, i32 %161, i32 0, i32 %165)
  %167 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %168 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @upper_32_bits(i32 %169)
  %171 = call i8* @cpu_to_le32(i32 %170)
  %172 = load %struct.be_sge*, %struct.be_sge** %11, align 8
  %173 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  %174 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %175 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @cpu_to_le32(i32 %176)
  %178 = load %struct.be_sge*, %struct.be_sge** %11, align 8
  %179 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %178, i32 0, i32 1
  store i8* %177, i8** %179, align 8
  %180 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %181 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i8* @cpu_to_le32(i32 %182)
  %184 = load %struct.be_sge*, %struct.be_sge** %11, align 8
  %185 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %184, i32 0, i32 0
  store i8* %183, i8** %185, align 8
  %186 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %186, i32 %187)
  %189 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %190 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %189, i32 0, i32 0
  %191 = call i32 @mutex_unlock(i32* %190)
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %155, %151, %129, %79
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @memset(%struct.be_bsg_vendor_cmd*, i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.be_bsg_vendor_cmd*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i16 signext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba*, i32*) #1

declare dso_local %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
