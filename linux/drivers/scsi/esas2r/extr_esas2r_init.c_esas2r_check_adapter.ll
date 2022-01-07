; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_check_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_check_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AF_CHPRST_DETECTED = common dso_local global i32 0, align 4
@MU_INT_MASK_OUT = common dso_local global i32 0, align 4
@ESAS2R_INT_DIS_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@MU_DOORBELL_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to access registers\00", align 1
@DRBL_FORCE_INT = common dso_local global i32 0, align 4
@DRBL_FW_VER_MSK = common dso_local global i32 0, align 4
@DRBL_FW_VER_0 = common dso_local global i32 0, align 4
@AF_LEGACY_SGE_MODE = common dso_local global i32 0, align 4
@esas2r_build_sg_list_sge = common dso_local global i32 0, align 4
@DRBL_FW_VER_1 = common dso_local global i32 0, align 4
@esas2r_build_sg_list_prd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown firmware version\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"FW ready TMO\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"firmware start has timed out\00", align 1
@MU_DOORBELL_IN = common dso_local global i32 0, align 4
@DRBL_MSG_IFC_DOWN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"timeout waiting for interface down\00", align 1
@MU_IN_LIST_CONFIG = common dso_local global i32 0, align 4
@MU_ILC_ENABLE = common dso_local global i32 0, align 4
@MU_OUT_LIST_CONFIG = common dso_local global i32 0, align 4
@MU_OLC_ENABLE = common dso_local global i32 0, align 4
@MU_IN_LIST_ADDR_LO = common dso_local global i32 0, align 4
@MU_IN_LIST_ADDR_HI = common dso_local global i32 0, align 4
@MU_OUT_LIST_ADDR_LO = common dso_local global i32 0, align 4
@MU_OUT_LIST_ADDR_HI = common dso_local global i32 0, align 4
@MU_OUT_LIST_COPY_PTR_LO = common dso_local global i32 0, align 4
@MU_OUT_LIST_COPY_PTR_HI = common dso_local global i32 0, align 4
@AF_COMM_LIST_TOGGLE = common dso_local global i32 0, align 4
@MU_IN_LIST_WRITE = common dso_local global i32 0, align 4
@MU_ILW_TOGGLE = common dso_local global i32 0, align 4
@MU_OUT_LIST_COPY = common dso_local global i32 0, align 4
@MU_OLC_TOGGLE = common dso_local global i32 0, align 4
@MU_IN_LIST_READ = common dso_local global i32 0, align 4
@MU_ILR_TOGGLE = common dso_local global i32 0, align 4
@MU_OUT_LIST_WRITE = common dso_local global i32 0, align 4
@MU_OLW_TOGGLE = common dso_local global i32 0, align 4
@MU_IN_LIST_IFC_CONFIG = common dso_local global i32 0, align 4
@MU_ILIC_LIST = common dso_local global i32 0, align 4
@MU_ILIC_DEST = common dso_local global i32 0, align 4
@MU_ILIC_LIST_F0 = common dso_local global i32 0, align 4
@MU_ILIC_DEST_DDR = common dso_local global i32 0, align 4
@MU_OUT_LIST_IFC_CONFIG = common dso_local global i32 0, align 4
@MU_OLIC_LIST = common dso_local global i32 0, align 4
@MU_OLIC_SOURCE = common dso_local global i32 0, align 4
@MU_OLIC_LIST_F0 = common dso_local global i32 0, align 4
@MU_OLIC_SOURCE_DDR = common dso_local global i32 0, align 4
@MU_ILC_ENTRY_MASK = common dso_local global i32 0, align 4
@MU_ILC_NUMBER_MASK = common dso_local global i32 0, align 4
@MU_ILC_ENTRY_4_DW = common dso_local global i32 0, align 4
@MU_ILC_DYNAMIC_SRC = common dso_local global i32 0, align 4
@MU_ILC_NUMBER_SHIFT = common dso_local global i32 0, align 4
@MU_OLC_ENTRY_MASK = common dso_local global i32 0, align 4
@MU_OLC_NUMBER_MASK = common dso_local global i32 0, align 4
@MU_OLC_ENTRY_4_DW = common dso_local global i32 0, align 4
@MU_OLC_NUMBER_SHIFT = common dso_local global i32 0, align 4
@DRBL_MSG_IFC_INIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"timeout waiting for communication list init\00", align 1
@MU_DOORBELL_IN_ENB = common dso_local global i32 0, align 4
@DRBL_POWER_DOWN = common dso_local global i32 0, align 4
@AF2_VDA_POWER_DOWN = common dso_local global i32 0, align 4
@MU_OUT_LIST_INT_MASK = common dso_local global i32 0, align 4
@MU_OLIS_MASK = common dso_local global i32 0, align 4
@MU_DOORBELL_OUT_ENB = common dso_local global i32 0, align 4
@DRBL_ENB_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_check_adapter(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  %9 = load i32, i32* @AF_CHPRST_DETECTED, align 4
  %10 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %10, i32 0, i32 7
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %135

15:                                               ; preds = %1
  %16 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %17 = load i32, i32* @MU_INT_MASK_OUT, align 4
  %18 = load i32, i32* @ESAS2R_INT_DIS_MASK, align 4
  %19 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %16, i32 %17, i32 %18)
  %20 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %21 = load i32, i32* @MU_INT_MASK_OUT, align 4
  %22 = call i32 @esas2r_flush_register_dword(%struct.esas2r_adapter* %20, i32 %21)
  %23 = load i32, i32* @jiffies, align 4
  %24 = call i32 @jiffies_to_msecs(i32 %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %15, %102
  %26 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %27 = call i32 @esas2r_force_interrupt(%struct.esas2r_adapter* %26)
  %28 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %29 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %30 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load i32, i32* @jiffies, align 4
  %35 = call i32 @jiffies_to_msecs(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %35, %36
  %38 = icmp sgt i32 %37, 2000
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %41 = call i32 @esas2r_set_degraded_mode(%struct.esas2r_adapter* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %41, i32* %2, align 4
  br label %399

42:                                               ; preds = %33
  br label %89

43:                                               ; preds = %25
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @DRBL_FORCE_INT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @DRBL_FW_VER_MSK, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %8, align 4
  %52 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %53 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @DRBL_FW_VER_0, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %48
  %60 = load i32, i32* @AF_LEGACY_SGE_MODE, align 4
  %61 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %61, i32 0, i32 7
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  %64 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %64, i32 0, i32 0
  store i32 128, i32* %65, align 8
  %66 = load i32, i32* @esas2r_build_sg_list_sge, align 4
  %67 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 8
  br label %87

69:                                               ; preds = %48
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @DRBL_FW_VER_1, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i32, i32* @AF_LEGACY_SGE_MODE, align 4
  %75 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %75, i32 0, i32 7
  %77 = call i32 @clear_bit(i32 %74, i32* %76)
  %78 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %78, i32 0, i32 0
  store i32 1024, i32* %79, align 8
  %80 = load i32, i32* @esas2r_build_sg_list_prd, align 4
  %81 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %81, i32 0, i32 11
  store i32 %80, i32* %82, align 8
  br label %86

83:                                               ; preds = %69
  %84 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %85 = call i32 @esas2r_set_degraded_mode(%struct.esas2r_adapter* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %85, i32* %2, align 4
  br label %399

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %59
  br label %103

88:                                               ; preds = %43
  br label %89

89:                                               ; preds = %88, %42
  %90 = call i32 @msecs_to_jiffies(i32 100)
  %91 = call i32 @schedule_timeout_interruptible(i32 %90)
  %92 = load i32, i32* @jiffies, align 4
  %93 = call i32 @jiffies_to_msecs(i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 %93, %94
  %96 = icmp sgt i32 %95, 180000
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %99 = call i32 (...) @esas2r_bugon()
  %100 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %101 = call i32 @esas2r_set_degraded_mode(%struct.esas2r_adapter* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 %101, i32* %2, align 4
  br label %399

102:                                              ; preds = %89
  br label %25

103:                                              ; preds = %87
  %104 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %105 = load i32, i32* @MU_DOORBELL_IN, align 4
  %106 = load i32, i32* @DRBL_MSG_IFC_DOWN, align 4
  %107 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %104, i32 %105, i32 %106)
  %108 = load i32, i32* @jiffies, align 4
  %109 = call i32 @jiffies_to_msecs(i32 %108)
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %103, %133
  %111 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %112 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %113 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %111, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @DRBL_MSG_IFC_DOWN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %110
  %119 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %120 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %119, i32 %120, i32 %121)
  br label %134

123:                                              ; preds = %110
  %124 = call i32 @msecs_to_jiffies(i32 50)
  %125 = call i32 @schedule_timeout_interruptible(i32 %124)
  %126 = load i32, i32* @jiffies, align 4
  %127 = call i32 @jiffies_to_msecs(i32 %126)
  %128 = load i32, i32* %4, align 4
  %129 = sub nsw i32 %127, %128
  %130 = icmp sgt i32 %129, 3000
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %134

133:                                              ; preds = %123
  br label %110

134:                                              ; preds = %131, %118
  br label %135

135:                                              ; preds = %134, %14
  %136 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %137 = load i32, i32* @MU_IN_LIST_CONFIG, align 4
  %138 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %136, i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* @MU_ILC_ENABLE, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %7, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %7, align 4
  %143 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %144 = load i32, i32* @MU_IN_LIST_CONFIG, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %143, i32 %144, i32 %145)
  %147 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %148 = load i32, i32* @MU_OUT_LIST_CONFIG, align 4
  %149 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %147, i32 %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* @MU_OLC_ENABLE, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %7, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %7, align 4
  %154 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %155 = load i32, i32* @MU_OUT_LIST_CONFIG, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %154, i32 %155, i32 %156)
  %158 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %158, i32 0, i32 10
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %6, align 4
  %162 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %163 = load i32, i32* @MU_IN_LIST_ADDR_LO, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @lower_32_bits(i32 %164)
  %166 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %162, i32 %163, i32 %165)
  %167 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %168 = load i32, i32* @MU_IN_LIST_ADDR_HI, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @upper_32_bits(i32 %169)
  %171 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %167, i32 %168, i32 %170)
  %172 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %173 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %172, i32 0, i32 9
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %6, align 4
  %176 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %177 = load i32, i32* @MU_OUT_LIST_ADDR_LO, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @lower_32_bits(i32 %178)
  %180 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %176, i32 %177, i32 %179)
  %181 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %182 = load i32, i32* @MU_OUT_LIST_ADDR_HI, align 4
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @upper_32_bits(i32 %183)
  %185 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %181, i32 %182, i32 %184)
  %186 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %187 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %191 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %194 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %193, i32 0, i32 8
  %195 = load i32*, i32** %194, align 8
  %196 = ptrtoint i32* %192 to i64
  %197 = ptrtoint i32* %195 to i64
  %198 = sub i64 %196, %197
  %199 = sdiv exact i64 %198, 4
  %200 = add nsw i64 %189, %199
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %6, align 4
  %202 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %203 = load i32, i32* @MU_OUT_LIST_COPY_PTR_LO, align 4
  %204 = load i32, i32* %6, align 4
  %205 = call i32 @lower_32_bits(i32 %204)
  %206 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %202, i32 %203, i32 %205)
  %207 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %208 = load i32, i32* @MU_OUT_LIST_COPY_PTR_HI, align 4
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @upper_32_bits(i32 %209)
  %211 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %207, i32 %208, i32 %210)
  %212 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %213 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 %214, 1
  %216 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %217 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 4
  %218 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %219 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %218, i32 0, i32 3
  store i32 %215, i32* %219, align 8
  %220 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %221 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  store i32 %215, i32* %222, align 4
  %223 = load i32, i32* @AF_COMM_LIST_TOGGLE, align 4
  %224 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %225 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %224, i32 0, i32 7
  %226 = call i32 @set_bit(i32 %223, i32* %225)
  %227 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %228 = load i32, i32* @MU_IN_LIST_WRITE, align 4
  %229 = load i32, i32* @MU_ILW_TOGGLE, align 4
  %230 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %231 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %229, %232
  %234 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %227, i32 %228, i32 %233)
  %235 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %236 = load i32, i32* @MU_OUT_LIST_COPY, align 4
  %237 = load i32, i32* @MU_OLC_TOGGLE, align 4
  %238 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %239 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %237, %240
  %242 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %235, i32 %236, i32 %241)
  %243 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %244 = load i32, i32* @MU_IN_LIST_READ, align 4
  %245 = load i32, i32* @MU_ILR_TOGGLE, align 4
  %246 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %247 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %245, %248
  %250 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %243, i32 %244, i32 %249)
  %251 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %252 = load i32, i32* @MU_OUT_LIST_WRITE, align 4
  %253 = load i32, i32* @MU_OLW_TOGGLE, align 4
  %254 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %255 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = or i32 %253, %256
  %258 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %251, i32 %252, i32 %257)
  %259 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %260 = load i32, i32* @MU_IN_LIST_IFC_CONFIG, align 4
  %261 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %259, i32 %260)
  store i32 %261, i32* %7, align 4
  %262 = load i32, i32* @MU_ILIC_LIST, align 4
  %263 = load i32, i32* @MU_ILIC_DEST, align 4
  %264 = or i32 %262, %263
  %265 = xor i32 %264, -1
  %266 = load i32, i32* %7, align 4
  %267 = and i32 %266, %265
  store i32 %267, i32* %7, align 4
  %268 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %269 = load i32, i32* @MU_IN_LIST_IFC_CONFIG, align 4
  %270 = load i32, i32* %7, align 4
  %271 = load i32, i32* @MU_ILIC_LIST_F0, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @MU_ILIC_DEST_DDR, align 4
  %274 = or i32 %272, %273
  %275 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %268, i32 %269, i32 %274)
  %276 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %277 = load i32, i32* @MU_OUT_LIST_IFC_CONFIG, align 4
  %278 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %276, i32 %277)
  store i32 %278, i32* %7, align 4
  %279 = load i32, i32* @MU_OLIC_LIST, align 4
  %280 = load i32, i32* @MU_OLIC_SOURCE, align 4
  %281 = or i32 %279, %280
  %282 = xor i32 %281, -1
  %283 = load i32, i32* %7, align 4
  %284 = and i32 %283, %282
  store i32 %284, i32* %7, align 4
  %285 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %286 = load i32, i32* @MU_OUT_LIST_IFC_CONFIG, align 4
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* @MU_OLIC_LIST_F0, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* @MU_OLIC_SOURCE_DDR, align 4
  %291 = or i32 %289, %290
  %292 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %285, i32 %286, i32 %291)
  %293 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %294 = load i32, i32* @MU_IN_LIST_CONFIG, align 4
  %295 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %293, i32 %294)
  store i32 %295, i32* %7, align 4
  %296 = load i32, i32* @MU_ILC_ENTRY_MASK, align 4
  %297 = load i32, i32* @MU_ILC_NUMBER_MASK, align 4
  %298 = or i32 %296, %297
  %299 = xor i32 %298, -1
  %300 = load i32, i32* %7, align 4
  %301 = and i32 %300, %299
  store i32 %301, i32* %7, align 4
  %302 = load i32, i32* @MU_ILC_ENTRY_4_DW, align 4
  %303 = load i32, i32* @MU_ILC_DYNAMIC_SRC, align 4
  %304 = or i32 %302, %303
  %305 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %306 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @MU_ILC_NUMBER_SHIFT, align 4
  %309 = shl i32 %307, %308
  %310 = or i32 %304, %309
  %311 = load i32, i32* %7, align 4
  %312 = or i32 %311, %310
  store i32 %312, i32* %7, align 4
  %313 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %314 = load i32, i32* @MU_IN_LIST_CONFIG, align 4
  %315 = load i32, i32* %7, align 4
  %316 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %313, i32 %314, i32 %315)
  %317 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %318 = load i32, i32* @MU_OUT_LIST_CONFIG, align 4
  %319 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %317, i32 %318)
  store i32 %319, i32* %7, align 4
  %320 = load i32, i32* @MU_OLC_ENTRY_MASK, align 4
  %321 = load i32, i32* @MU_OLC_NUMBER_MASK, align 4
  %322 = or i32 %320, %321
  %323 = xor i32 %322, -1
  %324 = load i32, i32* %7, align 4
  %325 = and i32 %324, %323
  store i32 %325, i32* %7, align 4
  %326 = load i32, i32* @MU_OLC_ENTRY_4_DW, align 4
  %327 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %328 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @MU_OLC_NUMBER_SHIFT, align 4
  %331 = shl i32 %329, %330
  %332 = or i32 %326, %331
  %333 = load i32, i32* %7, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %7, align 4
  %335 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %336 = load i32, i32* @MU_OUT_LIST_CONFIG, align 4
  %337 = load i32, i32* %7, align 4
  %338 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %335, i32 %336, i32 %337)
  %339 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %340 = load i32, i32* @MU_DOORBELL_IN, align 4
  %341 = load i32, i32* @DRBL_MSG_IFC_INIT, align 4
  %342 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %339, i32 %340, i32 %341)
  %343 = load i32, i32* @jiffies, align 4
  %344 = call i32 @jiffies_to_msecs(i32 %343)
  store i32 %344, i32* %4, align 4
  br label %345

345:                                              ; preds = %135, %371
  %346 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %347 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %348 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %346, i32 %347)
  store i32 %348, i32* %5, align 4
  %349 = load i32, i32* %5, align 4
  %350 = load i32, i32* @DRBL_MSG_IFC_INIT, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %345
  %354 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %355 = load i32, i32* @MU_DOORBELL_OUT, align 4
  %356 = load i32, i32* %5, align 4
  %357 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %354, i32 %355, i32 %356)
  br label %372

358:                                              ; preds = %345
  %359 = call i32 @msecs_to_jiffies(i32 100)
  %360 = call i32 @schedule_timeout_interruptible(i32 %359)
  %361 = load i32, i32* @jiffies, align 4
  %362 = call i32 @jiffies_to_msecs(i32 %361)
  %363 = load i32, i32* %4, align 4
  %364 = sub nsw i32 %362, %363
  %365 = icmp sgt i32 %364, 3000
  br i1 %365, label %366, label %371

366:                                              ; preds = %358
  %367 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %368 = call i32 (...) @esas2r_bugon()
  %369 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %370 = call i32 @esas2r_set_degraded_mode(%struct.esas2r_adapter* %369, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  store i32 %370, i32* %2, align 4
  br label %399

371:                                              ; preds = %358
  br label %345

372:                                              ; preds = %353
  %373 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %374 = load i32, i32* @MU_DOORBELL_IN_ENB, align 4
  %375 = call i32 @esas2r_read_register_dword(%struct.esas2r_adapter* %373, i32 %374)
  store i32 %375, i32* %5, align 4
  %376 = load i32, i32* %5, align 4
  %377 = load i32, i32* @DRBL_POWER_DOWN, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %372
  %381 = load i32, i32* @AF2_VDA_POWER_DOWN, align 4
  %382 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %383 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %382, i32 0, i32 6
  %384 = call i32 @set_bit(i32 %381, i32* %383)
  br label %390

385:                                              ; preds = %372
  %386 = load i32, i32* @AF2_VDA_POWER_DOWN, align 4
  %387 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %388 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %387, i32 0, i32 6
  %389 = call i32 @clear_bit(i32 %386, i32* %388)
  br label %390

390:                                              ; preds = %385, %380
  %391 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %392 = load i32, i32* @MU_OUT_LIST_INT_MASK, align 4
  %393 = load i32, i32* @MU_OLIS_MASK, align 4
  %394 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %391, i32 %392, i32 %393)
  %395 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %396 = load i32, i32* @MU_DOORBELL_OUT_ENB, align 4
  %397 = load i32, i32* @DRBL_ENB_MASK, align 4
  %398 = call i32 @esas2r_write_register_dword(%struct.esas2r_adapter* %395, i32 %396, i32 %397)
  store i32 1, i32* %2, align 4
  br label %399

399:                                              ; preds = %390, %366, %97, %83, %39
  %400 = load i32, i32* %2, align 4
  ret i32 %400
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_write_register_dword(%struct.esas2r_adapter*, i32, i32) #1

declare dso_local i32 @esas2r_flush_register_dword(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @esas2r_force_interrupt(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_read_register_dword(%struct.esas2r_adapter*, i32) #1

declare dso_local i32 @esas2r_set_degraded_mode(%struct.esas2r_adapter*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i32 @esas2r_bugon(...) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
