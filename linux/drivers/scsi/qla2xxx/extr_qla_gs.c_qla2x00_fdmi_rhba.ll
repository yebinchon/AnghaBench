; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_rhba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_rhba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_26__*, %struct.TYPE_19__* }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_27__*, i32, i32)*, i32* (%struct.TYPE_27__*, i32, i32)* }
%struct.TYPE_19__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.ct_sns_rsp }
%struct.ct_sns_rsp = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.ct_sns_req = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__, i32, i8* }
%struct.TYPE_21__ = type { i8* }
%struct.ct_fdmi_hba_attr = type { %struct.TYPE_22__, i8*, i8* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RHBA_RSP_SIZE = common dso_local global i32 0, align 4
@RHBA_CMD = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@FDMI_HBA_ATTR_COUNT = common dso_local global i32 0, align 4
@FDMI_HBA_NODE_NAME = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"NodeName = %8phN.\0A\00", align 1
@FDMI_HBA_MANUFACTURER = common dso_local global i32 0, align 4
@QLA2XXX_MANUFACTURER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"QLogic Corporation\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Manufacturer = %s.\0A\00", align 1
@FDMI_HBA_SERIAL_NUMBER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"SN\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%c%05d\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Serial no. = %s.\0A\00", align 1
@FDMI_HBA_MODEL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Model Name = %s.\0A\00", align 1
@FDMI_HBA_MODEL_DESCRIPTION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"Model Desc = %s.\0A\00", align 1
@FDMI_HBA_HARDWARE_VERSION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"HW:%s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"MN\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Hardware ver = %s.\0A\00", align 1
@FDMI_HBA_DRIVER_VERSION = common dso_local global i32 0, align 4
@qla2x00_version_str = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"Driver ver = %s.\0A\00", align 1
@FDMI_HBA_OPTION_ROM_VERSION = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"%d.%02d\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Optrom vers = %s.\0A\00", align 1
@FDMI_HBA_FIRMWARE_VERSION = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"Firmware vers = %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"RHBA identifier = %8phN size=%d.\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"RHBA issue IOCB failed (%d).\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"RHBA\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@CT_REASON_CANNOT_PERFORM = common dso_local global i32 0, align 4
@CT_EXPL_ALREADY_REGISTERED = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [25 x i8] c"HBA already registered.\0A\00", align 1
@QLA_ALREADY_REGISTERED = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [74 x i8] c"RHBA FDMI registration failed, CT Reason code: 0x%x, CT Explanation 0x%x\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"RHBA exiting normally.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*)* @qla2x00_fdmi_rhba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_fdmi_rhba(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ct_sns_req*, align 8
  %9 = alloca %struct.ct_sns_rsp*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ct_fdmi_hba_attr*, align 8
  %12 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 2
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %12, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 9
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 1
  %20 = load i32* (%struct.TYPE_27__*, i32, i32)*, i32* (%struct.TYPE_27__*, i32, i32)** %19, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %22 = load i32, i32* @RHBA_RSP_SIZE, align 4
  %23 = call i32* %20(%struct.TYPE_27__* %21, i32 0, i32 %22)
  store i32* %23, i32** %7, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 10
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  %27 = load i32, i32* @RHBA_CMD, align 4
  %28 = load i32, i32* @RHBA_RSP_SIZE, align 4
  %29 = call %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(%struct.TYPE_19__* %26, i32 %27, i32 %28)
  store %struct.ct_sns_req* %29, %struct.ct_sns_req** %8, align 8
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 10
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  store %struct.ct_sns_rsp* %34, %struct.ct_sns_rsp** %9, align 8
  %35 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %36 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WWN_SIZE, align 4
  %44 = call i32 @memcpy(i32 %39, i32 %42, i32 %43)
  %45 = call i8* @cpu_to_be32(i32 1)
  %46 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %47 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 3
  store i8* %45, i8** %49, align 8
  %50 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %51 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @WWN_SIZE, align 4
  %59 = call i32 @memcpy(i32 %54, i32 %57, i32 %58)
  %60 = load i32, i32* @WWN_SIZE, align 4
  %61 = mul nsw i32 2, %60
  %62 = add nsw i32 %61, 4
  %63 = add nsw i32 %62, 4
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @FDMI_HBA_ATTR_COUNT, align 4
  %65 = call i8* @cpu_to_be32(i32 %64)
  %66 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %67 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  store i8* %65, i8** %70, align 8
  %71 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %72 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %71, i32 0, i32 0
  %73 = bitcast %struct.TYPE_24__* %72 to i8*
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %74, i64 %76
  %78 = bitcast i8* %77 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %78, %struct.ct_fdmi_hba_attr** %11, align 8
  %79 = load i32, i32* @FDMI_HBA_NODE_NAME, align 4
  %80 = call i8* @cpu_to_be16(i32 %79)
  %81 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %82 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @WWN_SIZE, align 4
  %84 = add nsw i32 4, %83
  %85 = call i8* @cpu_to_be16(i32 %84)
  %86 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %87 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %89 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @WWN_SIZE, align 4
  %96 = call i32 @memcpy(i32 %91, i32 %94, i32 %95)
  %97 = load i32, i32* @WWN_SIZE, align 4
  %98 = add nsw i32 4, %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load i64, i64* @ql_dbg_disc, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %103 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %104 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %101, %struct.TYPE_27__* %102, i32 8229, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr i8, i8* %108, i64 %110
  %112 = bitcast i8* %111 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %112, %struct.ct_fdmi_hba_attr** %11, align 8
  %113 = load i32, i32* @FDMI_HBA_MANUFACTURER, align 4
  %114 = call i8* @cpu_to_be16(i32 %113)
  %115 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %116 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* @QLA2XXX_MANUFACTURER, align 4
  %118 = call i32 @strlen(i32 %117)
  store i32 %118, i32* %4, align 4
  %119 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %120 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %122, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* %4, align 4
  %125 = and i32 %124, 3
  %126 = sub nsw i32 4, %125
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 4, %129
  %131 = call i8* @cpu_to_be16(i32 %130)
  %132 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %133 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 4, %134
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %5, align 4
  %138 = load i64, i64* @ql_dbg_disc, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %140 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %141 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %138, %struct.TYPE_27__* %139, i32 8230, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load i8*, i8** %10, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr i8, i8* %145, i64 %147
  %149 = bitcast i8* %148 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %149, %struct.ct_fdmi_hba_attr** %11, align 8
  %150 = load i32, i32* @FDMI_HBA_SERIAL_NUMBER, align 4
  %151 = call i8* @cpu_to_be16(i32 %150)
  %152 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %153 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %155 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %1
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %159 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %160 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @qla2xxx_get_vpd_field(%struct.TYPE_27__* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %162, i32 4)
  br label %189

164:                                              ; preds = %1
  %165 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %166 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, 31
  %169 = shl i32 %168, 16
  %170 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %171 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 8
  %174 = or i32 %169, %173
  %175 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %176 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %174, %177
  store i32 %178, i32* %6, align 4
  %179 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %180 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sdiv i32 %183, 100000
  %185 = add nsw i32 65, %184
  %186 = load i32, i32* %6, align 4
  %187 = srem i32 %186, 100000
  %188 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %182, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %185, i32 %187)
  br label %189

189:                                              ; preds = %164, %157
  %190 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %191 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @strlen(i32 %193)
  store i32 %194, i32* %4, align 4
  %195 = load i32, i32* %4, align 4
  %196 = and i32 %195, 3
  %197 = sub nsw i32 4, %196
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %4, align 4
  %200 = load i32, i32* %4, align 4
  %201 = add nsw i32 4, %200
  %202 = call i8* @cpu_to_be16(i32 %201)
  %203 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %204 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %203, i32 0, i32 1
  store i8* %202, i8** %204, align 8
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 4, %205
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %5, align 4
  %209 = load i64, i64* @ql_dbg_disc, align 8
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %211 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %212 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %209, %struct.TYPE_27__* %210, i32 8231, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %214)
  %216 = load i8*, i8** %10, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr i8, i8* %216, i64 %218
  %220 = bitcast i8* %219 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %220, %struct.ct_fdmi_hba_attr** %11, align 8
  %221 = load i32, i32* @FDMI_HBA_MODEL, align 4
  %222 = call i8* @cpu_to_be16(i32 %221)
  %223 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %224 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %223, i32 0, i32 2
  store i8* %222, i8** %224, align 8
  %225 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %226 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %230 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %229, i32 0, i32 3
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %228, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %231)
  %233 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %234 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @strlen(i32 %236)
  store i32 %237, i32* %4, align 4
  %238 = load i32, i32* %4, align 4
  %239 = and i32 %238, 3
  %240 = sub nsw i32 4, %239
  %241 = load i32, i32* %4, align 4
  %242 = add nsw i32 %241, %240
  store i32 %242, i32* %4, align 4
  %243 = load i32, i32* %4, align 4
  %244 = add nsw i32 4, %243
  %245 = call i8* @cpu_to_be16(i32 %244)
  %246 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %247 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %246, i32 0, i32 1
  store i8* %245, i8** %247, align 8
  %248 = load i32, i32* %4, align 4
  %249 = add nsw i32 4, %248
  %250 = load i32, i32* %5, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %5, align 4
  %252 = load i64, i64* @ql_dbg_disc, align 8
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %254 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %255 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %252, %struct.TYPE_27__* %253, i32 8232, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %257)
  %259 = load i8*, i8** %10, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr i8, i8* %259, i64 %261
  %263 = bitcast i8* %262 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %263, %struct.ct_fdmi_hba_attr** %11, align 8
  %264 = load i32, i32* @FDMI_HBA_MODEL_DESCRIPTION, align 4
  %265 = call i8* @cpu_to_be16(i32 %264)
  %266 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %267 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %266, i32 0, i32 2
  store i8* %265, i8** %267, align 8
  %268 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %269 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %273 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %272, i32 0, i32 4
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %271, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %274)
  %276 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %277 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @strlen(i32 %279)
  store i32 %280, i32* %4, align 4
  %281 = load i32, i32* %4, align 4
  %282 = and i32 %281, 3
  %283 = sub nsw i32 4, %282
  %284 = load i32, i32* %4, align 4
  %285 = add nsw i32 %284, %283
  store i32 %285, i32* %4, align 4
  %286 = load i32, i32* %4, align 4
  %287 = add nsw i32 4, %286
  %288 = call i8* @cpu_to_be16(i32 %287)
  %289 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %290 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %289, i32 0, i32 1
  store i8* %288, i8** %290, align 8
  %291 = load i32, i32* %4, align 4
  %292 = add nsw i32 4, %291
  %293 = load i32, i32* %5, align 4
  %294 = add nsw i32 %293, %292
  store i32 %294, i32* %5, align 4
  %295 = load i64, i64* @ql_dbg_disc, align 8
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %297 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %298 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %295, %struct.TYPE_27__* %296, i32 8233, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %300)
  %302 = load i8*, i8** %10, align 8
  %303 = load i32, i32* %5, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr i8, i8* %302, i64 %304
  %306 = bitcast i8* %305 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %306, %struct.ct_fdmi_hba_attr** %11, align 8
  %307 = load i32, i32* @FDMI_HBA_HARDWARE_VERSION, align 4
  %308 = call i8* @cpu_to_be16(i32 %307)
  %309 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %310 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %309, i32 0, i32 2
  store i8* %308, i8** %310, align 8
  %311 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %312 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %323, label %314

314:                                              ; preds = %189
  %315 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %316 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %320 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %319, i32 0, i32 5
  %321 = load i8*, i8** %320, align 8
  %322 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %318, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %321)
  br label %352

323:                                              ; preds = %189
  %324 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %325 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %326 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = call i64 @qla2xxx_get_vpd_field(%struct.TYPE_27__* %324, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %328, i32 4)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %323
  br label %351

332:                                              ; preds = %323
  %333 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %334 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %335 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = call i64 @qla2xxx_get_vpd_field(%struct.TYPE_27__* %333, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %337, i32 4)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %332
  br label %350

341:                                              ; preds = %332
  %342 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %343 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %347 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %346, i32 0, i32 5
  %348 = load i8*, i8** %347, align 8
  %349 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %345, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %348)
  br label %350

350:                                              ; preds = %341, %340
  br label %351

351:                                              ; preds = %350, %331
  br label %352

352:                                              ; preds = %351, %314
  %353 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %354 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @strlen(i32 %356)
  store i32 %357, i32* %4, align 4
  %358 = load i32, i32* %4, align 4
  %359 = and i32 %358, 3
  %360 = sub nsw i32 4, %359
  %361 = load i32, i32* %4, align 4
  %362 = add nsw i32 %361, %360
  store i32 %362, i32* %4, align 4
  %363 = load i32, i32* %4, align 4
  %364 = add nsw i32 4, %363
  %365 = call i8* @cpu_to_be16(i32 %364)
  %366 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %367 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %366, i32 0, i32 1
  store i8* %365, i8** %367, align 8
  %368 = load i32, i32* %4, align 4
  %369 = add nsw i32 4, %368
  %370 = load i32, i32* %5, align 4
  %371 = add nsw i32 %370, %369
  store i32 %371, i32* %5, align 4
  %372 = load i64, i64* @ql_dbg_disc, align 8
  %373 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %374 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %375 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %372, %struct.TYPE_27__* %373, i32 8234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %377)
  %379 = load i8*, i8** %10, align 8
  %380 = load i32, i32* %5, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr i8, i8* %379, i64 %381
  %383 = bitcast i8* %382 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %383, %struct.ct_fdmi_hba_attr** %11, align 8
  %384 = load i32, i32* @FDMI_HBA_DRIVER_VERSION, align 4
  %385 = call i8* @cpu_to_be16(i32 %384)
  %386 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %387 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %386, i32 0, i32 2
  store i8* %385, i8** %387, align 8
  %388 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %389 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = load i8*, i8** @qla2x00_version_str, align 8
  %393 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %391, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %392)
  %394 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %395 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @strlen(i32 %397)
  store i32 %398, i32* %4, align 4
  %399 = load i32, i32* %4, align 4
  %400 = and i32 %399, 3
  %401 = sub nsw i32 4, %400
  %402 = load i32, i32* %4, align 4
  %403 = add nsw i32 %402, %401
  store i32 %403, i32* %4, align 4
  %404 = load i32, i32* %4, align 4
  %405 = add nsw i32 4, %404
  %406 = call i8* @cpu_to_be16(i32 %405)
  %407 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %408 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %407, i32 0, i32 1
  store i8* %406, i8** %408, align 8
  %409 = load i32, i32* %4, align 4
  %410 = add nsw i32 4, %409
  %411 = load i32, i32* %5, align 4
  %412 = add nsw i32 %411, %410
  store i32 %412, i32* %5, align 4
  %413 = load i64, i64* @ql_dbg_disc, align 8
  %414 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %415 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %416 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %413, %struct.TYPE_27__* %414, i32 8235, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %418)
  %420 = load i8*, i8** %10, align 8
  %421 = load i32, i32* %5, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr i8, i8* %420, i64 %422
  %424 = bitcast i8* %423 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %424, %struct.ct_fdmi_hba_attr** %11, align 8
  %425 = load i32, i32* @FDMI_HBA_OPTION_ROM_VERSION, align 4
  %426 = call i8* @cpu_to_be16(i32 %425)
  %427 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %428 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %427, i32 0, i32 2
  store i8* %426, i8** %428, align 8
  %429 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %430 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %434 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %433, i32 0, i32 6
  %435 = load i8*, i8** %434, align 8
  %436 = getelementptr inbounds i8, i8* %435, i64 1
  %437 = load i8, i8* %436, align 1
  %438 = sext i8 %437 to i32
  %439 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %440 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %439, i32 0, i32 6
  %441 = load i8*, i8** %440, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 0
  %443 = load i8, i8* %442, align 1
  %444 = sext i8 %443 to i32
  %445 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %432, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %438, i32 %444)
  %446 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %447 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = call i32 @strlen(i32 %449)
  store i32 %450, i32* %4, align 4
  %451 = load i32, i32* %4, align 4
  %452 = and i32 %451, 3
  %453 = sub nsw i32 4, %452
  %454 = load i32, i32* %4, align 4
  %455 = add nsw i32 %454, %453
  store i32 %455, i32* %4, align 4
  %456 = load i32, i32* %4, align 4
  %457 = add nsw i32 4, %456
  %458 = call i8* @cpu_to_be16(i32 %457)
  %459 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %460 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %459, i32 0, i32 1
  store i8* %458, i8** %460, align 8
  %461 = load i32, i32* %4, align 4
  %462 = add nsw i32 4, %461
  %463 = load i32, i32* %5, align 4
  %464 = add nsw i32 %463, %462
  store i32 %464, i32* %5, align 4
  %465 = load i64, i64* @ql_dbg_disc, align 8
  %466 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %467 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %468 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %465, %struct.TYPE_27__* %466, i32 8236, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %470)
  %472 = load i8*, i8** %10, align 8
  %473 = load i32, i32* %5, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr i8, i8* %472, i64 %474
  %476 = bitcast i8* %475 to %struct.ct_fdmi_hba_attr*
  store %struct.ct_fdmi_hba_attr* %476, %struct.ct_fdmi_hba_attr** %11, align 8
  %477 = load i32, i32* @FDMI_HBA_FIRMWARE_VERSION, align 4
  %478 = call i8* @cpu_to_be16(i32 %477)
  %479 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %480 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %479, i32 0, i32 2
  store i8* %478, i8** %480, align 8
  %481 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %482 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %481, i32 0, i32 9
  %483 = load %struct.TYPE_26__*, %struct.TYPE_26__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %483, i32 0, i32 0
  %485 = load i32 (%struct.TYPE_27__*, i32, i32)*, i32 (%struct.TYPE_27__*, i32, i32)** %484, align 8
  %486 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %487 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %488 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = call i32 %485(%struct.TYPE_27__* %486, i32 %490, i32 4)
  %492 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %493 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = call i32 @strlen(i32 %495)
  store i32 %496, i32* %4, align 4
  %497 = load i32, i32* %4, align 4
  %498 = and i32 %497, 3
  %499 = sub nsw i32 4, %498
  %500 = load i32, i32* %4, align 4
  %501 = add nsw i32 %500, %499
  store i32 %501, i32* %4, align 4
  %502 = load i32, i32* %4, align 4
  %503 = add nsw i32 4, %502
  %504 = call i8* @cpu_to_be16(i32 %503)
  %505 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %506 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %505, i32 0, i32 1
  store i8* %504, i8** %506, align 8
  %507 = load i32, i32* %4, align 4
  %508 = add nsw i32 4, %507
  %509 = load i32, i32* %5, align 4
  %510 = add nsw i32 %509, %508
  store i32 %510, i32* %5, align 4
  %511 = load i64, i64* @ql_dbg_disc, align 8
  %512 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %513 = load %struct.ct_fdmi_hba_attr*, %struct.ct_fdmi_hba_attr** %11, align 8
  %514 = getelementptr inbounds %struct.ct_fdmi_hba_attr, %struct.ct_fdmi_hba_attr* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %511, %struct.TYPE_27__* %512, i32 8237, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %516)
  %518 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %519 = load i32, i32* %5, align 4
  %520 = add nsw i32 %519, 16
  %521 = call i32 @qla2x00_update_ms_fdmi_iocb(%struct.TYPE_27__* %518, i32 %520)
  %522 = load i64, i64* @ql_dbg_disc, align 8
  %523 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %524 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %525 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  %529 = load i32, i32* %5, align 4
  %530 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %522, %struct.TYPE_27__* %523, i32 8238, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 %528, i32 %529)
  %531 = load i64, i64* @ql_dbg_disc, align 8
  %532 = load i64, i64* @ql_dbg_buffer, align 8
  %533 = add nsw i64 %531, %532
  %534 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %535 = load i8*, i8** %10, align 8
  %536 = load i32, i32* %5, align 4
  %537 = call i32 @ql_dump_buffer(i64 %533, %struct.TYPE_27__* %534, i32 8310, i8* %535, i32 %536)
  %538 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %539 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %540 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %539, i32 0, i32 8
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %543 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %542, i32 0, i32 7
  %544 = load i32, i32* %543, align 8
  %545 = call i32 @qla2x00_issue_iocb(%struct.TYPE_27__* %538, i32 %541, i32 %544, i32 4)
  store i32 %545, i32* %3, align 4
  %546 = load i32, i32* %3, align 4
  %547 = load i32, i32* @QLA_SUCCESS, align 4
  %548 = icmp ne i32 %546, %547
  br i1 %548, label %549, label %554

549:                                              ; preds = %352
  %550 = load i64, i64* @ql_dbg_disc, align 8
  %551 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %552 = load i32, i32* %3, align 4
  %553 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %550, %struct.TYPE_27__* %551, i32 8240, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i32 %552)
  br label %599

554:                                              ; preds = %352
  %555 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %556 = load i32*, i32** %7, align 8
  %557 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %558 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_27__* %555, i32* %556, %struct.ct_sns_rsp* %557, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %559 = load i32, i32* @QLA_SUCCESS, align 4
  %560 = icmp ne i32 %558, %559
  br i1 %560, label %561, label %594

561:                                              ; preds = %554
  %562 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %562, i32* %3, align 4
  %563 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %564 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %563, i32 0, i32 0
  %565 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 4
  %567 = load i32, i32* @CT_REASON_CANNOT_PERFORM, align 4
  %568 = icmp eq i32 %566, %567
  br i1 %568, label %569, label %581

569:                                              ; preds = %561
  %570 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %571 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %570, i32 0, i32 0
  %572 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 4
  %574 = load i32, i32* @CT_EXPL_ALREADY_REGISTERED, align 4
  %575 = icmp eq i32 %573, %574
  br i1 %575, label %576, label %581

576:                                              ; preds = %569
  %577 = load i64, i64* @ql_dbg_disc, align 8
  %578 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %579 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %577, %struct.TYPE_27__* %578, i32 8244, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  %580 = load i32, i32* @QLA_ALREADY_REGISTERED, align 4
  store i32 %580, i32* %3, align 4
  br label %593

581:                                              ; preds = %569, %561
  %582 = load i64, i64* @ql_dbg_disc, align 8
  %583 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %584 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %585 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 4
  %588 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %589 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %588, i32 0, i32 0
  %590 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 4
  %592 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %582, %struct.TYPE_27__* %583, i32 8365, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.21, i64 0, i64 0), i32 %587, i32 %591)
  br label %593

593:                                              ; preds = %581, %576
  br label %598

594:                                              ; preds = %554
  %595 = load i64, i64* @ql_dbg_disc, align 8
  %596 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %597 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %595, %struct.TYPE_27__* %596, i32 8245, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  br label %598

598:                                              ; preds = %594, %593
  br label %599

599:                                              ; preds = %598, %549
  %600 = load i32, i32* %3, align 4
  ret i32 %600
}

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_27__*, i32, i8*, ...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i64 @qla2xxx_get_vpd_field(%struct.TYPE_27__*, i8*, i32, i32) #1

declare dso_local i32 @qla2x00_update_ms_fdmi_iocb(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_27__*, i32, i8*, i32) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_27__*, i32*, %struct.ct_sns_rsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
