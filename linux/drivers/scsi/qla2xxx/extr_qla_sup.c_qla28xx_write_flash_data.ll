; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla28xx_write_flash_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla28xx_write_flash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_20__*, %struct.TYPE_21__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32, i64 }
%struct.secure_flash_update_block = type { i32 }
%struct.qla_flt_region = type { i64, i64 }

@OPTROM_BURST_DWORDS = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Invalid address %x - not a region start address\0A\00", align 1
@OPTROM_BURST_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed allocate burst (%x bytes)\0A\00", align 1
@QLA_COMMAND_ERROR = common dso_local global i32 0, align 4
@ql_dbg_verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Region %x is secure\0A\00", align 1
@FLT_REG_FW = common dso_local global i64 0, align 8
@FLT_REG_FW_SEC_27XX = common dso_local global i64 0, align 8
@BIT_9 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Secure region %x not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Unable to allocate memory for SFUB\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"SFUB extract and verify successful\0A\00", align 1
@FAC_SEMAPHORE_LOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Unable to lock flash semaphore.\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Unprotect flash...\0A\00", align 1
@FAC_SEMAPHORE_UNLOCK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Failed unprotect flash\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Erase sector %#x...\0A\00", align 1
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"Failed erase sector %#x\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Disable Write and Release Semaphore.\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Unable to protect flash.\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Reset chip to ROM.\00", align 1
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@ISP_ABORT_TO_ROM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"Unable to reset to ROM code.\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Lock Semaphore\00", align 1
@FLASH_SEMAPHORE_REGISTER_ADDR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"Enable Write.\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Sending Secure Flash MB Cmd\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Secure Flash MB Cmd failed %x.\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Write burst (%#lx dwords)...\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Failed burst write at %x (%p/%#llx)...\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Protect flash...\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Failed protect flash\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Adapter did not come out of reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32*, i32, i32)* @qla28xx_write_flash_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla28xx_write_flash_data(%struct.TYPE_22__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qla_hw_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.secure_flash_update_block*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.qla_flt_region, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %28, align 8
  store %struct.qla_hw_data* %29, %struct.qla_hw_data** %9, align 8
  %30 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  store i32 %30, i32* %11, align 4
  store i8* null, i8** %15, align 8
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 2
  store i32 %32, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %25, align 4
  store i32* null, i32** %26, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %34 = load i32, i32* %20, align 4
  %35 = call i32 @qla28xx_get_flash_region(%struct.TYPE_22__* %33, i32 %34, %struct.qla_flt_region* %22)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* @QLA_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %4
  %40 = load i64, i64* @ql_log_warn, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %42 = load i32, i32* %20, align 4
  %43 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %40, %struct.TYPE_22__* %41, i32 65535, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %487

44:                                               ; preds = %4
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @dma_alloc_coherent(i32* %48, i32 %49, i64* %16, i32 %50)
  store i8* %51, i8** %15, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = load i64, i64* @ql_log_warn, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %58 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %55, %struct.TYPE_22__* %56, i32 28821, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @QLA_COMMAND_ERROR, align 4
  store i32 %59, i32* %17, align 4
  br label %487

60:                                               ; preds = %44
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %183

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %22, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %183

70:                                               ; preds = %66
  %71 = load i64, i64* @ql_log_warn, align 8
  %72 = load i64, i64* @ql_dbg_verbose, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %75 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %22, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %73, %struct.TYPE_22__* %74, i32 65535, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  %78 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %22, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FLT_REG_FW, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %22, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @FLT_REG_FW_SEC_27XX, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %141

87:                                               ; preds = %82, %70
  %88 = load i32*, i32** %6, align 8
  store i32* %88, i32** %26, align 8
  %89 = load i32*, i32** %26, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be32_to_cpu(i32 %91)
  store i32 %92, i32* %24, align 4
  %93 = load i32*, i32** %26, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 9
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @be32_to_cpu(i32 %95)
  store i32 %96, i32* %25, align 4
  %97 = load i32, i32* %24, align 4
  store i32 %97, i32* %21, align 4
  %98 = load i32, i32* %24, align 4
  %99 = load i32*, i32** %26, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %26, align 8
  %102 = load i32*, i32** %26, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @be32_to_cpu(i32 %104)
  store i32 %105, i32* %24, align 4
  %106 = load i32, i32* %24, align 4
  %107 = load i32, i32* %21, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %24, align 4
  %110 = load i32*, i32** %26, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %26, align 8
  %113 = load i32*, i32** %26, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @be32_to_cpu(i32 %115)
  store i32 %116, i32* %24, align 4
  %117 = load i32, i32* %24, align 4
  %118 = load i32, i32* %21, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %21, align 4
  %120 = load i32, i32* %24, align 4
  %121 = load i32*, i32** %26, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %26, align 8
  %124 = load i32, i32* %25, align 4
  %125 = load i32, i32* @BIT_9, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %87
  %129 = load i32*, i32** %26, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @be32_to_cpu(i32 %131)
  store i32 %132, i32* %24, align 4
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* %21, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %21, align 4
  %136 = load i32, i32* %24, align 4
  %137 = load i32*, i32** %26, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %26, align 8
  br label %140

140:                                              ; preds = %128, %87
  br label %150

141:                                              ; preds = %82
  %142 = load i64, i64* @ql_log_warn, align 8
  %143 = load i64, i64* @ql_dbg_verbose, align 8
  %144 = add nsw i64 %142, %143
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %146 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %22, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %144, %struct.TYPE_22__* %145, i32 65535, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %147)
  %149 = load i32, i32* @QLA_COMMAND_ERROR, align 4
  store i32 %149, i32* %17, align 4
  br label %487

150:                                              ; preds = %140
  %151 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %152 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %151, i32 0, i32 1
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = call i8* @dma_alloc_coherent(i32* %154, i32 4, i64* %19, i32 %155)
  %157 = bitcast i8* %156 to %struct.secure_flash_update_block*
  store %struct.secure_flash_update_block* %157, %struct.secure_flash_update_block** %18, align 8
  %158 = load %struct.secure_flash_update_block*, %struct.secure_flash_update_block** %18, align 8
  %159 = icmp ne %struct.secure_flash_update_block* %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %150
  %161 = load i64, i64* @ql_log_warn, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %163 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %161, %struct.TYPE_22__* %162, i32 65535, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %164 = load i32, i32* @QLA_COMMAND_ERROR, align 4
  store i32 %164, i32* %17, align 4
  br label %487

165:                                              ; preds = %150
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %21, align 4
  %170 = load %struct.secure_flash_update_block*, %struct.secure_flash_update_block** %18, align 8
  %171 = bitcast %struct.secure_flash_update_block* %170 to i32*
  %172 = call i32 @qla28xx_extract_sfub_and_verify(%struct.TYPE_22__* %166, i32* %167, i32 %168, i32 %169, i32* %171)
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* @QLA_SUCCESS, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %165
  br label %487

177:                                              ; preds = %165
  %178 = load i64, i64* @ql_log_warn, align 8
  %179 = load i64, i64* @ql_dbg_verbose, align 8
  %180 = add nsw i64 %178, %179
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %182 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %180, %struct.TYPE_22__* %181, i32 65535, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %183

183:                                              ; preds = %177, %66, %60
  %184 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %185 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = ashr i32 %186, 2
  %188 = sub nsw i32 %187, 1
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %13, align 4
  %190 = xor i32 %189, -1
  store i32 %190, i32* %12, align 4
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %192 = load i32, i32* @FAC_SEMAPHORE_LOCK, align 4
  %193 = call i32 @qla81xx_fac_semaphore_access(%struct.TYPE_22__* %191, i32 %192)
  store i32 %193, i32* %17, align 4
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* @QLA_SUCCESS, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %183
  %198 = load i64, i64* @ql_log_warn, align 8
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %200 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %198, %struct.TYPE_22__* %199, i32 65535, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %487

201:                                              ; preds = %183
  %202 = load i64, i64* @ql_log_warn, align 8
  %203 = load i64, i64* @ql_dbg_verbose, align 8
  %204 = add nsw i64 %202, %203
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %206 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %204, %struct.TYPE_22__* %205, i32 28821, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %208 = call i32 @qla24xx_unprotect_flash(%struct.TYPE_22__* %207)
  store i32 %208, i32* %17, align 4
  %209 = load i32, i32* %17, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %201
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %213 = load i32, i32* @FAC_SEMAPHORE_UNLOCK, align 4
  %214 = call i32 @qla81xx_fac_semaphore_access(%struct.TYPE_22__* %212, i32 %213)
  %215 = load i64, i64* @ql_log_warn, align 8
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %217 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %215, %struct.TYPE_22__* %216, i32 28822, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %487

218:                                              ; preds = %201
  store i32 0, i32* %10, align 4
  br label %219

219:                                              ; preds = %251, %218
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %8, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %256

223:                                              ; preds = %219
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %12, align 4
  %226 = and i32 %224, %225
  %227 = shl i32 %226, 2
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* %13, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %250, label %232

232:                                              ; preds = %223
  %233 = load i64, i64* @ql_log_warn, align 8
  %234 = load i64, i64* @ql_dbg_verbose, align 8
  %235 = add nsw i64 %233, %234
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %237 = load i32, i32* %7, align 4
  %238 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %235, %struct.TYPE_22__* %236, i32 28821, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %237)
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %240 = load i32, i32* %14, align 4
  %241 = call i32 @qla24xx_erase_sector(%struct.TYPE_22__* %239, i32 %240)
  store i32 %241, i32* %17, align 4
  %242 = load i32, i32* %17, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %232
  %245 = load i32, i32* @ql_dbg_user, align 4
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %247 = load i32, i32* %7, align 4
  %248 = call i32 @ql_dbg(i32 %245, %struct.TYPE_22__* %246, i32 28679, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %247)
  br label %449

249:                                              ; preds = %232
  br label %250

250:                                              ; preds = %249, %223
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %10, align 4
  %254 = load i32, i32* %7, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %7, align 4
  br label %219

256:                                              ; preds = %219
  %257 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %258 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %374

262:                                              ; preds = %256
  %263 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %264 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %345, label %268

268:                                              ; preds = %262
  %269 = load i64, i64* @ql_log_warn, align 8
  %270 = load i64, i64* @ql_dbg_verbose, align 8
  %271 = add nsw i64 %269, %270
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %273 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %271, %struct.TYPE_22__* %272, i32 65535, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %275 = call i32 @qla24xx_protect_flash(%struct.TYPE_22__* %274)
  store i32 %275, i32* %17, align 4
  %276 = load i32, i32* %17, align 4
  %277 = load i32, i32* @QLA_SUCCESS, align 4
  %278 = icmp ne i32 %276, %277
  br i1 %278, label %279, label %286

279:                                              ; preds = %268
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %281 = load i32, i32* @FAC_SEMAPHORE_UNLOCK, align 4
  %282 = call i32 @qla81xx_fac_semaphore_access(%struct.TYPE_22__* %280, i32 %281)
  %283 = load i64, i64* @ql_log_warn, align 8
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %285 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %283, %struct.TYPE_22__* %284, i32 65535, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  br label %487

286:                                              ; preds = %268
  %287 = load i64, i64* @ql_log_warn, align 8
  %288 = load i64, i64* @ql_dbg_verbose, align 8
  %289 = add nsw i64 %287, %288
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %291 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %289, %struct.TYPE_22__* %290, i32 65535, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %292 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 0
  %295 = call i32 @set_bit(i32 %292, i32* %294)
  %296 = load i32, i32* @ISP_ABORT_TO_ROM, align 4
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 0
  %299 = call i32 @set_bit(i32 %296, i32* %298)
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %301 = call i32 @qla2xxx_wake_dpc(%struct.TYPE_22__* %300)
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %303 = call i32 @qla2x00_wait_for_chip_reset(%struct.TYPE_22__* %302)
  store i32 %303, i32* %17, align 4
  %304 = load i32, i32* %17, align 4
  %305 = load i32, i32* @QLA_SUCCESS, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %286
  %308 = load i64, i64* @ql_log_warn, align 8
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %310 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %308, %struct.TYPE_22__* %309, i32 65535, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  br label %487

311:                                              ; preds = %286
  store i32 1, i32* %23, align 4
  %312 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %313 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 0
  store i64 0, i64* %314, align 8
  %315 = load i64, i64* @ql_log_warn, align 8
  %316 = load i64, i64* @ql_dbg_verbose, align 8
  %317 = add nsw i64 %315, %316
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %319 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %317, %struct.TYPE_22__* %318, i32 65535, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %321 = load i32, i32* @FLASH_SEMAPHORE_REGISTER_ADDR, align 4
  %322 = call i32 @qla2xxx_write_remote_register(%struct.TYPE_22__* %320, i32 %321, i32 131074)
  store i32 %322, i32* %17, align 4
  %323 = load i32, i32* %17, align 4
  %324 = load i32, i32* @QLA_SUCCESS, align 4
  %325 = icmp ne i32 %323, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %311
  %327 = load i64, i64* @ql_log_warn, align 8
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %329 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %327, %struct.TYPE_22__* %328, i32 65535, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %487

330:                                              ; preds = %311
  %331 = load i64, i64* @ql_log_warn, align 8
  %332 = load i64, i64* @ql_dbg_verbose, align 8
  %333 = add nsw i64 %331, %332
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %335 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %333, %struct.TYPE_22__* %334, i32 65535, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %336 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %337 = call i32 @qla2x00_write_ram_word(%struct.TYPE_22__* %336, i32 2147287297, i32 0)
  store i32 %337, i32* %17, align 4
  %338 = load i32, i32* %17, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %330
  %341 = load i64, i64* @ql_log_warn, align 8
  %342 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %343 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %341, %struct.TYPE_22__* %342, i32 28822, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %487

344:                                              ; preds = %330
  br label %345

345:                                              ; preds = %344, %262
  %346 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %22, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %373

349:                                              ; preds = %345
  %350 = load i32, i32* %21, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %373

352:                                              ; preds = %349
  %353 = load i64, i64* @ql_log_warn, align 8
  %354 = load i64, i64* @ql_dbg_verbose, align 8
  %355 = add nsw i64 %353, %354
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %357 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %355, %struct.TYPE_22__* %356, i32 65535, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %359 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %22, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i32, i32* %21, align 4
  %362 = load i64, i64* %19, align 8
  %363 = call i32 @qla28xx_secure_flash_update(%struct.TYPE_22__* %358, i32 0, i64 %360, i32 %361, i64 %362, i32 4)
  store i32 %363, i32* %17, align 4
  %364 = load i32, i32* %17, align 4
  %365 = load i32, i32* @QLA_SUCCESS, align 4
  %366 = icmp ne i32 %364, %365
  br i1 %366, label %367, label %372

367:                                              ; preds = %352
  %368 = load i64, i64* @ql_log_warn, align 8
  %369 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %370 = load i32, i32* %17, align 4
  %371 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %368, %struct.TYPE_22__* %369, i32 65535, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %370)
  br label %449

372:                                              ; preds = %352
  br label %373

373:                                              ; preds = %372, %349, %345
  br label %374

374:                                              ; preds = %373, %256
  %375 = load i32, i32* %20, align 4
  %376 = ashr i32 %375, 2
  store i32 %376, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %377

377:                                              ; preds = %441, %374
  %378 = load i32, i32* %10, align 4
  %379 = load i32, i32* %8, align 4
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %448

381:                                              ; preds = %377
  %382 = load i32, i32* %7, align 4
  %383 = load i32, i32* %12, align 4
  %384 = and i32 %382, %383
  %385 = shl i32 %384, 2
  store i32 %385, i32* %14, align 4
  %386 = load i32, i32* %8, align 4
  %387 = load i32, i32* %10, align 4
  %388 = sub nsw i32 %386, %387
  %389 = load i32, i32* %11, align 4
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %391, label %395

391:                                              ; preds = %381
  %392 = load i32, i32* %8, align 4
  %393 = load i32, i32* %10, align 4
  %394 = sub nsw i32 %392, %393
  store i32 %394, i32* %11, align 4
  br label %395

395:                                              ; preds = %391, %381
  %396 = load i8*, i8** %15, align 8
  %397 = load i32*, i32** %6, align 8
  %398 = load i32, i32* %11, align 4
  %399 = shl i32 %398, 2
  %400 = call i32 @memcpy(i8* %396, i32* %397, i32 %399)
  %401 = load i64, i64* @ql_log_warn, align 8
  %402 = load i64, i64* @ql_dbg_verbose, align 8
  %403 = add nsw i64 %401, %402
  %404 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %405 = load i32, i32* %11, align 4
  %406 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %403, %struct.TYPE_22__* %404, i32 28821, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 %405)
  %407 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %408 = load i64, i64* %16, align 8
  %409 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %410 = load i32, i32* %7, align 4
  %411 = call i32 @flash_data_addr(%struct.qla_hw_data* %409, i32 %410)
  %412 = load i32, i32* %11, align 4
  %413 = call i32 @qla2x00_load_ram(%struct.TYPE_22__* %407, i64 %408, i32 %411, i32 %412)
  store i32 %413, i32* %17, align 4
  %414 = load i32, i32* %17, align 4
  %415 = load i32, i32* @QLA_SUCCESS, align 4
  %416 = icmp ne i32 %414, %415
  br i1 %416, label %417, label %427

417:                                              ; preds = %395
  %418 = load i64, i64* @ql_log_warn, align 8
  %419 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %420 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %421 = load i32, i32* %7, align 4
  %422 = call i32 @flash_data_addr(%struct.qla_hw_data* %420, i32 %421)
  %423 = load i8*, i8** %15, align 8
  %424 = load i64, i64* %16, align 8
  %425 = trunc i64 %424 to i32
  %426 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %418, %struct.TYPE_22__* %419, i32 28823, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i32 %422, i8* %423, i32 %425)
  br label %448

427:                                              ; preds = %395
  %428 = load i32, i32* %11, align 4
  %429 = sub nsw i32 %428, 1
  %430 = load i32, i32* %10, align 4
  %431 = add nsw i32 %430, %429
  store i32 %431, i32* %10, align 4
  %432 = load i32, i32* %11, align 4
  %433 = sub nsw i32 %432, 1
  %434 = load i32, i32* %7, align 4
  %435 = add nsw i32 %434, %433
  store i32 %435, i32* %7, align 4
  %436 = load i32, i32* %11, align 4
  %437 = sub nsw i32 %436, 1
  %438 = load i32*, i32** %6, align 8
  %439 = sext i32 %437 to i64
  %440 = getelementptr inbounds i32, i32* %438, i64 %439
  store i32* %440, i32** %6, align 8
  br label %441

441:                                              ; preds = %427
  %442 = load i32, i32* %10, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %10, align 4
  %444 = load i32, i32* %7, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %7, align 4
  %446 = load i32*, i32** %6, align 8
  %447 = getelementptr inbounds i32, i32* %446, i32 1
  store i32* %447, i32** %6, align 8
  br label %377

448:                                              ; preds = %417, %377
  br label %449

449:                                              ; preds = %448, %367, %244
  %450 = load i64, i64* @ql_log_warn, align 8
  %451 = load i64, i64* @ql_dbg_verbose, align 8
  %452 = add nsw i64 %450, %451
  %453 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %454 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %452, %struct.TYPE_22__* %453, i32 28821, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %455 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %456 = call i32 @qla24xx_protect_flash(%struct.TYPE_22__* %455)
  store i32 %456, i32* %17, align 4
  %457 = load i32, i32* %17, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %466

459:                                              ; preds = %449
  %460 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %461 = load i32, i32* @FAC_SEMAPHORE_UNLOCK, align 4
  %462 = call i32 @qla81xx_fac_semaphore_access(%struct.TYPE_22__* %460, i32 %461)
  %463 = load i64, i64* @ql_log_warn, align 8
  %464 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %465 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %463, %struct.TYPE_22__* %464, i32 28825, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  br label %466

466:                                              ; preds = %459, %449
  %467 = load i32, i32* %23, align 4
  %468 = icmp eq i32 %467, 1
  br i1 %468, label %469, label %486

469:                                              ; preds = %466
  %470 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %471 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %471, i32 0, i32 0
  %473 = call i32 @set_bit(i32 %470, i32* %472)
  %474 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %475 = call i32 @qla2xxx_wake_dpc(%struct.TYPE_22__* %474)
  %476 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %477 = call i32 @qla2x00_wait_for_hba_online(%struct.TYPE_22__* %476)
  store i32 %477, i32* %17, align 4
  %478 = load i32, i32* %17, align 4
  %479 = load i32, i32* @QLA_SUCCESS, align 4
  %480 = icmp ne i32 %478, %479
  br i1 %480, label %481, label %485

481:                                              ; preds = %469
  %482 = load i64, i64* @ql_log_warn, align 8
  %483 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %484 = call i32 (i64, %struct.TYPE_22__*, i32, i8*, ...) @ql_log(i64 %482, %struct.TYPE_22__* %483, i32 65535, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0))
  br label %485

485:                                              ; preds = %481, %469
  br label %486

486:                                              ; preds = %485, %466
  br label %487

487:                                              ; preds = %486, %340, %326, %307, %279, %211, %197, %176, %160, %141, %54, %39
  %488 = load i8*, i8** %15, align 8
  %489 = icmp ne i8* %488, null
  br i1 %489, label %490, label %499

490:                                              ; preds = %487
  %491 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %492 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %491, i32 0, i32 1
  %493 = load %struct.TYPE_20__*, %struct.TYPE_20__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %493, i32 0, i32 0
  %495 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %496 = load i8*, i8** %15, align 8
  %497 = load i64, i64* %16, align 8
  %498 = call i32 @dma_free_coherent(i32* %494, i32 %495, i8* %496, i64 %497)
  br label %499

499:                                              ; preds = %490, %487
  %500 = load i32, i32* %17, align 4
  ret i32 %500
}

declare dso_local i32 @qla28xx_get_flash_region(%struct.TYPE_22__*, i32, %struct.qla_flt_region*) #1

declare dso_local i32 @ql_log(i64, %struct.TYPE_22__*, i32, i8*, ...) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @qla28xx_extract_sfub_and_verify(%struct.TYPE_22__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @qla81xx_fac_semaphore_access(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @qla24xx_unprotect_flash(%struct.TYPE_22__*) #1

declare dso_local i32 @qla24xx_erase_sector(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_22__*, i32, i8*, i32) #1

declare dso_local i32 @qla24xx_protect_flash(%struct.TYPE_22__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.TYPE_22__*) #1

declare dso_local i32 @qla2x00_wait_for_chip_reset(%struct.TYPE_22__*) #1

declare dso_local i32 @qla2xxx_write_remote_register(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @qla2x00_write_ram_word(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @qla28xx_secure_flash_update(%struct.TYPE_22__*, i32, i64, i32, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @qla2x00_load_ram(%struct.TYPE_22__*, i64, i32, i32) #1

declare dso_local i32 @flash_data_addr(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @qla2x00_wait_for_hba_online(%struct.TYPE_22__*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
