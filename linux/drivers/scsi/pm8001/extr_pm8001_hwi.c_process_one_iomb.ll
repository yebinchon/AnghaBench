; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_process_one_iomb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_process_one_iomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"process_one_iomb:\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"OPC_OUB_ECHO\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"OPC_OUB_HW_EVENT\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"OPC_OUB_SSP_COMP\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"OPC_OUB_SMP_COMP\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"OPC_OUB_LOCAL_PHY_CNTRL\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"OPC_OUB_DEV_REGIST\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"unregister the device\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"OPC_OUB_GET_DEV_HANDLE\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"OPC_OUB_SATA_COMP\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"OPC_OUB_SATA_EVENT\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"OPC_OUB_SSP_EVENT\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"OPC_OUB_DEV_HANDLE_ARRIV\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"OPC_OUB_SSP_RECV_EVENT\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"OPC_OUB_DEV_INFO\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"OPC_OUB_FW_FLASH_UPDATE\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"OPC_OUB_GPIO_RESPONSE\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"OPC_OUB_GPIO_EVENT\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"OPC_OUB_GENERAL_EVENT\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"OPC_OUB_SSP_ABORT_RSP\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"OPC_OUB_SATA_ABORT_RSP\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"OPC_OUB_SAS_DIAG_MODE_START_END\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"OPC_OUB_SAS_DIAG_EXECUTE\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"OPC_OUB_GET_TIME_STAMP\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"OPC_OUB_SAS_HW_EVENT_ACK\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"OPC_OUB_PORT_CONTROL\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"OPC_OUB_SMP_ABORT_RSP\0A\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"OPC_OUB_GET_NVMD_DATA\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"OPC_OUB_SET_NVMD_DATA\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"OPC_OUB_DEVICE_HANDLE_REMOVAL\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"OPC_OUB_SET_DEVICE_STATE\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"OPC_OUB_GET_DEVICE_STATE\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"OPC_OUB_SET_DEV_INFO\0A\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"OPC_OUB_SAS_RE_INITIALIZE\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"Unknown outbound Queue IOMB OPC = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i8*)* @process_one_iomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_one_iomb(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @le32_to_cpu to i32 (i32, ...)*)(i32 %10)
  %12 = and i32 %11, 4095
  store i32 %12, i32* %6, align 4
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %14 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %200 [
    i32 155, label %17
    i32 146, label %21
    i32 130, label %28
    i32 132, label %35
    i32 145, label %42
    i32 156, label %49
    i32 160, label %56
    i32 151, label %63
    i32 138, label %67
    i32 137, label %74
    i32 129, label %81
    i32 158, label %88
    i32 128, label %92
    i32 157, label %96
    i32 154, label %100
    i32 147, label %107
    i32 148, label %111
    i32 153, label %115
    i32 131, label %122
    i32 139, label %129
    i32 142, label %136
    i32 143, label %140
    i32 149, label %144
    i32 141, label %148
    i32 144, label %152
    i32 133, label %156
    i32 150, label %163
    i32 134, label %170
    i32 159, label %177
    i32 136, label %181
    i32 152, label %188
    i32 135, label %192
    i32 140, label %196
  ]

17:                                               ; preds = %2
  %18 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %19 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %18, i32 %19)
  br label %205

21:                                               ; preds = %2
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %23 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %22, i32 %23)
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @mpi_hw_event(%struct.pm8001_hba_info* %25, i8* %26)
  br label %205

28:                                               ; preds = %2
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %30 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %29, i32 %30)
  %32 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @mpi_ssp_completion(%struct.pm8001_hba_info* %32, i8* %33)
  br label %205

35:                                               ; preds = %2
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %37 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %38 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %36, i32 %37)
  %39 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @mpi_smp_completion(%struct.pm8001_hba_info* %39, i8* %40)
  br label %205

42:                                               ; preds = %2
  %43 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %44 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %45 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %43, i32 %44)
  %46 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @pm8001_mpi_local_phy_ctl(%struct.pm8001_hba_info* %46, i8* %47)
  br label %205

49:                                               ; preds = %2
  %50 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %51 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %52 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %50, i32 %51)
  %53 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @pm8001_mpi_reg_resp(%struct.pm8001_hba_info* %53, i8* %54)
  br label %205

56:                                               ; preds = %2
  %57 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %58 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %59 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %57, i32 %58)
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @pm8001_mpi_dereg_resp(%struct.pm8001_hba_info* %60, i8* %61)
  br label %205

63:                                               ; preds = %2
  %64 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %65 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %66 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %64, i32 %65)
  br label %205

67:                                               ; preds = %2
  %68 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %69 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %70 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %68, i32 %69)
  %71 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @mpi_sata_completion(%struct.pm8001_hba_info* %71, i8* %72)
  br label %205

74:                                               ; preds = %2
  %75 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %76 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %77 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %75, i32 %76)
  %78 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @mpi_sata_event(%struct.pm8001_hba_info* %78, i8* %79)
  br label %205

81:                                               ; preds = %2
  %82 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %83 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %84 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %82, i32 %83)
  %85 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @mpi_ssp_event(%struct.pm8001_hba_info* %85, i8* %86)
  br label %205

88:                                               ; preds = %2
  %89 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %90 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %91 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %89, i32 %90)
  br label %205

92:                                               ; preds = %2
  %93 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %94 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %95 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %93, i32 %94)
  br label %205

96:                                               ; preds = %2
  %97 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %98 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %99 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %97, i32 %98)
  br label %205

100:                                              ; preds = %2
  %101 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %102 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %103 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %101, i32 %102)
  %104 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @pm8001_mpi_fw_flash_update_resp(%struct.pm8001_hba_info* %104, i8* %105)
  br label %205

107:                                              ; preds = %2
  %108 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %109 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %110 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %108, i32 %109)
  br label %205

111:                                              ; preds = %2
  %112 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %113 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %114 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %112, i32 %113)
  br label %205

115:                                              ; preds = %2
  %116 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %117 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %118 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %116, i32 %117)
  %119 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 @pm8001_mpi_general_event(%struct.pm8001_hba_info* %119, i8* %120)
  br label %205

122:                                              ; preds = %2
  %123 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %124 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %125 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %123, i32 %124)
  %126 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = call i32 @pm8001_mpi_task_abort_resp(%struct.pm8001_hba_info* %126, i8* %127)
  br label %205

129:                                              ; preds = %2
  %130 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %131 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  %132 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %130, i32 %131)
  %133 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 @pm8001_mpi_task_abort_resp(%struct.pm8001_hba_info* %133, i8* %134)
  br label %205

136:                                              ; preds = %2
  %137 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %138 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %139 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %137, i32 %138)
  br label %205

140:                                              ; preds = %2
  %141 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %142 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0))
  %143 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %141, i32 %142)
  br label %205

144:                                              ; preds = %2
  %145 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %146 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  %147 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %145, i32 %146)
  br label %205

148:                                              ; preds = %2
  %149 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %150 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  %151 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %149, i32 %150)
  br label %205

152:                                              ; preds = %2
  %153 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %154 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  %155 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %153, i32 %154)
  br label %205

156:                                              ; preds = %2
  %157 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %158 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0))
  %159 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %157, i32 %158)
  %160 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %161 = load i8*, i8** %4, align 8
  %162 = call i32 @pm8001_mpi_task_abort_resp(%struct.pm8001_hba_info* %160, i8* %161)
  br label %205

163:                                              ; preds = %2
  %164 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %165 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0))
  %166 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %164, i32 %165)
  %167 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %168 = load i8*, i8** %4, align 8
  %169 = call i32 @pm8001_mpi_get_nvmd_resp(%struct.pm8001_hba_info* %167, i8* %168)
  br label %205

170:                                              ; preds = %2
  %171 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %172 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0))
  %173 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %171, i32 %172)
  %174 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %175 = load i8*, i8** %4, align 8
  %176 = call i32 @pm8001_mpi_set_nvmd_resp(%struct.pm8001_hba_info* %174, i8* %175)
  br label %205

177:                                              ; preds = %2
  %178 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %179 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0))
  %180 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %178, i32 %179)
  br label %205

181:                                              ; preds = %2
  %182 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %183 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0))
  %184 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %182, i32 %183)
  %185 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %186 = load i8*, i8** %4, align 8
  %187 = call i32 @pm8001_mpi_set_dev_state_resp(%struct.pm8001_hba_info* %185, i8* %186)
  br label %205

188:                                              ; preds = %2
  %189 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %190 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0))
  %191 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %189, i32 %190)
  br label %205

192:                                              ; preds = %2
  %193 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %194 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0))
  %195 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %193, i32 %194)
  br label %205

196:                                              ; preds = %2
  %197 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %198 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0))
  %199 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %197, i32 %198)
  br label %205

200:                                              ; preds = %2
  %201 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %202 = load i32, i32* %6, align 4
  %203 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.34, i64 0, i64 0), i32 %202)
  %204 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %201, i32 %203)
  br label %205

205:                                              ; preds = %200, %196, %192, %188, %181, %177, %170, %163, %156, %152, %148, %144, %140, %136, %129, %122, %115, %111, %107, %100, %96, %92, %88, %81, %74, %67, %63, %56, %49, %42, %35, %28, %21, %17
  ret void
}

declare dso_local i32 @le32_to_cpu(...) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @mpi_hw_event(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @mpi_ssp_completion(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @mpi_smp_completion(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @pm8001_mpi_local_phy_ctl(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @pm8001_mpi_reg_resp(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @pm8001_mpi_dereg_resp(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @mpi_sata_completion(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @mpi_sata_event(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @mpi_ssp_event(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @pm8001_mpi_fw_flash_update_resp(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @pm8001_mpi_general_event(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @pm8001_mpi_task_abort_resp(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @pm8001_mpi_get_nvmd_resp(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @pm8001_mpi_set_nvmd_resp(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @pm8001_mpi_set_dev_state_resp(%struct.pm8001_hba_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
