; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_mgmt_invalidate_icds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_mgmt_invalidate_icds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.invldt_cmd_tbl = type { i32, i32 }
%struct.invldt_cmds_params_in = type { i32, %struct.TYPE_3__*, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.be_dma_mem = type { i32, i32, %struct.invldt_cmds_params_in* }
%struct.be_mcc_wrb = type { i32 }
%struct.be_sge = type { i8*, i8*, i8* }

@BE_INVLDT_CMD_TBL_SZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_EH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"BM_%d : invldt_cmds_params alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_ERROR_RECOVERY_INVALIDATE_COMMANDS = common dso_local global i32 0, align 4
@CMD_ISCSI_COMMAND_INVALIDATE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_mgmt_invalidate_icds(%struct.beiscsi_hba* %0, %struct.invldt_cmd_tbl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca %struct.invldt_cmd_tbl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_ctrl_info*, align 8
  %9 = alloca %struct.invldt_cmds_params_in*, align 8
  %10 = alloca %struct.be_dma_mem, align 8
  %11 = alloca %struct.be_mcc_wrb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.be_sge*, align 8
  %15 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store %struct.invldt_cmd_tbl* %1, %struct.invldt_cmd_tbl** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 0
  store %struct.be_ctrl_info* %17, %struct.be_ctrl_info** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @BE_INVLDT_CMD_TBL_SZ, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %179

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 0
  store i32 4, i32* %28, align 8
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %30 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 1
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.invldt_cmds_params_in* @dma_alloc_coherent(i32* %33, i32 %35, i32* %36, i32 %37)
  %39 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 2
  store %struct.invldt_cmds_params_in* %38, %struct.invldt_cmds_params_in** %39, align 8
  %40 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 2
  %41 = load %struct.invldt_cmds_params_in*, %struct.invldt_cmds_params_in** %40, align 8
  %42 = icmp ne %struct.invldt_cmds_params_in* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %27
  %44 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %45 = load i32, i32* @KERN_ERR, align 4
  %46 = load i32, i32* @BEISCSI_LOG_EH, align 4
  %47 = call i32 @beiscsi_log(%struct.beiscsi_hba* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %179

50:                                               ; preds = %27
  %51 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %52 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %55 = call %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba* %54, i32* %13)
  store %struct.be_mcc_wrb* %55, %struct.be_mcc_wrb** %11, align 8
  %56 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %57 = icmp ne %struct.be_mcc_wrb* %56, null
  br i1 %57, label %76, label %58

58:                                               ; preds = %50
  %59 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %60 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %63 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 2
  %70 = load %struct.invldt_cmds_params_in*, %struct.invldt_cmds_params_in** %69, align 8
  %71 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dma_free_coherent(i32* %66, i32 %68, %struct.invldt_cmds_params_in* %70, i32 %72)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %179

76:                                               ; preds = %50
  %77 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 2
  %78 = load %struct.invldt_cmds_params_in*, %struct.invldt_cmds_params_in** %77, align 8
  store %struct.invldt_cmds_params_in* %78, %struct.invldt_cmds_params_in** %9, align 8
  %79 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %80 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %79, i32 %81, i32 0, i32 1)
  %83 = load %struct.invldt_cmds_params_in*, %struct.invldt_cmds_params_in** %9, align 8
  %84 = getelementptr inbounds %struct.invldt_cmds_params_in, %struct.invldt_cmds_params_in* %83, i32 0, i32 4
  %85 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %86 = load i32, i32* @OPCODE_COMMON_ISCSI_ERROR_RECOVERY_INVALIDATE_COMMANDS, align 4
  %87 = call i32 @be_cmd_hdr_prepare(i32* %84, i32 %85, i32 %86, i32 40)
  %88 = load %struct.invldt_cmds_params_in*, %struct.invldt_cmds_params_in** %9, align 8
  %89 = getelementptr inbounds %struct.invldt_cmds_params_in, %struct.invldt_cmds_params_in* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @CMD_ISCSI_COMMAND_INVALIDATE, align 4
  %91 = load %struct.invldt_cmds_params_in*, %struct.invldt_cmds_params_in** %9, align 8
  %92 = getelementptr inbounds %struct.invldt_cmds_params_in, %struct.invldt_cmds_params_in* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %128, %76
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %131

97:                                               ; preds = %93
  %98 = load %struct.invldt_cmd_tbl*, %struct.invldt_cmd_tbl** %6, align 8
  %99 = load i32, i32* %12, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.invldt_cmd_tbl, %struct.invldt_cmd_tbl* %98, i64 %100
  %102 = getelementptr inbounds %struct.invldt_cmd_tbl, %struct.invldt_cmd_tbl* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.invldt_cmds_params_in*, %struct.invldt_cmds_params_in** %9, align 8
  %105 = getelementptr inbounds %struct.invldt_cmds_params_in, %struct.invldt_cmds_params_in* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i32 %103, i32* %110, align 4
  %111 = load %struct.invldt_cmd_tbl*, %struct.invldt_cmd_tbl** %6, align 8
  %112 = load i32, i32* %12, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.invldt_cmd_tbl, %struct.invldt_cmd_tbl* %111, i64 %113
  %115 = getelementptr inbounds %struct.invldt_cmd_tbl, %struct.invldt_cmd_tbl* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.invldt_cmds_params_in*, %struct.invldt_cmds_params_in** %9, align 8
  %118 = getelementptr inbounds %struct.invldt_cmds_params_in, %struct.invldt_cmds_params_in* %117, i32 0, i32 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store i32 %116, i32* %123, align 4
  %124 = load %struct.invldt_cmds_params_in*, %struct.invldt_cmds_params_in** %9, align 8
  %125 = getelementptr inbounds %struct.invldt_cmds_params_in, %struct.invldt_cmds_params_in* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %97
  %129 = load i32, i32* %12, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %93

131:                                              ; preds = %93
  %132 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %133 = call %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb* %132)
  store %struct.be_sge* %133, %struct.be_sge** %14, align 8
  %134 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @upper_32_bits(i32 %135)
  %137 = call i8* @cpu_to_le32(i32 %136)
  %138 = load %struct.be_sge*, %struct.be_sge** %14, align 8
  %139 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %138, i32 0, i32 2
  store i8* %137, i8** %139, align 8
  %140 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @lower_32_bits(i32 %141)
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.be_sge*, %struct.be_sge** %14, align 8
  %145 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @cpu_to_le32(i32 %147)
  %149 = load %struct.be_sge*, %struct.be_sge** %14, align 8
  %150 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  %151 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %151, i32 %152)
  %154 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %155 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %154, i32 0, i32 1
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @beiscsi_mccq_compl_wait(%struct.beiscsi_hba* %157, i32 %158, i32* null, %struct.be_dma_mem* %10)
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* @EBUSY, align 4
  %162 = sub nsw i32 0, %161
  %163 = icmp ne i32 %160, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %131
  %165 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %166 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %166, i32 0, i32 0
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 2
  %173 = load %struct.invldt_cmds_params_in*, %struct.invldt_cmds_params_in** %172, align 8
  %174 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @dma_free_coherent(i32* %169, i32 %171, %struct.invldt_cmds_params_in* %173, i32 %175)
  br label %177

177:                                              ; preds = %164, %131
  %178 = load i32, i32* %15, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %177, %58, %43, %24
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.invldt_cmds_params_in* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @alloc_mcc_wrb(%struct.beiscsi_hba*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.invldt_cmds_params_in*, i32) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*, i32) #1

declare dso_local i32 @beiscsi_mccq_compl_wait(%struct.beiscsi_hba*, i32, i32*, %struct.be_dma_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
