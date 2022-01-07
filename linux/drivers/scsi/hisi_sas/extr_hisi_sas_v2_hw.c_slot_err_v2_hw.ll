; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_slot_err_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_slot_err_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }
%struct.sas_task = type { i32, %struct.task_status_struct }
%struct.task_status_struct = type { i8*, i8*, i8*, i32 }
%struct.hisi_sas_slot = type { i32 }
%struct.hisi_sas_err_record_v2 = type { i32, i32, i32, i32, i32 }

@SAS_OPEN_REJECT = common dso_local global i8* null, align 8
@SAS_OREJ_NO_DEST = common dso_local global i8* null, align 8
@SAS_OREJ_EPROTO = common dso_local global i8* null, align 8
@SAS_OREJ_CONN_RATE = common dso_local global i8* null, align 8
@SAS_OREJ_BAD_DEST = common dso_local global i8* null, align 8
@SAS_OREJ_WRONG_DEST = common dso_local global i8* null, align 8
@SAS_OREJ_UNKNOWN = common dso_local global i8* null, align 8
@SAS_DEV_NO_RESPONSE = common dso_local global i8* null, align 8
@SAS_DATA_OVERRUN = common dso_local global i8* null, align 8
@SAS_DATA_UNDERRUN = common dso_local global i8* null, align 8
@SAS_QUEUE_FULL = common dso_local global i8* null, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i8* null, align 8
@SAS_TASK_UNDELIVERED = common dso_local global i32 0, align 4
@SAS_PHY_DOWN = common dso_local global i8* null, align 8
@SAS_PROTO_RESPONSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, %struct.sas_task*, %struct.hisi_sas_slot*, i32)* @slot_err_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slot_err_v2_hw(%struct.hisi_hba* %0, %struct.sas_task* %1, %struct.hisi_sas_slot* %2, i32 %3) #0 {
  %5 = alloca %struct.hisi_hba*, align 8
  %6 = alloca %struct.sas_task*, align 8
  %7 = alloca %struct.hisi_sas_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.task_status_struct*, align 8
  %10 = alloca %struct.hisi_sas_err_record_v2*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %5, align 8
  store %struct.sas_task* %1, %struct.sas_task** %6, align 8
  store %struct.hisi_sas_slot* %2, %struct.hisi_sas_slot** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %18 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %17, i32 0, i32 1
  store %struct.task_status_struct* %18, %struct.task_status_struct** %9, align 8
  %19 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %20 = call %struct.hisi_sas_err_record_v2* @hisi_sas_status_buf_addr_mem(%struct.hisi_sas_slot* %19)
  store %struct.hisi_sas_err_record_v2* %20, %struct.hisi_sas_err_record_v2** %10, align 8
  %21 = load %struct.hisi_sas_err_record_v2*, %struct.hisi_sas_err_record_v2** %10, align 8
  %22 = getelementptr inbounds %struct.hisi_sas_err_record_v2, %struct.hisi_sas_err_record_v2* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @le32_to_cpu(i32 %23)
  store i8* %24, i8** %11, align 8
  %25 = load %struct.hisi_sas_err_record_v2*, %struct.hisi_sas_err_record_v2** %10, align 8
  %26 = getelementptr inbounds %struct.hisi_sas_err_record_v2, %struct.hisi_sas_err_record_v2* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @le32_to_cpu(i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load %struct.hisi_sas_err_record_v2*, %struct.hisi_sas_err_record_v2** %10, align 8
  %30 = getelementptr inbounds %struct.hisi_sas_err_record_v2, %struct.hisi_sas_err_record_v2* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.hisi_sas_err_record_v2*, %struct.hisi_sas_err_record_v2** %10, align 8
  %34 = getelementptr inbounds %struct.hisi_sas_err_record_v2, %struct.hisi_sas_err_record_v2* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.hisi_sas_err_record_v2*, %struct.hisi_sas_err_record_v2** %10, align 8
  %38 = getelementptr inbounds %struct.hisi_sas_err_record_v2, %struct.hisi_sas_err_record_v2* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le32_to_cpu(i32 %39)
  store i8* %40, i8** %15, align 8
  store i32 -1, i32* %16, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @parse_dma_tx_err_code_v2_hw(i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @parse_trans_tx_err_code_v2_hw(i8* %49)
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %48, %43
  br label %71

52:                                               ; preds = %4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @parse_trans_rx_err_code_v2_hw(i8* %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i8*, i8** %15, align 8
  %62 = call i32 @parse_dma_rx_err_code_v2_hw(i8* %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @parse_sipc_rx_err_code_v2_hw(i32 %66)
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %55
  br label %70

70:                                               ; preds = %69, %52
  br label %71

71:                                               ; preds = %70, %51
  %72 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %73 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %226 [
    i32 188, label %75
    i32 189, label %144
    i32 190, label %148
    i32 187, label %148
    i32 191, label %148
  ]

75:                                               ; preds = %71
  %76 = load i32, i32* %16, align 4
  switch i32 %76, label %142 [
    i32 136, label %77
    i32 133, label %84
    i32 138, label %91
    i32 141, label %98
    i32 131, label %105
    i32 198, label %112
    i32 130, label %112
    i32 200, label %112
    i32 137, label %119
    i32 214, label %123
    i32 213, label %129
    i32 129, label %136
    i32 157, label %136
    i32 139, label %136
    i32 142, label %136
    i32 140, label %136
    i32 134, label %136
    i32 135, label %136
    i32 128, label %136
    i32 153, label %136
    i32 154, label %136
    i32 155, label %136
    i32 148, label %136
    i32 150, label %136
    i32 149, label %136
    i32 151, label %136
    i32 152, label %136
    i32 145, label %136
    i32 156, label %136
    i32 147, label %136
    i32 146, label %136
    i32 163, label %136
    i32 167, label %136
    i32 162, label %136
    i32 168, label %136
    i32 174, label %136
    i32 175, label %136
    i32 176, label %136
    i32 171, label %136
    i32 172, label %136
    i32 173, label %136
    i32 158, label %136
    i32 170, label %136
    i32 169, label %136
    i32 177, label %136
    i32 159, label %136
    i32 160, label %136
    i32 178, label %136
    i32 195, label %136
    i32 193, label %136
    i32 194, label %136
    i32 192, label %136
    i32 191, label %136
    i32 186, label %136
    i32 211, label %136
    i32 212, label %136
    i32 207, label %136
    i32 205, label %136
    i32 206, label %136
    i32 199, label %136
    i32 196, label %136
  ]

77:                                               ; preds = %75
  %78 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %79 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %80 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @SAS_OREJ_NO_DEST, align 8
  %82 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %83 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  br label %143

84:                                               ; preds = %75
  %85 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %86 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %87 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @SAS_OREJ_EPROTO, align 8
  %89 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %90 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  br label %143

91:                                               ; preds = %75
  %92 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %93 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %94 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** @SAS_OREJ_CONN_RATE, align 8
  %96 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %97 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %143

98:                                               ; preds = %75
  %99 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %100 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %101 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @SAS_OREJ_BAD_DEST, align 8
  %103 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %104 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  br label %143

105:                                              ; preds = %75
  %106 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %107 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %108 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** @SAS_OREJ_WRONG_DEST, align 8
  %110 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %111 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  br label %143

112:                                              ; preds = %75, %75, %75
  %113 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %114 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %115 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %117 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %118 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  br label %143

119:                                              ; preds = %75
  %120 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %121 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %122 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  br label %143

123:                                              ; preds = %75
  %124 = load i8*, i8** @SAS_DATA_OVERRUN, align 8
  %125 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %126 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %128 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %127, i32 0, i32 1
  store i8* null, i8** %128, align 8
  br label %143

129:                                              ; preds = %75
  %130 = load i8*, i8** %11, align 8
  %131 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %132 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** @SAS_DATA_UNDERRUN, align 8
  %134 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %135 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  br label %143

136:                                              ; preds = %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75
  %137 = load i8*, i8** @SAS_QUEUE_FULL, align 8
  %138 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %139 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  %140 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %141 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %140, i32 0, i32 0
  store i32 1, i32* %141, align 4
  br label %143

142:                                              ; preds = %75
  br label %143

143:                                              ; preds = %142, %136, %129, %123, %119, %112, %105, %98, %91, %84, %77
  br label %227

144:                                              ; preds = %71
  %145 = load i8*, i8** @SAM_STAT_CHECK_CONDITION, align 8
  %146 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %147 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  br label %227

148:                                              ; preds = %71, %71, %71
  %149 = load i32, i32* %16, align 4
  switch i32 %149, label %218 [
    i32 136, label %150
    i32 137, label %157
    i32 133, label %164
    i32 138, label %171
    i32 141, label %178
    i32 131, label %185
    i32 200, label %192
    i32 198, label %192
    i32 130, label %192
    i32 214, label %199
    i32 213, label %205
    i32 129, label %212
    i32 157, label %212
    i32 139, label %212
    i32 142, label %212
    i32 140, label %212
    i32 134, label %212
    i32 135, label %212
    i32 128, label %212
    i32 153, label %212
    i32 154, label %212
    i32 155, label %212
    i32 148, label %212
    i32 150, label %212
    i32 149, label %212
    i32 151, label %212
    i32 152, label %212
    i32 156, label %212
    i32 147, label %212
    i32 144, label %212
    i32 143, label %212
    i32 162, label %212
    i32 167, label %212
    i32 165, label %212
    i32 166, label %212
    i32 161, label %212
    i32 164, label %212
    i32 168, label %212
    i32 174, label %212
    i32 175, label %212
    i32 176, label %212
    i32 171, label %212
    i32 170, label %212
    i32 172, label %212
    i32 173, label %212
    i32 169, label %212
    i32 177, label %212
    i32 159, label %212
    i32 178, label %212
    i32 195, label %212
    i32 193, label %212
    i32 194, label %212
    i32 192, label %212
    i32 191, label %212
    i32 184, label %212
    i32 183, label %212
    i32 185, label %212
    i32 180, label %212
    i32 179, label %212
    i32 181, label %212
    i32 182, label %212
    i32 211, label %212
    i32 212, label %212
    i32 199, label %212
    i32 197, label %212
    i32 210, label %212
    i32 201, label %212
    i32 202, label %212
    i32 203, label %212
    i32 207, label %212
    i32 205, label %212
    i32 206, label %212
    i32 204, label %212
    i32 209, label %212
    i32 208, label %212
    i32 196, label %212
    i32 160, label %212
    i32 132, label %212
  ]

150:                                              ; preds = %148
  %151 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %152 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %153 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** @SAS_OREJ_NO_DEST, align 8
  %155 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %156 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  br label %222

157:                                              ; preds = %148
  %158 = load i32, i32* @SAS_TASK_UNDELIVERED, align 4
  %159 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %160 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  %161 = load i8*, i8** @SAS_DEV_NO_RESPONSE, align 8
  %162 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %163 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  br label %222

164:                                              ; preds = %148
  %165 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %166 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %167 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load i8*, i8** @SAS_OREJ_EPROTO, align 8
  %169 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %170 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %169, i32 0, i32 2
  store i8* %168, i8** %170, align 8
  br label %222

171:                                              ; preds = %148
  %172 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %173 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %174 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** @SAS_OREJ_CONN_RATE, align 8
  %176 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %177 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %176, i32 0, i32 2
  store i8* %175, i8** %177, align 8
  br label %222

178:                                              ; preds = %148
  %179 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %180 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %181 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %180, i32 0, i32 0
  store i8* %179, i8** %181, align 8
  %182 = load i8*, i8** @SAS_OREJ_CONN_RATE, align 8
  %183 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %184 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %183, i32 0, i32 2
  store i8* %182, i8** %184, align 8
  br label %222

185:                                              ; preds = %148
  %186 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %187 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %188 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  %189 = load i8*, i8** @SAS_OREJ_WRONG_DEST, align 8
  %190 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %191 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %190, i32 0, i32 2
  store i8* %189, i8** %191, align 8
  br label %222

192:                                              ; preds = %148, %148, %148
  %193 = load i8*, i8** @SAS_OPEN_REJECT, align 8
  %194 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %195 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %194, i32 0, i32 0
  store i8* %193, i8** %195, align 8
  %196 = load i8*, i8** @SAS_OREJ_UNKNOWN, align 8
  %197 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %198 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %197, i32 0, i32 2
  store i8* %196, i8** %198, align 8
  br label %222

199:                                              ; preds = %148
  %200 = load i8*, i8** @SAS_DATA_OVERRUN, align 8
  %201 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %202 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  %203 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %204 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %203, i32 0, i32 1
  store i8* null, i8** %204, align 8
  br label %222

205:                                              ; preds = %148
  %206 = load i8*, i8** %11, align 8
  %207 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %208 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %207, i32 0, i32 1
  store i8* %206, i8** %208, align 8
  %209 = load i8*, i8** @SAS_DATA_UNDERRUN, align 8
  %210 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %211 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %210, i32 0, i32 0
  store i8* %209, i8** %211, align 8
  br label %222

212:                                              ; preds = %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148, %148
  %213 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %214 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %213, i32 0, i32 0
  store i32 1, i32* %214, align 4
  %215 = load i8*, i8** @SAS_PHY_DOWN, align 8
  %216 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %217 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %216, i32 0, i32 0
  store i8* %215, i8** %217, align 8
  br label %222

218:                                              ; preds = %148
  %219 = load i8*, i8** @SAS_PROTO_RESPONSE, align 8
  %220 = load %struct.task_status_struct*, %struct.task_status_struct** %9, align 8
  %221 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %220, i32 0, i32 0
  store i8* %219, i8** %221, align 8
  br label %222

222:                                              ; preds = %218, %212, %205, %199, %192, %185, %178, %171, %164, %157, %150
  %223 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %224 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %7, align 8
  %225 = call i32 @hisi_sas_sata_done(%struct.sas_task* %223, %struct.hisi_sas_slot* %224)
  br label %227

226:                                              ; preds = %71
  br label %227

227:                                              ; preds = %226, %222, %144, %143
  ret void
}

declare dso_local %struct.hisi_sas_err_record_v2* @hisi_sas_status_buf_addr_mem(%struct.hisi_sas_slot*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @parse_dma_tx_err_code_v2_hw(i32) #1

declare dso_local i32 @parse_trans_tx_err_code_v2_hw(i8*) #1

declare dso_local i32 @parse_trans_rx_err_code_v2_hw(i8*) #1

declare dso_local i32 @parse_dma_rx_err_code_v2_hw(i8*) #1

declare dso_local i32 @parse_sipc_rx_err_code_v2_hw(i32) #1

declare dso_local i32 @hisi_sas_sata_done(%struct.sas_task*, %struct.hisi_sas_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
