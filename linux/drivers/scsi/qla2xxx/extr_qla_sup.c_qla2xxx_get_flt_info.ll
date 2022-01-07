; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_get_flt_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_get_flt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i8*, i64, i64)* }
%struct.qla_flt_header = type { i64, i32, i32 }
%struct.qla_flt_region = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"DEF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"FLT\00", align 1
@__const.qla2xxx_get_flt_info.locations = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)], align 16
@FA_RISC_CODE_ADDR = common dso_local global i64 0, align 8
@FA_RISC_CODE_ADDR_81 = common dso_local global i64 0, align 8
@FA_BOOT_CODE_ADDR = common dso_local global i64 0, align 8
@FA_BOOT_CODE_ADDR_81 = common dso_local global i64 0, align 8
@FA_VPD_NVRAM_ADDR = common dso_local global i64 0, align 8
@FA_VPD_NVRAM_ADDR_81 = common dso_local global i64 0, align 8
@FA_VPD0_ADDR_81 = common dso_local global i64 0, align 8
@FA_VPD1_ADDR_81 = common dso_local global i64 0, align 8
@FA_NVRAM0_ADDR_81 = common dso_local global i64 0, align 8
@FA_NVRAM1_ADDR_81 = common dso_local global i64 0, align 8
@FA_FLASH_DESCR_ADDR_24 = common dso_local global i64 0, align 8
@FA_FLASH_DESCR_ADDR = common dso_local global i64 0, align 8
@FA_FLASH_DESCR_ADDR_81 = common dso_local global i64 0, align 8
@FA_NPIV_CONF0_ADDR_24 = common dso_local global i64 0, align 8
@FA_NPIV_CONF0_ADDR = common dso_local global i64 0, align 8
@FA_NPIV_CONF0_ADDR_81 = common dso_local global i64 0, align 8
@FA_NPIV_CONF1_ADDR_24 = common dso_local global i64 0, align 8
@FA_NPIV_CONF1_ADDR = common dso_local global i64 0, align 8
@FA_NPIV_CONF1_ADDR_81 = common dso_local global i64 0, align 8
@FA_FCP_PRIO0_ADDR = common dso_local global i64 0, align 8
@FA_FCP_PRIO0_ADDR_25 = common dso_local global i64 0, align 8
@FA_FCP_PRIO1_ADDR = common dso_local global i64 0, align 8
@FA_FCP_PRIO1_ADDR_25 = common dso_local global i64 0, align 8
@FLT_REGIONS_SIZE = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Unsupported FLT detected: version=0x%x length=0x%x checksum=0x%x.\0A\00", align 1
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"Inconsistent FLT detected: version=0x%x length=0x%x checksum=0x%x.\0A\00", align 1
@ql_dbg_init = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"FLT[%#x]: start=%#x end=%#x size=%#x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Region %x is secure\0A\00", align 1
@.str.6 = private unnamed_addr constant [110 x i8] c"FLT[%s]: boot=0x%x fw=0x%x vpd_nvram=0x%x vpd=0x%x nvram=0x%x fdt=0x%x flt=0x%x npiv=0x%x fcp_prif_cfg=0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64)* @qla2xxx_get_flt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2xxx_get_flt_info(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca i8*, align 8
  %7 = alloca [3 x i64], align 16
  %8 = alloca [3 x i64], align 16
  %9 = alloca [3 x i64], align 16
  %10 = alloca [3 x i64], align 16
  %11 = alloca [3 x i64], align 16
  %12 = alloca [3 x i64], align 16
  %13 = alloca [3 x i64], align 16
  %14 = alloca [3 x i64], align 16
  %15 = alloca [3 x i64], align 16
  %16 = alloca [3 x i64], align 16
  %17 = alloca [3 x i64], align 16
  %18 = alloca [3 x i64], align 16
  %19 = alloca %struct.qla_hw_data*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.qla_flt_header*, align 8
  %22 = alloca %struct.qla_flt_region*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %27 = bitcast [2 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([2 x i8*]* @__const.qla2xxx_get_flt_info.locations to i8*), i64 16, i1 false)
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %6, align 8
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %31 = load i64, i64* @FA_RISC_CODE_ADDR, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 1
  %33 = load i64, i64* @FA_RISC_CODE_ADDR, align 8
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 1
  %35 = load i64, i64* @FA_RISC_CODE_ADDR_81, align 8
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %37 = load i64, i64* @FA_BOOT_CODE_ADDR, align 8
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 1
  %39 = load i64, i64* @FA_BOOT_CODE_ADDR, align 8
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 1
  %41 = load i64, i64* @FA_BOOT_CODE_ADDR_81, align 8
  store i64 %41, i64* %40, align 8
  %42 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %43 = load i64, i64* @FA_VPD_NVRAM_ADDR, align 8
  store i64 %43, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 1
  %45 = load i64, i64* @FA_VPD_NVRAM_ADDR, align 8
  store i64 %45, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 1
  %47 = load i64, i64* @FA_VPD_NVRAM_ADDR_81, align 8
  store i64 %47, i64* %46, align 8
  %48 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* @FA_VPD0_ADDR_81, align 8
  store i64 %51, i64* %50, align 8
  %52 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* @FA_VPD1_ADDR_81, align 8
  store i64 %55, i64* %54, align 8
  %56 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* @FA_NVRAM0_ADDR_81, align 8
  store i64 %59, i64* %58, align 8
  %60 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* @FA_NVRAM1_ADDR_81, align 8
  store i64 %63, i64* %62, align 8
  %64 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %65 = load i64, i64* @FA_FLASH_DESCR_ADDR_24, align 8
  store i64 %65, i64* %64, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 1
  %67 = load i64, i64* @FA_FLASH_DESCR_ADDR, align 8
  store i64 %67, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 1
  %69 = load i64, i64* @FA_FLASH_DESCR_ADDR_81, align 8
  store i64 %69, i64* %68, align 8
  %70 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %71 = load i64, i64* @FA_NPIV_CONF0_ADDR_24, align 8
  store i64 %71, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 1
  %73 = load i64, i64* @FA_NPIV_CONF0_ADDR, align 8
  store i64 %73, i64* %72, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 1
  %75 = load i64, i64* @FA_NPIV_CONF0_ADDR_81, align 8
  store i64 %75, i64* %74, align 8
  %76 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 0
  %77 = load i64, i64* @FA_NPIV_CONF1_ADDR_24, align 8
  store i64 %77, i64* %76, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 1
  %79 = load i64, i64* @FA_NPIV_CONF1_ADDR, align 8
  store i64 %79, i64* %78, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 1
  %81 = load i64, i64* @FA_NPIV_CONF1_ADDR_81, align 8
  store i64 %81, i64* %80, align 8
  %82 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 0
  %83 = load i64, i64* @FA_FCP_PRIO0_ADDR, align 8
  store i64 %83, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 1
  %85 = load i64, i64* @FA_FCP_PRIO0_ADDR_25, align 8
  store i64 %85, i64* %84, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 1
  store i64 0, i64* %86, align 8
  %87 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  %88 = load i64, i64* @FA_FCP_PRIO1_ADDR, align 8
  store i64 %88, i64* %87, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 1
  %90 = load i64, i64* @FA_FCP_PRIO1_ADDR_25, align 8
  store i64 %90, i64* %89, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %93, align 8
  store %struct.qla_hw_data* %94, %struct.qla_hw_data** %19, align 8
  %95 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %96 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %2
  br label %105

99:                                               ; preds = %2
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %101 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %100)
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  br label %105

105:                                              ; preds = %99, %98
  %106 = phi i32 [ 2, %98 ], [ %104, %99 ]
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %20, align 8
  %108 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %109 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %108, i32 0, i32 22
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = bitcast i8* %111 to %struct.qla_flt_header*
  store %struct.qla_flt_header* %112, %struct.qla_flt_header** %21, align 8
  %113 = load %struct.qla_flt_header*, %struct.qla_flt_header** %21, align 8
  %114 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %113, i64 1
  %115 = bitcast %struct.qla_flt_header* %114 to i8*
  %116 = bitcast i8* %115 to %struct.qla_flt_region*
  store %struct.qla_flt_region* %116, %struct.qla_flt_region** %22, align 8
  %117 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %118 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %105
  %122 = load i64, i64* %20, align 8
  %123 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 %122
  %124 = load i64, i64* %123, align 8
  br label %129

125:                                              ; preds = %105
  %126 = load i64, i64* %20, align 8
  %127 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 %126
  %128 = load i64, i64* %127, align 8
  br label %129

129:                                              ; preds = %125, %121
  %130 = phi i64 [ %124, %121 ], [ %128, %125 ]
  %131 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %132 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* %4, align 8
  %134 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %135 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  %136 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %137 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %136, i32 0, i32 22
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i32*
  store i32* %139, i32** %23, align 8
  %140 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %141 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %140, i32 0, i32 21
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32 (%struct.TYPE_8__*, i8*, i64, i64)*, i32 (%struct.TYPE_8__*, i8*, i64, i64)** %143, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = load %struct.qla_flt_header*, %struct.qla_flt_header** %21, align 8
  %147 = bitcast %struct.qla_flt_header* %146 to i8*
  %148 = load i64, i64* %4, align 8
  %149 = shl i64 %148, 2
  %150 = load i64, i64* @FLT_REGIONS_SIZE, align 8
  %151 = add i64 16, %150
  %152 = call i32 %144(%struct.TYPE_8__* %145, i8* %147, i64 %149, i64 %151)
  %153 = load i32*, i32** %23, align 8
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le16_to_cpu(i32 %154)
  %156 = icmp eq i32 %155, 65535
  br i1 %156, label %157, label %158

157:                                              ; preds = %129
  br label %814

158:                                              ; preds = %129
  %159 = load %struct.qla_flt_header*, %struct.qla_flt_header** %21, align 8
  %160 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @cpu_to_le16(i32 1)
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %158
  %165 = load i32, i32* @ql_log_warn, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %167 = load %struct.qla_flt_header*, %struct.qla_flt_header** %21, align 8
  %168 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 @le16_to_cpu(i32 %170)
  %172 = load %struct.qla_flt_header*, %struct.qla_flt_header** %21, align 8
  %173 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @le16_to_cpu(i32 %174)
  %176 = load %struct.qla_flt_header*, %struct.qla_flt_header** %21, align 8
  %177 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @le16_to_cpu(i32 %178)
  %180 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, i32, ...) @ql_log(i32 %165, %struct.TYPE_8__* %166, i32 71, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %171, i32 %175, i32 %179)
  br label %814

181:                                              ; preds = %158
  %182 = load %struct.qla_flt_header*, %struct.qla_flt_header** %21, align 8
  %183 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @le16_to_cpu(i32 %184)
  %186 = sext i32 %185 to i64
  %187 = add i64 16, %186
  %188 = udiv i64 %187, 4
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %190

190:                                              ; preds = %200, %181
  %191 = load i32, i32* %24, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %24, align 4
  %193 = icmp ne i32 %191, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %190
  %195 = load i32*, i32** %23, align 8
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @le16_to_cpu(i32 %196)
  %198 = load i32, i32* %25, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %25, align 4
  br label %200

200:                                              ; preds = %194
  %201 = load i32*, i32** %23, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %23, align 8
  br label %190

203:                                              ; preds = %190
  %204 = load i32, i32* %25, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %203
  %207 = load i32, i32* @ql_log_fatal, align 4
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %209 = load %struct.qla_flt_header*, %struct.qla_flt_header** %21, align 8
  %210 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = call i32 @le16_to_cpu(i32 %212)
  %214 = load %struct.qla_flt_header*, %struct.qla_flt_header** %21, align 8
  %215 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @le16_to_cpu(i32 %216)
  %218 = load %struct.qla_flt_header*, %struct.qla_flt_header** %21, align 8
  %219 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @le16_to_cpu(i32 %220)
  %222 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, i32, ...) @ql_log(i32 %207, %struct.TYPE_8__* %208, i32 72, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %213, i32 %217, i32 %221)
  br label %814

223:                                              ; preds = %203
  %224 = load %struct.qla_flt_header*, %struct.qla_flt_header** %21, align 8
  %225 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @le16_to_cpu(i32 %226)
  %228 = sext i32 %227 to i64
  %229 = udiv i64 %228, 32
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %24, align 4
  br label %231

231:                                              ; preds = %808, %223
  %232 = load i32, i32* %24, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %813

234:                                              ; preds = %231
  %235 = load %struct.qla_flt_region*, %struct.qla_flt_region** %22, align 8
  %236 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @le32_to_cpu(i32 %237)
  %239 = ashr i32 %238, 2
  %240 = sext i32 %239 to i64
  store i64 %240, i64* %26, align 8
  %241 = load i32, i32* @ql_dbg_init, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %243 = load %struct.qla_flt_region*, %struct.qla_flt_region** %22, align 8
  %244 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @le16_to_cpu(i32 %245)
  %247 = load i64, i64* %26, align 8
  %248 = load %struct.qla_flt_region*, %struct.qla_flt_region** %22, align 8
  %249 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @le32_to_cpu(i32 %250)
  %252 = ashr i32 %251, 2
  %253 = load %struct.qla_flt_region*, %struct.qla_flt_region** %22, align 8
  %254 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @le32_to_cpu(i32 %255)
  %257 = ashr i32 %256, 2
  %258 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_dbg(i32 %241, %struct.TYPE_8__* %242, i32 73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %246, i64 %247, i32 %252, i32 %257)
  %259 = load %struct.qla_flt_region*, %struct.qla_flt_region** %22, align 8
  %260 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %234
  %264 = load i32, i32* @ql_dbg_init, align 4
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %266 = load %struct.qla_flt_region*, %struct.qla_flt_region** %22, align 8
  %267 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, i32, ...) @ql_log(i32 %264, %struct.TYPE_8__* %265, i32 65535, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %268)
  br label %270

270:                                              ; preds = %263, %234
  %271 = load %struct.qla_flt_region*, %struct.qla_flt_region** %22, align 8
  %272 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @le16_to_cpu(i32 %273)
  switch i32 %274, label %807 [
    i32 163, label %275
    i32 157, label %284
    i32 167, label %293
    i32 140, label %297
    i32 139, label %320
    i32 138, label %339
    i32 137, label %358
    i32 148, label %377
    i32 147, label %392
    i32 146, label %407
    i32 145, label %426
    i32 158, label %445
    i32 150, label %449
    i32 149, label %459
    i32 154, label %469
    i32 160, label %473
    i32 159, label %483
    i32 165, label %493
    i32 166, label %497
    i32 156, label %506
    i32 164, label %510
    i32 153, label %519
    i32 169, label %523
    i32 136, label %527
    i32 162, label %536
    i32 161, label %555
    i32 152, label %574
    i32 151, label %587
    i32 155, label %600
    i32 168, label %613
    i32 171, label %626
    i32 170, label %639
    i32 144, label %652
    i32 143, label %671
    i32 142, label %690
    i32 141, label %709
    i32 135, label %728
    i32 131, label %728
    i32 134, label %750
    i32 130, label %750
    i32 133, label %769
    i32 129, label %769
    i32 132, label %788
    i32 128, label %788
  ]

275:                                              ; preds = %270
  %276 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %277 = call i32 @IS_QLA8031(%struct.qla_hw_data* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %275
  br label %807

280:                                              ; preds = %275
  %281 = load i64, i64* %26, align 8
  %282 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %283 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %282, i32 0, i32 3
  store i64 %281, i64* %283, align 8
  br label %807

284:                                              ; preds = %270
  %285 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %286 = call i32 @IS_QLA8031(%struct.qla_hw_data* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %284
  br label %807

289:                                              ; preds = %284
  %290 = load i64, i64* %26, align 8
  %291 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %292 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %291, i32 0, i32 3
  store i64 %290, i64* %292, align 8
  br label %807

293:                                              ; preds = %270
  %294 = load i64, i64* %26, align 8
  %295 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %296 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %295, i32 0, i32 4
  store i64 %294, i64* %296, align 8
  br label %807

297:                                              ; preds = %270
  %298 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %299 = call i32 @IS_QLA8031(%struct.qla_hw_data* %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %297
  br label %807

302:                                              ; preds = %297
  %303 = load i64, i64* %26, align 8
  %304 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %305 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %304, i32 0, i32 5
  store i64 %303, i64* %305, align 8
  %306 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %307 = call i32 @IS_P3P_TYPE(%struct.qla_hw_data* %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %302
  br label %807

310:                                              ; preds = %302
  %311 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %312 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %310
  %316 = load i64, i64* %26, align 8
  %317 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %318 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %317, i32 0, i32 6
  store i64 %316, i64* %318, align 8
  br label %319

319:                                              ; preds = %315, %310
  br label %807

320:                                              ; preds = %270
  %321 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %322 = call i32 @IS_P3P_TYPE(%struct.qla_hw_data* %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %328, label %324

324:                                              ; preds = %320
  %325 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %326 = call i32 @IS_QLA8031(%struct.qla_hw_data* %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %324, %320
  br label %807

329:                                              ; preds = %324
  %330 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %331 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = icmp eq i64 %332, 1
  br i1 %333, label %334, label %338

334:                                              ; preds = %329
  %335 = load i64, i64* %26, align 8
  %336 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %337 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %336, i32 0, i32 6
  store i64 %335, i64* %337, align 8
  br label %338

338:                                              ; preds = %334, %329
  br label %807

339:                                              ; preds = %270
  %340 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %341 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %348, label %343

343:                                              ; preds = %339
  %344 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %345 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %348, label %347

347:                                              ; preds = %343
  br label %807

348:                                              ; preds = %343, %339
  %349 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %350 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = icmp eq i64 %351, 2
  br i1 %352, label %353, label %357

353:                                              ; preds = %348
  %354 = load i64, i64* %26, align 8
  %355 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %356 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %355, i32 0, i32 6
  store i64 %354, i64* %356, align 8
  br label %357

357:                                              ; preds = %353, %348
  br label %807

358:                                              ; preds = %270
  %359 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %360 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %367, label %362

362:                                              ; preds = %358
  %363 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %364 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %367, label %366

366:                                              ; preds = %362
  br label %807

367:                                              ; preds = %362, %358
  %368 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %369 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = icmp eq i64 %370, 3
  br i1 %371, label %372, label %376

372:                                              ; preds = %367
  %373 = load i64, i64* %26, align 8
  %374 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %375 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %374, i32 0, i32 6
  store i64 %373, i64* %375, align 8
  br label %376

376:                                              ; preds = %372, %367
  br label %807

377:                                              ; preds = %270
  %378 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %379 = call i32 @IS_QLA8031(%struct.qla_hw_data* %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %377
  br label %807

382:                                              ; preds = %377
  %383 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %384 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %382
  %388 = load i64, i64* %26, align 8
  %389 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %390 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %389, i32 0, i32 7
  store i64 %388, i64* %390, align 8
  br label %391

391:                                              ; preds = %387, %382
  br label %807

392:                                              ; preds = %270
  %393 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %394 = call i32 @IS_QLA8031(%struct.qla_hw_data* %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %392
  br label %807

397:                                              ; preds = %392
  %398 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %399 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = icmp eq i64 %400, 1
  br i1 %401, label %402, label %406

402:                                              ; preds = %397
  %403 = load i64, i64* %26, align 8
  %404 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %405 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %404, i32 0, i32 7
  store i64 %403, i64* %405, align 8
  br label %406

406:                                              ; preds = %402, %397
  br label %807

407:                                              ; preds = %270
  %408 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %409 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %416, label %411

411:                                              ; preds = %407
  %412 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %413 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %412)
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %411
  br label %807

416:                                              ; preds = %411, %407
  %417 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %418 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = icmp eq i64 %419, 2
  br i1 %420, label %421, label %425

421:                                              ; preds = %416
  %422 = load i64, i64* %26, align 8
  %423 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %424 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %423, i32 0, i32 7
  store i64 %422, i64* %424, align 8
  br label %425

425:                                              ; preds = %421, %416
  br label %807

426:                                              ; preds = %270
  %427 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %428 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %427)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %435, label %430

430:                                              ; preds = %426
  %431 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %432 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %431)
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %435, label %434

434:                                              ; preds = %430
  br label %807

435:                                              ; preds = %430, %426
  %436 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %437 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = icmp eq i64 %438, 3
  br i1 %439, label %440, label %444

440:                                              ; preds = %435
  %441 = load i64, i64* %26, align 8
  %442 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %443 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %442, i32 0, i32 7
  store i64 %441, i64* %443, align 8
  br label %444

444:                                              ; preds = %440, %435
  br label %807

445:                                              ; preds = %270
  %446 = load i64, i64* %26, align 8
  %447 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %448 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %447, i32 0, i32 8
  store i64 %446, i64* %448, align 8
  br label %807

449:                                              ; preds = %270
  %450 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %451 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %449
  %455 = load i64, i64* %26, align 8
  %456 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %457 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %456, i32 0, i32 9
  store i64 %455, i64* %457, align 8
  br label %458

458:                                              ; preds = %454, %449
  br label %807

459:                                              ; preds = %270
  %460 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %461 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %460, i32 0, i32 1
  %462 = load i64, i64* %461, align 8
  %463 = icmp eq i64 %462, 1
  br i1 %463, label %464, label %468

464:                                              ; preds = %459
  %465 = load i64, i64* %26, align 8
  %466 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %467 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %466, i32 0, i32 9
  store i64 %465, i64* %467, align 8
  br label %468

468:                                              ; preds = %464, %459
  br label %807

469:                                              ; preds = %270
  %470 = load i64, i64* %26, align 8
  %471 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %472 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %471, i32 0, i32 10
  store i64 %470, i64* %472, align 8
  br label %807

473:                                              ; preds = %270
  %474 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %475 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %474, i32 0, i32 1
  %476 = load i64, i64* %475, align 8
  %477 = icmp eq i64 %476, 0
  br i1 %477, label %478, label %482

478:                                              ; preds = %473
  %479 = load i64, i64* %26, align 8
  %480 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %481 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %480, i32 0, i32 0
  store i64 %479, i64* %481, align 8
  br label %482

482:                                              ; preds = %478, %473
  br label %807

483:                                              ; preds = %270
  %484 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %485 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %484, i32 0, i32 1
  %486 = load i64, i64* %485, align 8
  %487 = icmp eq i64 %486, 1
  br i1 %487, label %488, label %492

488:                                              ; preds = %483
  %489 = load i64, i64* %26, align 8
  %490 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %491 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %490, i32 0, i32 0
  store i64 %489, i64* %491, align 8
  br label %492

492:                                              ; preds = %488, %483
  br label %807

493:                                              ; preds = %270
  %494 = load i64, i64* %26, align 8
  %495 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %496 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %495, i32 0, i32 4
  store i64 %494, i64* %496, align 8
  br label %807

497:                                              ; preds = %270
  %498 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %499 = call i32 @IS_QLA8044(%struct.qla_hw_data* %498)
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %505

501:                                              ; preds = %497
  %502 = load i64, i64* %26, align 8
  %503 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %504 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %503, i32 0, i32 4
  store i64 %502, i64* %504, align 8
  br label %505

505:                                              ; preds = %501, %497
  br label %807

506:                                              ; preds = %270
  %507 = load i64, i64* %26, align 8
  %508 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %509 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %508, i32 0, i32 3
  store i64 %507, i64* %509, align 8
  br label %807

510:                                              ; preds = %270
  %511 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %512 = call i32 @IS_CNA_CAPABLE(%struct.qla_hw_data* %511)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %518

514:                                              ; preds = %510
  %515 = load i64, i64* %26, align 8
  %516 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %517 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %516, i32 0, i32 3
  store i64 %515, i64* %517, align 8
  br label %518

518:                                              ; preds = %514, %510
  br label %807

519:                                              ; preds = %270
  %520 = load i64, i64* %26, align 8
  %521 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %522 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %521, i32 0, i32 10
  store i64 %520, i64* %522, align 8
  br label %807

523:                                              ; preds = %270
  %524 = load i64, i64* %26, align 8
  %525 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %526 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %525, i32 0, i32 11
  store i64 %524, i64* %526, align 8
  br label %807

527:                                              ; preds = %270
  %528 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %529 = call i32 @IS_CNA_CAPABLE(%struct.qla_hw_data* %528)
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %535

531:                                              ; preds = %527
  %532 = load i64, i64* %26, align 8
  %533 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %534 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %533, i32 0, i32 6
  store i64 %532, i64* %534, align 8
  br label %535

535:                                              ; preds = %531, %527
  br label %807

536:                                              ; preds = %270
  %537 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %538 = call i32 @IS_QLA8031(%struct.qla_hw_data* %537)
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %545, label %540

540:                                              ; preds = %536
  %541 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %542 = call i32 @IS_QLA8044(%struct.qla_hw_data* %541)
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %545, label %544

544:                                              ; preds = %540
  br label %807

545:                                              ; preds = %540, %536
  %546 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %547 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %546, i32 0, i32 1
  %548 = load i64, i64* %547, align 8
  %549 = icmp eq i64 %548, 0
  br i1 %549, label %550, label %554

550:                                              ; preds = %545
  %551 = load i64, i64* %26, align 8
  %552 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %553 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %552, i32 0, i32 7
  store i64 %551, i64* %553, align 8
  br label %554

554:                                              ; preds = %550, %545
  br label %807

555:                                              ; preds = %270
  %556 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %557 = call i32 @IS_QLA8031(%struct.qla_hw_data* %556)
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %564, label %559

559:                                              ; preds = %555
  %560 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %561 = call i32 @IS_QLA8044(%struct.qla_hw_data* %560)
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %564, label %563

563:                                              ; preds = %559
  br label %807

564:                                              ; preds = %559, %555
  %565 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %566 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %565, i32 0, i32 1
  %567 = load i64, i64* %566, align 8
  %568 = icmp eq i64 %567, 1
  br i1 %568, label %569, label %573

569:                                              ; preds = %564
  %570 = load i64, i64* %26, align 8
  %571 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %572 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %571, i32 0, i32 7
  store i64 %570, i64* %572, align 8
  br label %573

573:                                              ; preds = %569, %564
  br label %807

574:                                              ; preds = %270
  %575 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %576 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %575)
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %586

578:                                              ; preds = %574
  %579 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %580 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %579)
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %586, label %582

582:                                              ; preds = %578
  %583 = load i64, i64* %26, align 8
  %584 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %585 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %584, i32 0, i32 12
  store i64 %583, i64* %585, align 8
  br label %586

586:                                              ; preds = %582, %578, %574
  br label %807

587:                                              ; preds = %270
  %588 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %589 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %588)
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %591, label %599

591:                                              ; preds = %587
  %592 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %593 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %592)
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %599, label %595

595:                                              ; preds = %591
  %596 = load i64, i64* %26, align 8
  %597 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %598 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %597, i32 0, i32 13
  store i64 %596, i64* %598, align 8
  br label %599

599:                                              ; preds = %595, %591, %587
  br label %807

600:                                              ; preds = %270
  %601 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %602 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %601)
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %612

604:                                              ; preds = %600
  %605 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %606 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %605)
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %612, label %608

608:                                              ; preds = %604
  %609 = load i64, i64* %26, align 8
  %610 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %611 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %610, i32 0, i32 14
  store i64 %609, i64* %611, align 8
  br label %612

612:                                              ; preds = %608, %604, %600
  br label %807

613:                                              ; preds = %270
  %614 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %615 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %614)
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %625

617:                                              ; preds = %613
  %618 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %619 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %618)
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %625, label %621

621:                                              ; preds = %617
  %622 = load i64, i64* %26, align 8
  %623 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %624 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %623, i32 0, i32 15
  store i64 %622, i64* %624, align 8
  br label %625

625:                                              ; preds = %621, %617, %613
  br label %807

626:                                              ; preds = %270
  %627 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %628 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %627)
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %634, label %630

630:                                              ; preds = %626
  %631 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %632 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %631)
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %638

634:                                              ; preds = %630, %626
  %635 = load i64, i64* %26, align 8
  %636 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %637 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %636, i32 0, i32 16
  store i64 %635, i64* %637, align 8
  br label %638

638:                                              ; preds = %634, %630
  br label %807

639:                                              ; preds = %270
  %640 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %641 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %640)
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %647, label %643

643:                                              ; preds = %639
  %644 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %645 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %644)
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %651

647:                                              ; preds = %643, %639
  %648 = load i64, i64* %26, align 8
  %649 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %650 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %649, i32 0, i32 17
  store i64 %648, i64* %650, align 8
  br label %651

651:                                              ; preds = %647, %643
  br label %807

652:                                              ; preds = %270
  %653 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %654 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %653)
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %660, label %656

656:                                              ; preds = %652
  %657 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %658 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %657)
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %670

660:                                              ; preds = %656, %652
  %661 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %662 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %661, i32 0, i32 1
  %663 = load i64, i64* %662, align 8
  %664 = icmp eq i64 %663, 0
  br i1 %664, label %665, label %669

665:                                              ; preds = %660
  %666 = load i64, i64* %26, align 8
  %667 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %668 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %667, i32 0, i32 18
  store i64 %666, i64* %668, align 8
  br label %669

669:                                              ; preds = %665, %660
  br label %670

670:                                              ; preds = %669, %656
  br label %807

671:                                              ; preds = %270
  %672 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %673 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %672)
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %679, label %675

675:                                              ; preds = %671
  %676 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %677 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %676)
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %689

679:                                              ; preds = %675, %671
  %680 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %681 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %680, i32 0, i32 1
  %682 = load i64, i64* %681, align 8
  %683 = icmp eq i64 %682, 1
  br i1 %683, label %684, label %688

684:                                              ; preds = %679
  %685 = load i64, i64* %26, align 8
  %686 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %687 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %686, i32 0, i32 18
  store i64 %685, i64* %687, align 8
  br label %688

688:                                              ; preds = %684, %679
  br label %689

689:                                              ; preds = %688, %675
  br label %807

690:                                              ; preds = %270
  %691 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %692 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %691)
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %698, label %694

694:                                              ; preds = %690
  %695 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %696 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %695)
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %698, label %708

698:                                              ; preds = %694, %690
  %699 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %700 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %699, i32 0, i32 1
  %701 = load i64, i64* %700, align 8
  %702 = icmp eq i64 %701, 2
  br i1 %702, label %703, label %707

703:                                              ; preds = %698
  %704 = load i64, i64* %26, align 8
  %705 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %706 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %705, i32 0, i32 18
  store i64 %704, i64* %706, align 8
  br label %707

707:                                              ; preds = %703, %698
  br label %708

708:                                              ; preds = %707, %694
  br label %807

709:                                              ; preds = %270
  %710 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %711 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %710)
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %717, label %713

713:                                              ; preds = %709
  %714 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %715 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %714)
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %727

717:                                              ; preds = %713, %709
  %718 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %719 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %718, i32 0, i32 1
  %720 = load i64, i64* %719, align 8
  %721 = icmp eq i64 %720, 3
  br i1 %721, label %722, label %726

722:                                              ; preds = %717
  %723 = load i64, i64* %26, align 8
  %724 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %725 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %724, i32 0, i32 18
  store i64 %723, i64* %725, align 8
  br label %726

726:                                              ; preds = %722, %717
  br label %727

727:                                              ; preds = %726, %713
  br label %807

728:                                              ; preds = %270, %270
  %729 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %730 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %729)
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %736, label %732

732:                                              ; preds = %728
  %733 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %734 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %733)
  %735 = icmp ne i32 %734, 0
  br i1 %735, label %736, label %749

736:                                              ; preds = %732, %728
  %737 = load i64, i64* %26, align 8
  %738 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %739 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %738, i32 0, i32 19
  store i64 %737, i64* %739, align 8
  %740 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %741 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %740, i32 0, i32 1
  %742 = load i64, i64* %741, align 8
  %743 = icmp eq i64 %742, 0
  br i1 %743, label %744, label %748

744:                                              ; preds = %736
  %745 = load i64, i64* %26, align 8
  %746 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %747 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %746, i32 0, i32 20
  store i64 %745, i64* %747, align 8
  br label %748

748:                                              ; preds = %744, %736
  br label %749

749:                                              ; preds = %748, %732
  br label %807

750:                                              ; preds = %270, %270
  %751 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %752 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %751)
  %753 = icmp ne i32 %752, 0
  br i1 %753, label %758, label %754

754:                                              ; preds = %750
  %755 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %756 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %755)
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %758, label %768

758:                                              ; preds = %754, %750
  %759 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %760 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %759, i32 0, i32 1
  %761 = load i64, i64* %760, align 8
  %762 = icmp eq i64 %761, 1
  br i1 %762, label %763, label %767

763:                                              ; preds = %758
  %764 = load i64, i64* %26, align 8
  %765 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %766 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %765, i32 0, i32 20
  store i64 %764, i64* %766, align 8
  br label %767

767:                                              ; preds = %763, %758
  br label %768

768:                                              ; preds = %767, %754
  br label %807

769:                                              ; preds = %270, %270
  %770 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %771 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %770)
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %777, label %773

773:                                              ; preds = %769
  %774 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %775 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %774)
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %787

777:                                              ; preds = %773, %769
  %778 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %779 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %778, i32 0, i32 1
  %780 = load i64, i64* %779, align 8
  %781 = icmp eq i64 %780, 2
  br i1 %781, label %782, label %786

782:                                              ; preds = %777
  %783 = load i64, i64* %26, align 8
  %784 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %785 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %784, i32 0, i32 20
  store i64 %783, i64* %785, align 8
  br label %786

786:                                              ; preds = %782, %777
  br label %787

787:                                              ; preds = %786, %773
  br label %807

788:                                              ; preds = %270, %270
  %789 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %790 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %789)
  %791 = icmp ne i32 %790, 0
  br i1 %791, label %796, label %792

792:                                              ; preds = %788
  %793 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %794 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %793)
  %795 = icmp ne i32 %794, 0
  br i1 %795, label %796, label %806

796:                                              ; preds = %792, %788
  %797 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %798 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %797, i32 0, i32 1
  %799 = load i64, i64* %798, align 8
  %800 = icmp eq i64 %799, 3
  br i1 %800, label %801, label %805

801:                                              ; preds = %796
  %802 = load i64, i64* %26, align 8
  %803 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %804 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %803, i32 0, i32 20
  store i64 %802, i64* %804, align 8
  br label %805

805:                                              ; preds = %801, %796
  br label %806

806:                                              ; preds = %805, %792
  br label %807

807:                                              ; preds = %270, %806, %787, %768, %749, %727, %708, %689, %670, %651, %638, %625, %612, %599, %586, %573, %563, %554, %544, %535, %523, %519, %518, %506, %505, %493, %492, %482, %469, %468, %458, %445, %444, %434, %425, %415, %406, %396, %391, %381, %376, %366, %357, %347, %338, %328, %319, %309, %301, %293, %289, %288, %280, %279
  br label %808

808:                                              ; preds = %807
  %809 = load i32, i32* %24, align 4
  %810 = add nsw i32 %809, -1
  store i32 %810, i32* %24, align 4
  %811 = load %struct.qla_flt_region*, %struct.qla_flt_region** %22, align 8
  %812 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %811, i32 1
  store %struct.qla_flt_region* %812, %struct.qla_flt_region** %22, align 8
  br label %231

813:                                              ; preds = %231
  br label %885

814:                                              ; preds = %206, %164, %157
  %815 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %816 = load i8*, i8** %815, align 16
  store i8* %816, i8** %6, align 8
  %817 = load i64, i64* %20, align 8
  %818 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 %817
  %819 = load i64, i64* %818, align 8
  %820 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %821 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %820, i32 0, i32 3
  store i64 %819, i64* %821, align 8
  %822 = load i64, i64* %20, align 8
  %823 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 %822
  %824 = load i64, i64* %823, align 8
  %825 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %826 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %825, i32 0, i32 4
  store i64 %824, i64* %826, align 8
  %827 = load i64, i64* %20, align 8
  %828 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 %827
  %829 = load i64, i64* %828, align 8
  %830 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %831 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %830, i32 0, i32 5
  store i64 %829, i64* %831, align 8
  %832 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %833 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %832, i32 0, i32 1
  %834 = load i64, i64* %833, align 8
  %835 = icmp eq i64 %834, 0
  br i1 %835, label %836, label %840

836:                                              ; preds = %814
  %837 = load i64, i64* %20, align 8
  %838 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 %837
  %839 = load i64, i64* %838, align 8
  br label %844

840:                                              ; preds = %814
  %841 = load i64, i64* %20, align 8
  %842 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %841
  %843 = load i64, i64* %842, align 8
  br label %844

844:                                              ; preds = %840, %836
  %845 = phi i64 [ %839, %836 ], [ %843, %840 ]
  %846 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %847 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %846, i32 0, i32 6
  store i64 %845, i64* %847, align 8
  %848 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %849 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %848, i32 0, i32 1
  %850 = load i64, i64* %849, align 8
  %851 = icmp eq i64 %850, 0
  br i1 %851, label %852, label %856

852:                                              ; preds = %844
  %853 = load i64, i64* %20, align 8
  %854 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %853
  %855 = load i64, i64* %854, align 8
  br label %860

856:                                              ; preds = %844
  %857 = load i64, i64* %20, align 8
  %858 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 %857
  %859 = load i64, i64* %858, align 8
  br label %860

860:                                              ; preds = %856, %852
  %861 = phi i64 [ %855, %852 ], [ %859, %856 ]
  %862 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %863 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %862, i32 0, i32 7
  store i64 %861, i64* %863, align 8
  %864 = load i64, i64* %20, align 8
  %865 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 %864
  %866 = load i64, i64* %865, align 8
  %867 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %868 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %867, i32 0, i32 8
  store i64 %866, i64* %868, align 8
  %869 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %870 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %869, i32 0, i32 1
  %871 = load i64, i64* %870, align 8
  %872 = icmp eq i64 %871, 0
  br i1 %872, label %873, label %877

873:                                              ; preds = %860
  %874 = load i64, i64* %20, align 8
  %875 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 %874
  %876 = load i64, i64* %875, align 8
  br label %881

877:                                              ; preds = %860
  %878 = load i64, i64* %20, align 8
  %879 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 %878
  %880 = load i64, i64* %879, align 8
  br label %881

881:                                              ; preds = %877, %873
  %882 = phi i64 [ %876, %873 ], [ %880, %877 ]
  %883 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %884 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %883, i32 0, i32 9
  store i64 %882, i64* %884, align 8
  br label %885

885:                                              ; preds = %881, %813
  %886 = load i32, i32* @ql_dbg_init, align 4
  %887 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %888 = load i8*, i8** %6, align 8
  %889 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %890 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %889, i32 0, i32 4
  %891 = load i64, i64* %890, align 8
  %892 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %893 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %892, i32 0, i32 3
  %894 = load i64, i64* %893, align 8
  %895 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %896 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %895, i32 0, i32 5
  %897 = load i64, i64* %896, align 8
  %898 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %899 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %898, i32 0, i32 6
  %900 = load i64, i64* %899, align 8
  %901 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %902 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %901, i32 0, i32 7
  %903 = load i64, i64* %902, align 8
  %904 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %905 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %904, i32 0, i32 8
  %906 = load i64, i64* %905, align 8
  %907 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %908 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %907, i32 0, i32 2
  %909 = load i64, i64* %908, align 8
  %910 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %911 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %910, i32 0, i32 9
  %912 = load i64, i64* %911, align 8
  %913 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %914 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %913, i32 0, i32 0
  %915 = load i64, i64* %914, align 8
  %916 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_dbg(i32 %886, %struct.TYPE_8__* %887, i32 74, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.6, i64 0, i64 0), i8* %888, i64 %891, i64 %894, i64 %897, i64 %900, i64 %903, i64 %906, i64 %909, i64 %912, i64 %915)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @IS_QLA81XX(%struct.qla_hw_data*) #2

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i64 @cpu_to_le16(i32) #2

declare dso_local i32 @ql_log(i32, %struct.TYPE_8__*, i32, i8*, i32, ...) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_8__*, i32, i8*, ...) #2

declare dso_local i32 @IS_QLA8031(%struct.qla_hw_data*) #2

declare dso_local i32 @IS_P3P_TYPE(%struct.qla_hw_data*) #2

declare dso_local i32 @IS_QLA27XX(%struct.qla_hw_data*) #2

declare dso_local i32 @IS_QLA28XX(%struct.qla_hw_data*) #2

declare dso_local i32 @IS_QLA8044(%struct.qla_hw_data*) #2

declare dso_local i32 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
