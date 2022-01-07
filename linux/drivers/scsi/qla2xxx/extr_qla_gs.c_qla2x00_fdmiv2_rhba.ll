; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmiv2_rhba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmiv2_rhba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i32, i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32, i8*, i8*, i8*, i32*, i32, i32, i32, %struct.TYPE_23__*, %struct.TYPE_20__* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_28__*, i8*, i32)*, i32* (%struct.TYPE_28__*, i32, i32)* }
%struct.TYPE_20__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.ct_sns_rsp }
%struct.ct_sns_rsp = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32 }
%struct.ct_sns_req = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, %struct.TYPE_22__, i32, i8* }
%struct.TYPE_22__ = type { i8* }
%struct.ct_fdmiv2_hba_attr = type { %struct.TYPE_24__, i8*, i8* }
%struct.TYPE_24__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.new_utsname = type { i8*, i8*, i8* }

@RHBA_RSP_SIZE = common dso_local global i32 0, align 4
@RHBA_CMD = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@FDMIV2_HBA_ATTR_COUNT = common dso_local global i32 0, align 4
@FDMI_HBA_NODE_NAME = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"NodeName = %016llx.\0A\00", align 1
@FDMI_HBA_MANUFACTURER = common dso_local global i32 0, align 4
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
@.str.15 = private unnamed_addr constant [27 x i8] c"Optrom version = %d.%02d.\0A\00", align 1
@FDMI_HBA_FIRMWARE_VERSION = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"Firmware vers = %s.\0A\00", align 1
@FDMI_HBA_OS_NAME_AND_VERSION = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Linux\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"OS Name and Version = %s.\0A\00", align 1
@FDMI_HBA_MAXIMUM_CT_PAYLOAD_LENGTH = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [27 x i8] c"CT Payload Length = 0x%x.\0A\00", align 1
@FDMI_HBA_NODE_SYMBOLIC_NAME = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"Symbolic Name = %s.\0A\00", align 1
@FDMI_HBA_VENDOR_ID = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"Vendor Id = %x.\0A\00", align 1
@FDMI_HBA_NUM_PORTS = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [16 x i8] c"Port Num = %x.\0A\00", align 1
@FDMI_HBA_FABRIC_NAME = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [24 x i8] c"Fabric Name = %016llx.\0A\00", align 1
@FDMI_HBA_BOOT_BIOS_NAME = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [13 x i8] c"BIOS %d.%02d\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"BIOS Name = %s\0A\00", align 1
@FDMI_HBA_TYPE_VENDOR_IDENTIFIER = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"QLGC\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Vendor Identifier = %s.\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"RHBA identifier = %016llx.\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [30 x i8] c"RHBA issue IOCB failed (%d).\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"RHBA\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@CT_REASON_CANNOT_PERFORM = common dso_local global i32 0, align 4
@CT_EXPL_ALREADY_REGISTERED = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [25 x i8] c"HBA already registered.\0A\00", align 1
@QLA_ALREADY_REGISTERED = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [64 x i8] c"RHBA FDMI v2 failed, CT Reason code: 0x%x, CT Explanation 0x%x\0A\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"RHBA FDMI V2 exiting normally.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*)* @qla2x00_fdmiv2_rhba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_fdmiv2_rhba(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ct_sns_req*, align 8
  %9 = alloca %struct.ct_sns_rsp*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ct_fdmiv2_hba_attr*, align 8
  %12 = alloca %struct.qla_hw_data*, align 8
  %13 = alloca %struct.new_utsname*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %2, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 4
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %12, align 8
  store %struct.new_utsname* null, %struct.new_utsname** %13, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 10
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = load i32* (%struct.TYPE_28__*, i32, i32)*, i32* (%struct.TYPE_28__*, i32, i32)** %20, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %23 = load i32, i32* @RHBA_RSP_SIZE, align 4
  %24 = call i32* %21(%struct.TYPE_28__* %22, i32 0, i32 %23)
  store i32* %24, i32** %7, align 8
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 11
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = load i32, i32* @RHBA_CMD, align 4
  %29 = load i32, i32* @RHBA_RSP_SIZE, align 4
  %30 = call %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(%struct.TYPE_20__* %27, i32 %28, i32 %29)
  store %struct.ct_sns_req* %30, %struct.ct_sns_req** %8, align 8
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 11
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  store %struct.ct_sns_rsp* %35, %struct.ct_sns_rsp** %9, align 8
  %36 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %37 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @WWN_SIZE, align 4
  %45 = call i32 @memcpy(i32 %40, i32 %43, i32 %44)
  %46 = call i8* @cpu_to_be32(i32 1)
  %47 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %48 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 3
  store i8* %46, i8** %50, align 8
  %51 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %52 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @WWN_SIZE, align 4
  %60 = call i32 @memcpy(i32 %55, i32 %58, i32 %59)
  %61 = load i32, i32* @WWN_SIZE, align 4
  %62 = mul nsw i32 2, %61
  %63 = add nsw i32 %62, 4
  %64 = add nsw i32 %63, 4
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @FDMIV2_HBA_ATTR_COUNT, align 4
  %66 = call i8* @cpu_to_be32(i32 %65)
  %67 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %68 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  store i8* %66, i8** %71, align 8
  %72 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %73 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %72, i32 0, i32 0
  %74 = bitcast %struct.TYPE_26__* %73 to i8*
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr i8, i8* %75, i64 %77
  %79 = bitcast i8* %78 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %79, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %80 = load i32, i32* @FDMI_HBA_NODE_NAME, align 4
  %81 = call i8* @cpu_to_be16(i32 %80)
  %82 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %83 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @WWN_SIZE, align 4
  %85 = add nsw i32 4, %84
  %86 = call i8* @cpu_to_be16(i32 %85)
  %87 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %88 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %90 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 16
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @WWN_SIZE, align 4
  %97 = call i32 @memcpy(i32 %92, i32 %95, i32 %96)
  %98 = load i32, i32* @WWN_SIZE, align 4
  %99 = add nsw i32 4, %98
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %5, align 4
  %102 = load i64, i64* @ql_dbg_disc, align 8
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %104 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %105 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 16
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @wwn_to_u64(i32 %107)
  %109 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %102, %struct.TYPE_28__* %103, i32 8317, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr i8, i8* %110, i64 %112
  %114 = bitcast i8* %113 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %114, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %115 = load i32, i32* @FDMI_HBA_MANUFACTURER, align 4
  %116 = call i8* @cpu_to_be16(i32 %115)
  %117 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %118 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %120 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %122, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %124 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %125 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @strlen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %131 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @strlen(i8* %133)
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = and i32 %136, 3
  %138 = sub nsw i32 4, %137
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 4, %141
  %143 = call i8* @cpu_to_be16(i32 %142)
  %144 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %145 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 4, %146
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %5, align 4
  %150 = load i64, i64* @ql_dbg_disc, align 8
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %152 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %153 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %150, %struct.TYPE_28__* %151, i32 8357, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %155)
  %157 = load i8*, i8** %10, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr i8, i8* %157, i64 %159
  %161 = bitcast i8* %160 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %161, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %162 = load i32, i32* @FDMI_HBA_SERIAL_NUMBER, align 4
  %163 = call i8* @cpu_to_be16(i32 %162)
  %164 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %165 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  %166 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %167 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %1
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %171 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %172 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i64 @qla2xxx_get_vpd_field(%struct.TYPE_28__* %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %174, i32 8)
  br label %201

176:                                              ; preds = %1
  %177 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %178 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %179, 31
  %181 = shl i32 %180, 16
  %182 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %183 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, 8
  %186 = or i32 %181, %185
  %187 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %188 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %186, %189
  store i32 %190, i32* %6, align 4
  %191 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %192 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sdiv i32 %195, 100000
  %197 = add nsw i32 65, %196
  %198 = load i32, i32* %6, align 4
  %199 = srem i32 %198, 100000
  %200 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %194, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %197, i32 %199)
  br label %201

201:                                              ; preds = %176, %169
  %202 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %203 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @strlen(i8* %205)
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* %4, align 4
  %209 = and i32 %208, 3
  %210 = sub nsw i32 4, %209
  %211 = load i32, i32* %4, align 4
  %212 = add nsw i32 %211, %210
  store i32 %212, i32* %4, align 4
  %213 = load i32, i32* %4, align 4
  %214 = add nsw i32 4, %213
  %215 = call i8* @cpu_to_be16(i32 %214)
  %216 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %217 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %216, i32 0, i32 1
  store i8* %215, i8** %217, align 8
  %218 = load i32, i32* %4, align 4
  %219 = add nsw i32 4, %218
  %220 = load i32, i32* %5, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %5, align 4
  %222 = load i64, i64* @ql_dbg_disc, align 8
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %224 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %225 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %222, %struct.TYPE_28__* %223, i32 8358, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %227)
  %229 = load i8*, i8** %10, align 8
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr i8, i8* %229, i64 %231
  %233 = bitcast i8* %232 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %233, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %234 = load i32, i32* @FDMI_HBA_MODEL, align 4
  %235 = call i8* @cpu_to_be16(i32 %234)
  %236 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %237 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %236, i32 0, i32 2
  store i8* %235, i8** %237, align 8
  %238 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %239 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 2
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %243 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %242, i32 0, i32 3
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %241, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %244)
  %246 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %247 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 2
  %249 = load i8*, i8** %248, align 8
  %250 = call i64 @strlen(i8* %249)
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %4, align 4
  %252 = load i32, i32* %4, align 4
  %253 = and i32 %252, 3
  %254 = sub nsw i32 4, %253
  %255 = load i32, i32* %4, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %4, align 4
  %257 = load i32, i32* %4, align 4
  %258 = add nsw i32 4, %257
  %259 = call i8* @cpu_to_be16(i32 %258)
  %260 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %261 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %260, i32 0, i32 1
  store i8* %259, i8** %261, align 8
  %262 = load i32, i32* %4, align 4
  %263 = add nsw i32 4, %262
  %264 = load i32, i32* %5, align 4
  %265 = add nsw i32 %264, %263
  store i32 %265, i32* %5, align 4
  %266 = load i64, i64* @ql_dbg_disc, align 8
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %268 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %269 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 2
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %266, %struct.TYPE_28__* %267, i32 8359, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %271)
  %273 = load i8*, i8** %10, align 8
  %274 = load i32, i32* %5, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr i8, i8* %273, i64 %275
  %277 = bitcast i8* %276 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %277, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %278 = load i32, i32* @FDMI_HBA_MODEL_DESCRIPTION, align 4
  %279 = call i8* @cpu_to_be16(i32 %278)
  %280 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %281 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %280, i32 0, i32 2
  store i8* %279, i8** %281, align 8
  %282 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %283 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 3
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %287 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %286, i32 0, i32 4
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %285, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %288)
  %290 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %291 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 3
  %293 = load i8*, i8** %292, align 8
  %294 = call i64 @strlen(i8* %293)
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %4, align 4
  %296 = load i32, i32* %4, align 4
  %297 = and i32 %296, 3
  %298 = sub nsw i32 4, %297
  %299 = load i32, i32* %4, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %4, align 4
  %301 = load i32, i32* %4, align 4
  %302 = add nsw i32 4, %301
  %303 = call i8* @cpu_to_be16(i32 %302)
  %304 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %305 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %304, i32 0, i32 1
  store i8* %303, i8** %305, align 8
  %306 = load i32, i32* %4, align 4
  %307 = add nsw i32 4, %306
  %308 = load i32, i32* %5, align 4
  %309 = add nsw i32 %308, %307
  store i32 %309, i32* %5, align 4
  %310 = load i64, i64* @ql_dbg_disc, align 8
  %311 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %312 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %313 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %313, i32 0, i32 3
  %315 = load i8*, i8** %314, align 8
  %316 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %310, %struct.TYPE_28__* %311, i32 8360, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %315)
  %317 = load i8*, i8** %10, align 8
  %318 = load i32, i32* %5, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr i8, i8* %317, i64 %319
  %321 = bitcast i8* %320 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %321, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %322 = load i32, i32* @FDMI_HBA_HARDWARE_VERSION, align 4
  %323 = call i8* @cpu_to_be16(i32 %322)
  %324 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %325 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %324, i32 0, i32 2
  store i8* %323, i8** %325, align 8
  %326 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %327 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %338, label %329

329:                                              ; preds = %201
  %330 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %331 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %331, i32 0, i32 4
  %333 = load i8*, i8** %332, align 8
  %334 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %335 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %334, i32 0, i32 5
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %333, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %336)
  br label %367

338:                                              ; preds = %201
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %340 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %341 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 4
  %343 = load i8*, i8** %342, align 8
  %344 = call i64 @qla2xxx_get_vpd_field(%struct.TYPE_28__* %339, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %343, i32 8)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %338
  br label %366

347:                                              ; preds = %338
  %348 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %349 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %350 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 4
  %352 = load i8*, i8** %351, align 8
  %353 = call i64 @qla2xxx_get_vpd_field(%struct.TYPE_28__* %348, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %352, i32 8)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %347
  br label %365

356:                                              ; preds = %347
  %357 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %358 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 4
  %360 = load i8*, i8** %359, align 8
  %361 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %362 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %361, i32 0, i32 5
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %360, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %363)
  br label %365

365:                                              ; preds = %356, %355
  br label %366

366:                                              ; preds = %365, %346
  br label %367

367:                                              ; preds = %366, %329
  %368 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %369 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %369, i32 0, i32 4
  %371 = load i8*, i8** %370, align 8
  %372 = call i64 @strlen(i8* %371)
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %4, align 4
  %374 = load i32, i32* %4, align 4
  %375 = and i32 %374, 3
  %376 = sub nsw i32 4, %375
  %377 = load i32, i32* %4, align 4
  %378 = add nsw i32 %377, %376
  store i32 %378, i32* %4, align 4
  %379 = load i32, i32* %4, align 4
  %380 = add nsw i32 4, %379
  %381 = call i8* @cpu_to_be16(i32 %380)
  %382 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %383 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %382, i32 0, i32 1
  store i8* %381, i8** %383, align 8
  %384 = load i32, i32* %4, align 4
  %385 = add nsw i32 4, %384
  %386 = load i32, i32* %5, align 4
  %387 = add nsw i32 %386, %385
  store i32 %387, i32* %5, align 4
  %388 = load i64, i64* @ql_dbg_disc, align 8
  %389 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %390 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %391 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %391, i32 0, i32 4
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %388, %struct.TYPE_28__* %389, i32 8361, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* %393)
  %395 = load i8*, i8** %10, align 8
  %396 = load i32, i32* %5, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr i8, i8* %395, i64 %397
  %399 = bitcast i8* %398 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %399, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %400 = load i32, i32* @FDMI_HBA_DRIVER_VERSION, align 4
  %401 = call i8* @cpu_to_be16(i32 %400)
  %402 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %403 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %402, i32 0, i32 2
  store i8* %401, i8** %403, align 8
  %404 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %405 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i32 0, i32 5
  %407 = load i8*, i8** %406, align 8
  %408 = load i8*, i8** @qla2x00_version_str, align 8
  %409 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %407, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %408)
  %410 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %411 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %411, i32 0, i32 5
  %413 = load i8*, i8** %412, align 8
  %414 = call i64 @strlen(i8* %413)
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %4, align 4
  %416 = load i32, i32* %4, align 4
  %417 = and i32 %416, 3
  %418 = sub nsw i32 4, %417
  %419 = load i32, i32* %4, align 4
  %420 = add nsw i32 %419, %418
  store i32 %420, i32* %4, align 4
  %421 = load i32, i32* %4, align 4
  %422 = add nsw i32 4, %421
  %423 = call i8* @cpu_to_be16(i32 %422)
  %424 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %425 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %424, i32 0, i32 1
  store i8* %423, i8** %425, align 8
  %426 = load i32, i32* %4, align 4
  %427 = add nsw i32 4, %426
  %428 = load i32, i32* %5, align 4
  %429 = add nsw i32 %428, %427
  store i32 %429, i32* %5, align 4
  %430 = load i64, i64* @ql_dbg_disc, align 8
  %431 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %432 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %433 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %433, i32 0, i32 5
  %435 = load i8*, i8** %434, align 8
  %436 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %430, %struct.TYPE_28__* %431, i32 8362, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %435)
  %437 = load i8*, i8** %10, align 8
  %438 = load i32, i32* %5, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr i8, i8* %437, i64 %439
  %441 = bitcast i8* %440 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %441, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %442 = load i32, i32* @FDMI_HBA_OPTION_ROM_VERSION, align 4
  %443 = call i8* @cpu_to_be16(i32 %442)
  %444 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %445 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %444, i32 0, i32 2
  store i8* %443, i8** %445, align 8
  %446 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %447 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %447, i32 0, i32 6
  %449 = load i8*, i8** %448, align 8
  %450 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %451 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %450, i32 0, i32 6
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 1
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %456 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %455, i32 0, i32 6
  %457 = load i32*, i32** %456, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 0
  %459 = load i32, i32* %458, align 4
  %460 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %449, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %454, i32 %459)
  %461 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %462 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %462, i32 0, i32 6
  %464 = load i8*, i8** %463, align 8
  %465 = call i64 @strlen(i8* %464)
  %466 = trunc i64 %465 to i32
  store i32 %466, i32* %4, align 4
  %467 = load i32, i32* %4, align 4
  %468 = and i32 %467, 3
  %469 = sub nsw i32 4, %468
  %470 = load i32, i32* %4, align 4
  %471 = add nsw i32 %470, %469
  store i32 %471, i32* %4, align 4
  %472 = load i32, i32* %4, align 4
  %473 = add nsw i32 4, %472
  %474 = call i8* @cpu_to_be16(i32 %473)
  %475 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %476 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %475, i32 0, i32 1
  store i8* %474, i8** %476, align 8
  %477 = load i32, i32* %4, align 4
  %478 = add nsw i32 4, %477
  %479 = load i32, i32* %5, align 4
  %480 = add nsw i32 %479, %478
  store i32 %480, i32* %5, align 4
  %481 = load i64, i64* @ql_dbg_disc, align 8
  %482 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %483 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %484 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %484, i32 0, i32 6
  %486 = load i8*, i8** %485, align 8
  %487 = getelementptr inbounds i8, i8* %486, i64 1
  %488 = load i8, i8* %487, align 1
  %489 = sext i8 %488 to i32
  %490 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %491 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %491, i32 0, i32 6
  %493 = load i8*, i8** %492, align 8
  %494 = getelementptr inbounds i8, i8* %493, i64 0
  %495 = load i8, i8* %494, align 1
  %496 = sext i8 %495 to i32
  %497 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %481, %struct.TYPE_28__* %482, i32 8363, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %489, i32 %496)
  %498 = load i8*, i8** %10, align 8
  %499 = load i32, i32* %5, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr i8, i8* %498, i64 %500
  %502 = bitcast i8* %501 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %502, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %503 = load i32, i32* @FDMI_HBA_FIRMWARE_VERSION, align 4
  %504 = call i8* @cpu_to_be16(i32 %503)
  %505 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %506 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %505, i32 0, i32 2
  store i8* %504, i8** %506, align 8
  %507 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %508 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %507, i32 0, i32 10
  %509 = load %struct.TYPE_23__*, %struct.TYPE_23__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %509, i32 0, i32 0
  %511 = load i32 (%struct.TYPE_28__*, i8*, i32)*, i32 (%struct.TYPE_28__*, i8*, i32)** %510, align 8
  %512 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %513 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %514 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %514, i32 0, i32 7
  %516 = load i8*, i8** %515, align 8
  %517 = call i32 %511(%struct.TYPE_28__* %512, i8* %516, i32 8)
  %518 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %519 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %519, i32 0, i32 7
  %521 = load i8*, i8** %520, align 8
  %522 = call i64 @strlen(i8* %521)
  %523 = trunc i64 %522 to i32
  store i32 %523, i32* %4, align 4
  %524 = load i32, i32* %4, align 4
  %525 = and i32 %524, 3
  %526 = sub nsw i32 4, %525
  %527 = load i32, i32* %4, align 4
  %528 = add nsw i32 %527, %526
  store i32 %528, i32* %4, align 4
  %529 = load i32, i32* %4, align 4
  %530 = add nsw i32 4, %529
  %531 = call i8* @cpu_to_be16(i32 %530)
  %532 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %533 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %532, i32 0, i32 1
  store i8* %531, i8** %533, align 8
  %534 = load i32, i32* %4, align 4
  %535 = add nsw i32 4, %534
  %536 = load i32, i32* %5, align 4
  %537 = add nsw i32 %536, %535
  store i32 %537, i32* %5, align 4
  %538 = load i64, i64* @ql_dbg_disc, align 8
  %539 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %540 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %541 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %541, i32 0, i32 7
  %543 = load i8*, i8** %542, align 8
  %544 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %538, %struct.TYPE_28__* %539, i32 8364, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* %543)
  %545 = load i8*, i8** %10, align 8
  %546 = load i32, i32* %5, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr i8, i8* %545, i64 %547
  %549 = bitcast i8* %548 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %549, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %550 = load i32, i32* @FDMI_HBA_OS_NAME_AND_VERSION, align 4
  %551 = call i8* @cpu_to_be16(i32 %550)
  %552 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %553 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %552, i32 0, i32 2
  store i8* %551, i8** %553, align 8
  %554 = call %struct.new_utsname* (...) @utsname()
  store %struct.new_utsname* %554, %struct.new_utsname** %13, align 8
  %555 = load %struct.new_utsname*, %struct.new_utsname** %13, align 8
  %556 = icmp ne %struct.new_utsname* %555, null
  br i1 %556, label %557, label %572

557:                                              ; preds = %367
  %558 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %559 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %559, i32 0, i32 8
  %561 = load i8*, i8** %560, align 8
  %562 = load %struct.new_utsname*, %struct.new_utsname** %13, align 8
  %563 = getelementptr inbounds %struct.new_utsname, %struct.new_utsname* %562, i32 0, i32 0
  %564 = load i8*, i8** %563, align 8
  %565 = load %struct.new_utsname*, %struct.new_utsname** %13, align 8
  %566 = getelementptr inbounds %struct.new_utsname, %struct.new_utsname* %565, i32 0, i32 1
  %567 = load i8*, i8** %566, align 8
  %568 = load %struct.new_utsname*, %struct.new_utsname** %13, align 8
  %569 = getelementptr inbounds %struct.new_utsname, %struct.new_utsname* %568, i32 0, i32 2
  %570 = load i8*, i8** %569, align 8
  %571 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %561, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* %564, i8* %567, i8* %570)
  br label %582

572:                                              ; preds = %367
  %573 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %574 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %574, i32 0, i32 8
  %576 = load i8*, i8** %575, align 8
  %577 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %578 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = call i8* @fc_host_system_hostname(i32 %579)
  %581 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %576, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* %580)
  br label %582

582:                                              ; preds = %572, %557
  %583 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %584 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %584, i32 0, i32 8
  %586 = load i8*, i8** %585, align 8
  %587 = call i64 @strlen(i8* %586)
  %588 = trunc i64 %587 to i32
  store i32 %588, i32* %4, align 4
  %589 = load i32, i32* %4, align 4
  %590 = and i32 %589, 3
  %591 = sub nsw i32 4, %590
  %592 = load i32, i32* %4, align 4
  %593 = add nsw i32 %592, %591
  store i32 %593, i32* %4, align 4
  %594 = load i32, i32* %4, align 4
  %595 = add nsw i32 4, %594
  %596 = call i8* @cpu_to_be16(i32 %595)
  %597 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %598 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %597, i32 0, i32 1
  store i8* %596, i8** %598, align 8
  %599 = load i32, i32* %4, align 4
  %600 = add nsw i32 4, %599
  %601 = load i32, i32* %5, align 4
  %602 = add nsw i32 %601, %600
  store i32 %602, i32* %5, align 4
  %603 = load i64, i64* @ql_dbg_disc, align 8
  %604 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %605 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %606 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %605, i32 0, i32 0
  %607 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %606, i32 0, i32 8
  %608 = load i8*, i8** %607, align 8
  %609 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %603, %struct.TYPE_28__* %604, i32 8366, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* %608)
  %610 = load i8*, i8** %10, align 8
  %611 = load i32, i32* %5, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr i8, i8* %610, i64 %612
  %614 = bitcast i8* %613 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %614, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %615 = load i32, i32* @FDMI_HBA_MAXIMUM_CT_PAYLOAD_LENGTH, align 4
  %616 = call i8* @cpu_to_be16(i32 %615)
  %617 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %618 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %617, i32 0, i32 2
  store i8* %616, i8** %618, align 8
  %619 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %620 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %619, i32 0, i32 7
  %621 = load i32, i32* %620, align 8
  %622 = call i8* @cpu_to_be32(i32 %621)
  %623 = ptrtoint i8* %622 to i32
  %624 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %625 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %624, i32 0, i32 0
  %626 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %625, i32 0, i32 9
  store i32 %623, i32* %626, align 8
  %627 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %628 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %627, i32 0, i32 0
  %629 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %628, i32 0, i32 9
  %630 = load i32, i32* %629, align 8
  %631 = call i8* @cpu_to_be32(i32 %630)
  %632 = ptrtoint i8* %631 to i32
  %633 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %634 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %633, i32 0, i32 0
  %635 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %634, i32 0, i32 9
  store i32 %632, i32* %635, align 8
  %636 = call i8* @cpu_to_be16(i32 8)
  %637 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %638 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %637, i32 0, i32 1
  store i8* %636, i8** %638, align 8
  %639 = load i32, i32* %5, align 4
  %640 = add nsw i32 %639, 8
  store i32 %640, i32* %5, align 4
  %641 = load i64, i64* @ql_dbg_disc, align 8
  %642 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %643 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %644 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %643, i32 0, i32 0
  %645 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %644, i32 0, i32 9
  %646 = load i32, i32* %645, align 8
  %647 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %641, %struct.TYPE_28__* %642, i32 8367, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 %646)
  %648 = load i8*, i8** %10, align 8
  %649 = load i32, i32* %5, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr i8, i8* %648, i64 %650
  %652 = bitcast i8* %651 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %652, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %653 = load i32, i32* @FDMI_HBA_NODE_SYMBOLIC_NAME, align 4
  %654 = call i8* @cpu_to_be16(i32 %653)
  %655 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %656 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %655, i32 0, i32 2
  store i8* %654, i8** %656, align 8
  %657 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %658 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %659 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %658, i32 0, i32 0
  %660 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %659, i32 0, i32 10
  %661 = load i8*, i8** %660, align 8
  %662 = call i32 @qla2x00_get_sym_node_name(%struct.TYPE_28__* %657, i8* %661, i32 8)
  %663 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %664 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %663, i32 0, i32 0
  %665 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %664, i32 0, i32 10
  %666 = load i8*, i8** %665, align 8
  %667 = call i64 @strlen(i8* %666)
  %668 = trunc i64 %667 to i32
  store i32 %668, i32* %4, align 4
  %669 = load i32, i32* %4, align 4
  %670 = and i32 %669, 3
  %671 = sub nsw i32 4, %670
  %672 = load i32, i32* %4, align 4
  %673 = add nsw i32 %672, %671
  store i32 %673, i32* %4, align 4
  %674 = load i32, i32* %4, align 4
  %675 = add nsw i32 4, %674
  %676 = call i8* @cpu_to_be16(i32 %675)
  %677 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %678 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %677, i32 0, i32 1
  store i8* %676, i8** %678, align 8
  %679 = load i32, i32* %4, align 4
  %680 = add nsw i32 4, %679
  %681 = load i32, i32* %5, align 4
  %682 = add nsw i32 %681, %680
  store i32 %682, i32* %5, align 4
  %683 = load i64, i64* @ql_dbg_disc, align 8
  %684 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %685 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %686 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %685, i32 0, i32 0
  %687 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %686, i32 0, i32 10
  %688 = load i8*, i8** %687, align 8
  %689 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %683, %struct.TYPE_28__* %684, i32 8368, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %688)
  %690 = load i8*, i8** %10, align 8
  %691 = load i32, i32* %5, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr i8, i8* %690, i64 %692
  %694 = bitcast i8* %693 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %694, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %695 = load i32, i32* @FDMI_HBA_VENDOR_ID, align 4
  %696 = call i8* @cpu_to_be16(i32 %695)
  %697 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %698 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %697, i32 0, i32 2
  store i8* %696, i8** %698, align 8
  %699 = call i8* @cpu_to_be32(i32 4215)
  %700 = ptrtoint i8* %699 to i32
  %701 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %702 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %701, i32 0, i32 0
  %703 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %702, i32 0, i32 15
  store i32 %700, i32* %703, align 8
  %704 = call i8* @cpu_to_be16(i32 8)
  %705 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %706 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %705, i32 0, i32 1
  store i8* %704, i8** %706, align 8
  %707 = load i32, i32* %5, align 4
  %708 = add nsw i32 %707, 8
  store i32 %708, i32* %5, align 4
  %709 = load i64, i64* @ql_dbg_disc, align 8
  %710 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %711 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %712 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %711, i32 0, i32 0
  %713 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %712, i32 0, i32 15
  %714 = load i32, i32* %713, align 8
  %715 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %709, %struct.TYPE_28__* %710, i32 8369, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 %714)
  %716 = load i8*, i8** %10, align 8
  %717 = load i32, i32* %5, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr i8, i8* %716, i64 %718
  %720 = bitcast i8* %719 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %720, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %721 = load i32, i32* @FDMI_HBA_NUM_PORTS, align 4
  %722 = call i8* @cpu_to_be16(i32 %721)
  %723 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %724 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %723, i32 0, i32 2
  store i8* %722, i8** %724, align 8
  %725 = call i8* @cpu_to_be32(i32 1)
  %726 = ptrtoint i8* %725 to i32
  %727 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %728 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %727, i32 0, i32 0
  %729 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %728, i32 0, i32 14
  store i32 %726, i32* %729, align 4
  %730 = call i8* @cpu_to_be16(i32 8)
  %731 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %732 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %731, i32 0, i32 1
  store i8* %730, i8** %732, align 8
  %733 = load i32, i32* %5, align 4
  %734 = add nsw i32 %733, 8
  store i32 %734, i32* %5, align 4
  %735 = load i64, i64* @ql_dbg_disc, align 8
  %736 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %737 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %738 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %737, i32 0, i32 0
  %739 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %738, i32 0, i32 14
  %740 = load i32, i32* %739, align 4
  %741 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %735, %struct.TYPE_28__* %736, i32 8370, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 %740)
  %742 = load i8*, i8** %10, align 8
  %743 = load i32, i32* %5, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr i8, i8* %742, i64 %744
  %746 = bitcast i8* %745 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %746, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %747 = load i32, i32* @FDMI_HBA_FABRIC_NAME, align 4
  %748 = call i8* @cpu_to_be16(i32 %747)
  %749 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %750 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %749, i32 0, i32 2
  store i8* %748, i8** %750, align 8
  %751 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %752 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %751, i32 0, i32 0
  %753 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %752, i32 0, i32 13
  %754 = load i32, i32* %753, align 8
  %755 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %756 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %755, i32 0, i32 0
  %757 = load i32, i32* %756, align 8
  %758 = load i32, i32* @WWN_SIZE, align 4
  %759 = call i32 @memcpy(i32 %754, i32 %757, i32 %758)
  %760 = load i32, i32* @WWN_SIZE, align 4
  %761 = add nsw i32 4, %760
  %762 = call i8* @cpu_to_be16(i32 %761)
  %763 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %764 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %763, i32 0, i32 1
  store i8* %762, i8** %764, align 8
  %765 = load i32, i32* @WWN_SIZE, align 4
  %766 = add nsw i32 4, %765
  %767 = load i32, i32* %5, align 4
  %768 = add nsw i32 %767, %766
  store i32 %768, i32* %5, align 4
  %769 = load i64, i64* @ql_dbg_disc, align 8
  %770 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %771 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %772 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %771, i32 0, i32 0
  %773 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %772, i32 0, i32 13
  %774 = load i32, i32* %773, align 8
  %775 = call i32 @wwn_to_u64(i32 %774)
  %776 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %769, %struct.TYPE_28__* %770, i32 8371, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 %775)
  %777 = load i8*, i8** %10, align 8
  %778 = load i32, i32* %5, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr i8, i8* %777, i64 %779
  %781 = bitcast i8* %780 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %781, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %782 = load i32, i32* @FDMI_HBA_BOOT_BIOS_NAME, align 4
  %783 = call i8* @cpu_to_be16(i32 %782)
  %784 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %785 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %784, i32 0, i32 2
  store i8* %783, i8** %785, align 8
  %786 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %787 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %786, i32 0, i32 0
  %788 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %787, i32 0, i32 11
  %789 = load i8*, i8** %788, align 8
  %790 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %791 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %790, i32 0, i32 6
  %792 = load i32*, i32** %791, align 8
  %793 = getelementptr inbounds i32, i32* %792, i64 1
  %794 = load i32, i32* %793, align 4
  %795 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %796 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %795, i32 0, i32 6
  %797 = load i32*, i32** %796, align 8
  %798 = getelementptr inbounds i32, i32* %797, i64 0
  %799 = load i32, i32* %798, align 4
  %800 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %789, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %794, i32 %799)
  %801 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %802 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %801, i32 0, i32 0
  %803 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %802, i32 0, i32 11
  %804 = load i8*, i8** %803, align 8
  %805 = call i64 @strlen(i8* %804)
  %806 = trunc i64 %805 to i32
  store i32 %806, i32* %4, align 4
  %807 = load i32, i32* %4, align 4
  %808 = and i32 %807, 3
  %809 = sub nsw i32 4, %808
  %810 = load i32, i32* %4, align 4
  %811 = add nsw i32 %810, %809
  store i32 %811, i32* %4, align 4
  %812 = load i32, i32* %4, align 4
  %813 = add nsw i32 4, %812
  %814 = call i8* @cpu_to_be16(i32 %813)
  %815 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %816 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %815, i32 0, i32 1
  store i8* %814, i8** %816, align 8
  %817 = load i32, i32* %4, align 4
  %818 = add nsw i32 4, %817
  %819 = load i32, i32* %5, align 4
  %820 = add nsw i32 %819, %818
  store i32 %820, i32* %5, align 4
  %821 = load i64, i64* @ql_dbg_disc, align 8
  %822 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %823 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %824 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %823, i32 0, i32 0
  %825 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %824, i32 0, i32 11
  %826 = load i8*, i8** %825, align 8
  %827 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %821, %struct.TYPE_28__* %822, i32 8372, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8* %826)
  %828 = load i8*, i8** %10, align 8
  %829 = load i32, i32* %5, align 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr i8, i8* %828, i64 %830
  %832 = bitcast i8* %831 to %struct.ct_fdmiv2_hba_attr*
  store %struct.ct_fdmiv2_hba_attr* %832, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %833 = load i32, i32* @FDMI_HBA_TYPE_VENDOR_IDENTIFIER, align 4
  %834 = call i8* @cpu_to_be16(i32 %833)
  %835 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %836 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %835, i32 0, i32 2
  store i8* %834, i8** %836, align 8
  %837 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %838 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %837, i32 0, i32 0
  %839 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %838, i32 0, i32 12
  %840 = load i8*, i8** %839, align 8
  %841 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %840, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %842 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %843 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %842, i32 0, i32 0
  %844 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %843, i32 0, i32 12
  %845 = load i8*, i8** %844, align 8
  %846 = call i64 @strlen(i8* %845)
  %847 = trunc i64 %846 to i32
  store i32 %847, i32* %4, align 4
  %848 = load i32, i32* %4, align 4
  %849 = and i32 %848, 3
  %850 = sub nsw i32 4, %849
  %851 = load i32, i32* %4, align 4
  %852 = add nsw i32 %851, %850
  store i32 %852, i32* %4, align 4
  %853 = load i32, i32* %4, align 4
  %854 = add nsw i32 4, %853
  %855 = call i8* @cpu_to_be16(i32 %854)
  %856 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %857 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %856, i32 0, i32 1
  store i8* %855, i8** %857, align 8
  %858 = load i32, i32* %4, align 4
  %859 = add nsw i32 4, %858
  %860 = load i32, i32* %5, align 4
  %861 = add nsw i32 %860, %859
  store i32 %861, i32* %5, align 4
  %862 = load i64, i64* @ql_dbg_disc, align 8
  %863 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %864 = load %struct.ct_fdmiv2_hba_attr*, %struct.ct_fdmiv2_hba_attr** %11, align 8
  %865 = getelementptr inbounds %struct.ct_fdmiv2_hba_attr, %struct.ct_fdmiv2_hba_attr* %864, i32 0, i32 0
  %866 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %865, i32 0, i32 12
  %867 = load i8*, i8** %866, align 8
  %868 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %862, %struct.TYPE_28__* %863, i32 8219, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), i8* %867)
  %869 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %870 = load i32, i32* %5, align 4
  %871 = add nsw i32 %870, 16
  %872 = call i32 @qla2x00_update_ms_fdmi_iocb(%struct.TYPE_28__* %869, i32 %871)
  %873 = load i64, i64* @ql_dbg_disc, align 8
  %874 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %875 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %876 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %875, i32 0, i32 0
  %877 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %876, i32 0, i32 0
  %878 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %877, i32 0, i32 0
  %879 = load i32, i32* %878, align 8
  %880 = call i32 @wwn_to_u64(i32 %879)
  %881 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %873, %struct.TYPE_28__* %874, i32 8373, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i32 %880)
  %882 = load i64, i64* @ql_dbg_disc, align 8
  %883 = load i64, i64* @ql_dbg_buffer, align 8
  %884 = add nsw i64 %882, %883
  %885 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %886 = load i8*, i8** %10, align 8
  %887 = load i32, i32* %5, align 4
  %888 = call i32 @ql_dump_buffer(i64 %884, %struct.TYPE_28__* %885, i32 8374, i8* %886, i32 %887)
  %889 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %890 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %891 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %890, i32 0, i32 9
  %892 = load i32, i32* %891, align 8
  %893 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %894 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %893, i32 0, i32 8
  %895 = load i32, i32* %894, align 4
  %896 = call i32 @qla2x00_issue_iocb(%struct.TYPE_28__* %889, i32 %892, i32 %895, i32 4)
  store i32 %896, i32* %3, align 4
  %897 = load i32, i32* %3, align 4
  %898 = load i32, i32* @QLA_SUCCESS, align 4
  %899 = icmp ne i32 %897, %898
  br i1 %899, label %900, label %905

900:                                              ; preds = %582
  %901 = load i64, i64* @ql_dbg_disc, align 8
  %902 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %903 = load i32, i32* %3, align 4
  %904 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %901, %struct.TYPE_28__* %902, i32 8375, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0), i32 %903)
  br label %950

905:                                              ; preds = %582
  %906 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %907 = load i32*, i32** %7, align 8
  %908 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %909 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_28__* %906, i32* %907, %struct.ct_sns_rsp* %908, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %910 = load i32, i32* @QLA_SUCCESS, align 4
  %911 = icmp ne i32 %909, %910
  br i1 %911, label %912, label %945

912:                                              ; preds = %905
  %913 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %913, i32* %3, align 4
  %914 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %915 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %914, i32 0, i32 0
  %916 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %915, i32 0, i32 1
  %917 = load i32, i32* %916, align 4
  %918 = load i32, i32* @CT_REASON_CANNOT_PERFORM, align 4
  %919 = icmp eq i32 %917, %918
  br i1 %919, label %920, label %932

920:                                              ; preds = %912
  %921 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %922 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %921, i32 0, i32 0
  %923 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %922, i32 0, i32 0
  %924 = load i32, i32* %923, align 4
  %925 = load i32, i32* @CT_EXPL_ALREADY_REGISTERED, align 4
  %926 = icmp eq i32 %924, %925
  br i1 %926, label %927, label %932

927:                                              ; preds = %920
  %928 = load i64, i64* @ql_dbg_disc, align 8
  %929 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %930 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %928, %struct.TYPE_28__* %929, i32 8376, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0))
  %931 = load i32, i32* @QLA_ALREADY_REGISTERED, align 4
  store i32 %931, i32* %3, align 4
  br label %944

932:                                              ; preds = %920, %912
  %933 = load i64, i64* @ql_dbg_disc, align 8
  %934 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %935 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %936 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %935, i32 0, i32 0
  %937 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %936, i32 0, i32 1
  %938 = load i32, i32* %937, align 4
  %939 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %940 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %939, i32 0, i32 0
  %941 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %940, i32 0, i32 0
  %942 = load i32, i32* %941, align 4
  %943 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %933, %struct.TYPE_28__* %934, i32 8214, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.34, i64 0, i64 0), i32 %938, i32 %942)
  br label %944

944:                                              ; preds = %932, %927
  br label %949

945:                                              ; preds = %905
  %946 = load i64, i64* @ql_dbg_disc, align 8
  %947 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %948 = call i32 (i64, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i64 %946, %struct.TYPE_28__* %947, i32 8377, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0))
  br label %949

949:                                              ; preds = %945, %944
  br label %950

950:                                              ; preds = %949, %900
  %951 = load i32, i32* %3, align 4
  ret i32 %951
}

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_28__*, i32, i8*, ...) #1

declare dso_local i32 @wwn_to_u64(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i64 @qla2xxx_get_vpd_field(%struct.TYPE_28__*, i8*, i8*, i32) #1

declare dso_local %struct.new_utsname* @utsname(...) #1

declare dso_local i8* @fc_host_system_hostname(i32) #1

declare dso_local i32 @qla2x00_get_sym_node_name(%struct.TYPE_28__*, i8*, i32) #1

declare dso_local i32 @qla2x00_update_ms_fdmi_iocb(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_28__*, i32, i8*, i32) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_28__*, i32*, %struct.ct_sns_rsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
