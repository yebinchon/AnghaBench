; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_soft_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_soft_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"FW is not ready\0A\00", align 1
@MBIC_AAP1_ADDR_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Shift Bar4 to 0x%x failed\0A\00", align 1
@MBIC_NMI_ENABLE_VPE0_IOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"MBIC - NMI Enable VPE0 (IOP)= 0x%x\0A\00", align 1
@MBIC_IOP_ADDR_BASE = common dso_local global i32 0, align 4
@MBIC_NMI_ENABLE_VPE0_AAP1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"MBIC - NMI Enable VPE0 (AAP1)= 0x%x\0A\00", align 1
@PCIE_EVENT_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"PCIE -Event Interrupt Enable = 0x%x\0A\00", align 1
@PCIE_EVENT_INTERRUPT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"PCIE - Event Interrupt  = 0x%x\0A\00", align 1
@PCIE_ERROR_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"PCIE -Error Interrupt Enable = 0x%x\0A\00", align 1
@PCIE_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"PCIE - Error Interrupt = 0x%x\0A\00", align 1
@MSGU_SCRATCH_PAD_1 = common dso_local global i32 0, align 4
@SCRATCH_PAD1_RST = common dso_local global i32 0, align 4
@MSGU_HOST_SCRATCH_PAD_0 = common dso_local global i32 0, align 4
@GSM_ADDR_BASE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [56 x i8] c"GSM 0x0(0x00007b88)-GSM Configuration and Reset = 0x%x\0A\00", align 1
@GSM_CONFIG_RESET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [84 x i8] c"GSM 0x0 (0x00007b88 ==> 0x00004088) - GSM Configuration and Reset is set to = 0x%x\0A\00", align 1
@GSM_READ_ADDR_PARITY_CHECK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [56 x i8] c"GSM 0x700038 - Read Address Parity Check Enable = 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"GSM 0x700038 - Read Address Parity Check Enableis set to = 0x%x\0A\00", align 1
@GSM_WRITE_ADDR_PARITY_CHECK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [57 x i8] c"GSM 0x700040 - Write Address Parity Check Enable = 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"GSM 0x700040 - Write Address Parity Check Enable is set to = 0x%x\0A\00", align 1
@GSM_WRITE_DATA_PARITY_CHECK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [54 x i8] c"GSM 0x300048 - Write Data Parity Check Enable = 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"GSM 0x300048 - Write Data Parity Check Enableis set to = 0x%x\0A\00", align 1
@GPIO_ADDR_BASE = common dso_local global i32 0, align 4
@GPIO_GPIO_0_0UTPUT_CTL_OFFSET = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [38 x i8] c"GPIO Output Control Register: = 0x%x\0A\00", align 1
@SPC_TOP_LEVEL_ADDR_BASE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"SPC Shift Bar4 to 0x%x failed\0A\00", align 1
@SPC_REG_RESET = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [47 x i8] c"Top Register before resetting IOP/AAP1:= 0x%x\0A\00", align 1
@SPC_REG_RESET_PCS_IOP_SS = common dso_local global i32 0, align 4
@SPC_REG_RESET_PCS_AAP1_SS = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [49 x i8] c"Top Register before resetting BDMA/OSSP: = 0x%x\0A\00", align 1
@SPC_REG_RESET_BDMA_CORE = common dso_local global i32 0, align 4
@SPC_REG_RESET_OSSP = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [50 x i8] c"Top Register before bringing up BDMA/OSSP:= 0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"GSM 0x0 (0x00007b88)-GSM Configuration and Reset = 0x%x\0A\00", align 1
@GSM_CONFIG_RESET_VALUE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [80 x i8] c"GSM (0x00004088 ==> 0x00007b88) - GSM Configuration and Reset is set to = 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [66 x i8] c"GSM 0x700038 - Read Address Parity Check Enable is set to = 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"GSM 0x700048 - Write Data Parity Check Enableis set to = 0x%x\0A\00", align 1
@SPC_SOFT_RESET_SIGNATURE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [51 x i8] c"TIMEOUT : ToggleVal 0x%x,MSGU_SCRATCH_PAD1 = 0x%x\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"SCRATCH_PAD0 value = 0x%x\0A\00", align 1
@MSGU_SCRATCH_PAD_0 = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [27 x i8] c"SCRATCH_PAD2 value = 0x%x\0A\00", align 1
@MSGU_SCRATCH_PAD_2 = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [27 x i8] c"SCRATCH_PAD3 value = 0x%x\0A\00", align 1
@MSGU_SCRATCH_PAD_3 = common dso_local global i32 0, align 4
@MSGU_ODCR = common dso_local global i32 0, align 4
@ODCR_CLEAR_ALL = common dso_local global i32 0, align 4
@MSGU_ODMR = common dso_local global i32 0, align 4
@ODMR_CLEAR_ALL = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [34 x i8] c"FW not ready SCRATCH_PAD1 = 0x%x\0A\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"FW not ready SCRATCH_PAD2 = 0x%x\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"SPC soft reset Complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm8001_chip_soft_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_chip_soft_rst(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i32 623561677, i32* %10, align 4
  %12 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %13 = call i64 @soft_reset_ready_check(%struct.pm8001_hba_info* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %17 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %16, i32 %17)
  store i32 -1, i32* %2, align 4
  br label %518

19:                                               ; preds = %1
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %21 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %20, i32 0, i32 0
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %25 = load i32, i32* @MBIC_AAP1_ADDR_BASE, align 4
  %26 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %24, i32 %25)
  %27 = icmp eq i32 -1, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %30 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %29, i32 0, i32 0
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %34 = load i32, i32* @MBIC_AAP1_ADDR_BASE, align 4
  %35 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %33, i32 %35)
  store i32 -1, i32* %2, align 4
  br label %518

37:                                               ; preds = %19
  %38 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %39 = load i32, i32* @MBIC_NMI_ENABLE_VPE0_IOP, align 4
  %40 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %38, i32 2, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %41, i32 %43)
  %45 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %46 = load i32, i32* @MBIC_NMI_ENABLE_VPE0_IOP, align 4
  %47 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %45, i32 2, i32 %46, i32 0)
  %48 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %49 = load i32, i32* @MBIC_IOP_ADDR_BASE, align 4
  %50 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %48, i32 %49)
  %51 = icmp eq i32 -1, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %37
  %53 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %54 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %53, i32 0, i32 0
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %58 = load i32, i32* @MBIC_IOP_ADDR_BASE, align 4
  %59 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %57, i32 %59)
  store i32 -1, i32* %2, align 4
  br label %518

61:                                               ; preds = %37
  %62 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %63 = load i32, i32* @MBIC_NMI_ENABLE_VPE0_AAP1, align 4
  %64 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %62, i32 2, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %65, i32 %67)
  %69 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %70 = load i32, i32* @MBIC_NMI_ENABLE_VPE0_AAP1, align 4
  %71 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %69, i32 2, i32 %70, i32 0)
  %72 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %73 = load i32, i32* @PCIE_EVENT_INTERRUPT_ENABLE, align 4
  %74 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %72, i32 1, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %75, i32 %77)
  %79 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %80 = load i32, i32* @PCIE_EVENT_INTERRUPT_ENABLE, align 4
  %81 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %79, i32 1, i32 %80, i32 0)
  %82 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %83 = load i32, i32* @PCIE_EVENT_INTERRUPT, align 4
  %84 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %82, i32 1, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  %88 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %85, i32 %87)
  %89 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %90 = load i32, i32* @PCIE_EVENT_INTERRUPT, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %89, i32 1, i32 %90, i32 %91)
  %93 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %94 = load i32, i32* @PCIE_ERROR_INTERRUPT_ENABLE, align 4
  %95 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %93, i32 1, i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %96, i32 %98)
  %100 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %101 = load i32, i32* @PCIE_ERROR_INTERRUPT_ENABLE, align 4
  %102 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %100, i32 1, i32 %101, i32 0)
  %103 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %104 = load i32, i32* @PCIE_ERROR_INTERRUPT, align 4
  %105 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %103, i32 1, i32 %104)
  store i32 %105, i32* %4, align 4
  %106 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %107)
  %109 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %106, i32 %108)
  %110 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %111 = load i32, i32* @PCIE_ERROR_INTERRUPT, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %110, i32 1, i32 %111, i32 %112)
  %114 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %115 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %116 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %114, i32 0, i32 %115)
  %117 = load i32, i32* @SCRATCH_PAD1_RST, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @SCRATCH_PAD1_RST, align 4
  %121 = xor i32 %119, %120
  store i32 %121, i32* %5, align 4
  %122 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %123 = load i32, i32* @MSGU_HOST_SCRATCH_PAD_0, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %122, i32 0, i32 %123, i32 %124)
  %126 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %127 = load i32, i32* @GSM_ADDR_BASE, align 4
  %128 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %126, i32 %127)
  %129 = icmp eq i32 -1, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %61
  %131 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %132 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %131, i32 0, i32 0
  %133 = load i64, i64* %11, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i64 %133)
  %135 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %136 = load i32, i32* @GSM_ADDR_BASE, align 4
  %137 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %135, i32 %137)
  store i32 -1, i32* %2, align 4
  br label %518

139:                                              ; preds = %61
  %140 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %141 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %142 = load i32, i32* @GSM_CONFIG_RESET, align 4
  %143 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %141, i32 2, i32 %142)
  %144 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %143)
  %145 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %140, i32 %144)
  %146 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %147 = load i32, i32* @GSM_CONFIG_RESET, align 4
  %148 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %146, i32 2, i32 %147)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = and i32 %149, -15105
  store i32 %150, i32* %4, align 4
  %151 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %152 = load i32, i32* @GSM_CONFIG_RESET, align 4
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %151, i32 2, i32 %152, i32 %153)
  %155 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %156 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %157 = load i32, i32* @GSM_CONFIG_RESET, align 4
  %158 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %156, i32 2, i32 %157)
  %159 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0), i32 %158)
  %160 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %155, i32 %159)
  %161 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %162 = load i32, i32* @GSM_READ_ADDR_PARITY_CHECK, align 4
  %163 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %161, i32 2, i32 %162)
  store i32 %163, i32* %7, align 4
  %164 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i32 %165)
  %167 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %164, i32 %166)
  %168 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %169 = load i32, i32* @GSM_READ_ADDR_PARITY_CHECK, align 4
  %170 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %168, i32 2, i32 %169, i32 0)
  %171 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %172 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %173 = load i32, i32* @GSM_READ_ADDR_PARITY_CHECK, align 4
  %174 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %172, i32 2, i32 %173)
  %175 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0), i32 %174)
  %176 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %171, i32 %175)
  %177 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %178 = load i32, i32* @GSM_WRITE_ADDR_PARITY_CHECK, align 4
  %179 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %177, i32 2, i32 %178)
  store i32 %179, i32* %8, align 4
  %180 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0), i32 %181)
  %183 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %180, i32 %182)
  %184 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %185 = load i32, i32* @GSM_WRITE_ADDR_PARITY_CHECK, align 4
  %186 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %184, i32 2, i32 %185, i32 0)
  %187 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %188 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %189 = load i32, i32* @GSM_WRITE_ADDR_PARITY_CHECK, align 4
  %190 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %188, i32 2, i32 %189)
  %191 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0), i32 %190)
  %192 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %187, i32 %191)
  %193 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %194 = load i32, i32* @GSM_WRITE_DATA_PARITY_CHECK, align 4
  %195 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %193, i32 2, i32 %194)
  store i32 %195, i32* %9, align 4
  %196 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i32 %197)
  %199 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %196, i32 %198)
  %200 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %201 = load i32, i32* @GSM_WRITE_DATA_PARITY_CHECK, align 4
  %202 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %200, i32 2, i32 %201, i32 0)
  %203 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %204 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %205 = load i32, i32* @GSM_WRITE_DATA_PARITY_CHECK, align 4
  %206 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %204, i32 2, i32 %205)
  %207 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i64 0, i64 0), i32 %206)
  %208 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %203, i32 %207)
  %209 = call i32 @udelay(i32 10)
  %210 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %211 = load i32, i32* @GPIO_ADDR_BASE, align 4
  %212 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %210, i32 %211)
  %213 = icmp eq i32 -1, %212
  br i1 %213, label %214, label %223

214:                                              ; preds = %139
  %215 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %216 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %215, i32 0, i32 0
  %217 = load i64, i64* %11, align 8
  %218 = call i32 @spin_unlock_irqrestore(i32* %216, i64 %217)
  %219 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %220 = load i32, i32* @GPIO_ADDR_BASE, align 4
  %221 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %220)
  %222 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %219, i32 %221)
  store i32 -1, i32* %2, align 4
  br label %518

223:                                              ; preds = %139
  %224 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %225 = load i32, i32* @GPIO_GPIO_0_0UTPUT_CTL_OFFSET, align 4
  %226 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %224, i32 2, i32 %225)
  store i32 %226, i32* %4, align 4
  %227 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %228 = load i32, i32* %4, align 4
  %229 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 %228)
  %230 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %227, i32 %229)
  %231 = load i32, i32* %4, align 4
  %232 = and i32 %231, -4
  store i32 %232, i32* %4, align 4
  %233 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %234 = load i32, i32* @GPIO_GPIO_0_0UTPUT_CTL_OFFSET, align 4
  %235 = load i32, i32* %4, align 4
  %236 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %233, i32 2, i32 %234, i32 %235)
  %237 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %238 = load i32, i32* @SPC_TOP_LEVEL_ADDR_BASE, align 4
  %239 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %237, i32 %238)
  %240 = icmp eq i32 -1, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %223
  %242 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %243 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %242, i32 0, i32 0
  %244 = load i64, i64* %11, align 8
  %245 = call i32 @spin_unlock_irqrestore(i32* %243, i64 %244)
  %246 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %247 = load i32, i32* @SPC_TOP_LEVEL_ADDR_BASE, align 4
  %248 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %247)
  %249 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %246, i32 %248)
  store i32 -1, i32* %2, align 4
  br label %518

250:                                              ; preds = %223
  %251 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %252 = load i32, i32* @SPC_REG_RESET, align 4
  %253 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %251, i32 2, i32 %252)
  store i32 %253, i32* %4, align 4
  %254 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %255 = load i32, i32* %4, align 4
  %256 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i32 %255)
  %257 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %254, i32 %256)
  %258 = load i32, i32* @SPC_REG_RESET_PCS_IOP_SS, align 4
  %259 = load i32, i32* @SPC_REG_RESET_PCS_AAP1_SS, align 4
  %260 = or i32 %258, %259
  %261 = xor i32 %260, -1
  %262 = load i32, i32* %4, align 4
  %263 = and i32 %262, %261
  store i32 %263, i32* %4, align 4
  %264 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %265 = load i32, i32* @SPC_REG_RESET, align 4
  %266 = load i32, i32* %4, align 4
  %267 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %264, i32 2, i32 %265, i32 %266)
  %268 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %269 = load i32, i32* @SPC_REG_RESET, align 4
  %270 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %268, i32 2, i32 %269)
  store i32 %270, i32* %4, align 4
  %271 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %272 = load i32, i32* %4, align 4
  %273 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0), i32 %272)
  %274 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %271, i32 %273)
  %275 = load i32, i32* @SPC_REG_RESET_BDMA_CORE, align 4
  %276 = load i32, i32* @SPC_REG_RESET_OSSP, align 4
  %277 = or i32 %275, %276
  %278 = xor i32 %277, -1
  %279 = load i32, i32* %4, align 4
  %280 = and i32 %279, %278
  store i32 %280, i32* %4, align 4
  %281 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %282 = load i32, i32* @SPC_REG_RESET, align 4
  %283 = load i32, i32* %4, align 4
  %284 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %281, i32 2, i32 %282, i32 %283)
  %285 = call i32 @udelay(i32 10)
  %286 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %287 = load i32, i32* @SPC_REG_RESET, align 4
  %288 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %286, i32 2, i32 %287)
  store i32 %288, i32* %4, align 4
  %289 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %290 = load i32, i32* %4, align 4
  %291 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i64 0, i64 0), i32 %290)
  %292 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %289, i32 %291)
  %293 = load i32, i32* @SPC_REG_RESET_BDMA_CORE, align 4
  %294 = load i32, i32* @SPC_REG_RESET_OSSP, align 4
  %295 = or i32 %293, %294
  %296 = load i32, i32* %4, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %4, align 4
  %298 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %299 = load i32, i32* @SPC_REG_RESET, align 4
  %300 = load i32, i32* %4, align 4
  %301 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %298, i32 2, i32 %299, i32 %300)
  %302 = call i32 @udelay(i32 10)
  %303 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %304 = load i32, i32* @GSM_ADDR_BASE, align 4
  %305 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %303, i32 %304)
  %306 = icmp eq i32 -1, %305
  br i1 %306, label %307, label %316

307:                                              ; preds = %250
  %308 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %309 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %308, i32 0, i32 0
  %310 = load i64, i64* %11, align 8
  %311 = call i32 @spin_unlock_irqrestore(i32* %309, i64 %310)
  %312 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %313 = load i32, i32* @GSM_ADDR_BASE, align 4
  %314 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %313)
  %315 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %312, i32 %314)
  store i32 -1, i32* %2, align 4
  br label %518

316:                                              ; preds = %250
  %317 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %318 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %319 = load i32, i32* @GSM_CONFIG_RESET, align 4
  %320 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %318, i32 2, i32 %319)
  %321 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.21, i64 0, i64 0), i32 %320)
  %322 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %317, i32 %321)
  %323 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %324 = load i32, i32* @GSM_CONFIG_RESET, align 4
  %325 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %323, i32 2, i32 %324)
  store i32 %325, i32* %4, align 4
  %326 = load i32, i32* @GSM_CONFIG_RESET_VALUE, align 4
  %327 = load i32, i32* %4, align 4
  %328 = or i32 %327, %326
  store i32 %328, i32* %4, align 4
  %329 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %330 = load i32, i32* @GSM_CONFIG_RESET, align 4
  %331 = load i32, i32* %4, align 4
  %332 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %329, i32 2, i32 %330, i32 %331)
  %333 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %334 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %335 = load i32, i32* @GSM_CONFIG_RESET, align 4
  %336 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %334, i32 2, i32 %335)
  %337 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.22, i64 0, i64 0), i32 %336)
  %338 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %333, i32 %337)
  %339 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %340 = load i32, i32* @GSM_READ_ADDR_PARITY_CHECK, align 4
  %341 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %339, i32 2, i32 %340)
  store i32 %341, i32* %4, align 4
  %342 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %343 = load i32, i32* %4, align 4
  %344 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i32 %343)
  %345 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %342, i32 %344)
  %346 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %347 = load i32, i32* @GSM_READ_ADDR_PARITY_CHECK, align 4
  %348 = load i32, i32* %7, align 4
  %349 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %346, i32 2, i32 %347, i32 %348)
  %350 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %351 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %352 = load i32, i32* @GSM_READ_ADDR_PARITY_CHECK, align 4
  %353 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %351, i32 2, i32 %352)
  %354 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.23, i64 0, i64 0), i32 %353)
  %355 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %350, i32 %354)
  %356 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %357 = load i32, i32* @GSM_WRITE_ADDR_PARITY_CHECK, align 4
  %358 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %356, i32 2, i32 %357)
  store i32 %358, i32* %4, align 4
  %359 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %360 = load i32, i32* @GSM_WRITE_ADDR_PARITY_CHECK, align 4
  %361 = load i32, i32* %8, align 4
  %362 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %359, i32 2, i32 %360, i32 %361)
  %363 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %364 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %365 = load i32, i32* @GSM_WRITE_ADDR_PARITY_CHECK, align 4
  %366 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %364, i32 2, i32 %365)
  %367 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0), i32 %366)
  %368 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %363, i32 %367)
  %369 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %370 = load i32, i32* @GSM_WRITE_DATA_PARITY_CHECK, align 4
  %371 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %369, i32 2, i32 %370)
  store i32 %371, i32* %4, align 4
  %372 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %373 = load i32, i32* @GSM_WRITE_DATA_PARITY_CHECK, align 4
  %374 = load i32, i32* %9, align 4
  %375 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %372, i32 2, i32 %373, i32 %374)
  %376 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %377 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %378 = load i32, i32* @GSM_WRITE_DATA_PARITY_CHECK, align 4
  %379 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %377, i32 2, i32 %378)
  %380 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.24, i64 0, i64 0), i32 %379)
  %381 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %376, i32 %380)
  %382 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %383 = load i32, i32* @SPC_TOP_LEVEL_ADDR_BASE, align 4
  %384 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %382, i32 %383)
  %385 = icmp eq i32 -1, %384
  br i1 %385, label %386, label %395

386:                                              ; preds = %316
  %387 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %388 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %387, i32 0, i32 0
  %389 = load i64, i64* %11, align 8
  %390 = call i32 @spin_unlock_irqrestore(i32* %388, i64 %389)
  %391 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %392 = load i32, i32* @SPC_TOP_LEVEL_ADDR_BASE, align 4
  %393 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %392)
  %394 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %391, i32 %393)
  store i32 -1, i32* %2, align 4
  br label %518

395:                                              ; preds = %316
  %396 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %397 = load i32, i32* @SPC_REG_RESET, align 4
  %398 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %396, i32 2, i32 %397)
  store i32 %398, i32* %4, align 4
  %399 = load i32, i32* @SPC_REG_RESET_PCS_IOP_SS, align 4
  %400 = load i32, i32* @SPC_REG_RESET_PCS_AAP1_SS, align 4
  %401 = or i32 %399, %400
  %402 = load i32, i32* %4, align 4
  %403 = or i32 %402, %401
  store i32 %403, i32* %4, align 4
  %404 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %405 = load i32, i32* @SPC_REG_RESET, align 4
  %406 = load i32, i32* %4, align 4
  %407 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %404, i32 2, i32 %405, i32 %406)
  %408 = call i32 @udelay(i32 10)
  %409 = load i32, i32* %10, align 4
  %410 = load i32, i32* @SPC_SOFT_RESET_SIGNATURE, align 4
  %411 = icmp eq i32 %409, %410
  br i1 %411, label %412, label %508

412:                                              ; preds = %395
  store i32 2000000, i32* %6, align 4
  br label %413

413:                                              ; preds = %428, %412
  %414 = call i32 @udelay(i32 1)
  %415 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %416 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %417 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %415, i32 0, i32 %416)
  %418 = load i32, i32* @SCRATCH_PAD1_RST, align 4
  %419 = and i32 %417, %418
  store i32 %419, i32* %4, align 4
  br label %420

420:                                              ; preds = %413
  %421 = load i32, i32* %4, align 4
  %422 = load i32, i32* %5, align 4
  %423 = icmp ne i32 %421, %422
  br i1 %423, label %424, label %428

424:                                              ; preds = %420
  %425 = load i32, i32* %6, align 4
  %426 = add nsw i32 %425, -1
  store i32 %426, i32* %6, align 4
  %427 = icmp ne i32 %426, 0
  br label %428

428:                                              ; preds = %424, %420
  %429 = phi i1 [ false, %420 ], [ %427, %424 ]
  br i1 %429, label %413, label %430

430:                                              ; preds = %428
  %431 = load i32, i32* %6, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %464, label %433

433:                                              ; preds = %430
  %434 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %435 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %436 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %434, i32 0, i32 %435)
  store i32 %436, i32* %4, align 4
  %437 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %438 = load i32, i32* %5, align 4
  %439 = load i32, i32* %4, align 4
  %440 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 %438, i32 %439)
  %441 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %437, i32 %440)
  %442 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %443 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %444 = load i32, i32* @MSGU_SCRATCH_PAD_0, align 4
  %445 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %443, i32 0, i32 %444)
  %446 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 %445)
  %447 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %442, i32 %446)
  %448 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %449 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %450 = load i32, i32* @MSGU_SCRATCH_PAD_2, align 4
  %451 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %449, i32 0, i32 %450)
  %452 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 %451)
  %453 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %448, i32 %452)
  %454 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %455 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %456 = load i32, i32* @MSGU_SCRATCH_PAD_3, align 4
  %457 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %455, i32 0, i32 %456)
  %458 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %457)
  %459 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %454, i32 %458)
  %460 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %461 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %460, i32 0, i32 0
  %462 = load i64, i64* %11, align 8
  %463 = call i32 @spin_unlock_irqrestore(i32* %461, i64 %462)
  store i32 -1, i32* %2, align 4
  br label %518

464:                                              ; preds = %430
  %465 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %466 = load i32, i32* @MSGU_ODCR, align 4
  %467 = load i32, i32* @ODCR_CLEAR_ALL, align 4
  %468 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %465, i32 0, i32 %466, i32 %467)
  %469 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %470 = load i32, i32* @MSGU_ODMR, align 4
  %471 = load i32, i32* @ODMR_CLEAR_ALL, align 4
  %472 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %469, i32 0, i32 %470, i32 %471)
  %473 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %474 = call i32 @check_fw_ready(%struct.pm8001_hba_info* %473)
  %475 = icmp eq i32 %474, -1
  br i1 %475, label %476, label %507

476:                                              ; preds = %464
  %477 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %478 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %479 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %477, i32 0, i32 %478)
  store i32 %479, i32* %4, align 4
  %480 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %481 = load i32, i32* %4, align 4
  %482 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i32 %481)
  %483 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %480, i32 %482)
  %484 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %485 = load i32, i32* @MSGU_SCRATCH_PAD_2, align 4
  %486 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %484, i32 0, i32 %485)
  store i32 %486, i32* %4, align 4
  %487 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %488 = load i32, i32* %4, align 4
  %489 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0), i32 %488)
  %490 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %487, i32 %489)
  %491 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %492 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %493 = load i32, i32* @MSGU_SCRATCH_PAD_0, align 4
  %494 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %492, i32 0, i32 %493)
  %495 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 %494)
  %496 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %491, i32 %495)
  %497 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %498 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %499 = load i32, i32* @MSGU_SCRATCH_PAD_3, align 4
  %500 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %498, i32 0, i32 %499)
  %501 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 %500)
  %502 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %497, i32 %501)
  %503 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %504 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %503, i32 0, i32 0
  %505 = load i64, i64* %11, align 8
  %506 = call i32 @spin_unlock_irqrestore(i32* %504, i64 %505)
  store i32 -1, i32* %2, align 4
  br label %518

507:                                              ; preds = %464
  br label %508

508:                                              ; preds = %507, %395
  %509 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %510 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %509, i32 0)
  %511 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %512 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %511, i32 0, i32 0
  %513 = load i64, i64* %11, align 8
  %514 = call i32 @spin_unlock_irqrestore(i32* %512, i64 %513)
  %515 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %516 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0))
  %517 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %515, i32 %516)
  store i32 0, i32* %2, align 4
  br label %518

518:                                              ; preds = %508, %476, %433, %386, %307, %241, %214, %130, %52, %28, %15
  %519 = load i32, i32* %2, align 4
  ret i32 %519
}

declare dso_local i64 @soft_reset_ready_check(%struct.pm8001_hba_info*) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pm8001_bar4_shift(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @check_fw_ready(%struct.pm8001_hba_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
