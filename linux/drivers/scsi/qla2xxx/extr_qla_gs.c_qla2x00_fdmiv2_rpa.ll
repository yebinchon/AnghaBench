; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmiv2_rpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmiv2_rpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_32__, %struct.TYPE_31__, i32, i32, i32, i32, i32, %struct.qla_hw_data* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i64 }
%struct.qla_hw_data = type { i32, i32, i32, %struct.TYPE_30__*, %struct.TYPE_25__*, %struct.TYPE_26__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.ct_sns_rsp }
%struct.ct_sns_rsp = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32* (%struct.TYPE_24__*, i32, i32)* }
%struct.ct_sns_req = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_34__, %struct.TYPE_29__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__, i32 }
%struct.TYPE_28__ = type { i8* }
%struct.ct_fdmiv2_port_attr = type { %struct.TYPE_33__, i8*, i8* }
%struct.TYPE_33__ = type { i32*, i32, i8*, i8*, i32*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i8*, i8* }
%struct.init_cb_24xx = type { i32 }
%struct.new_utsname = type { i8* }

@RPA_RSP_SIZE = common dso_local global i32 0, align 4
@RPA_CMD = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@FDMIV2_PORT_ATTR_COUNT = common dso_local global i32 0, align 4
@FDMI_PORT_FC4_TYPES = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"FC4_TYPES=%02x %02x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"NVME FC4 Type = %02x 0x0 0x0 0x0 0x0 0x0.\0A\00", align 1
@FDMI_PORT_SUPPORT_SPEED = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_10GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_32GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_16GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_8GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_4GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_2GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_1GB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Supported Port Speed = %x.\0A\00", align 1
@FDMI_PORT_CURRENT_SPEED = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Current_Speed = %x.\0A\00", align 1
@FDMI_PORT_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Max_Frame_Size = %x.\0A\00", align 1
@FDMI_PORT_OS_DEVICE_NAME = common dso_local global i32 0, align 4
@QLA2XXX_DRIVER_NAME = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"%s:host%lu\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"OS_Device_Name = %s.\0A\00", align 1
@FDMI_PORT_HOST_NAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"HostName=%s.\0A\00", align 1
@FDMI_PORT_NODE_NAME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Node Name = %016llx.\0A\00", align 1
@FDMI_PORT_NAME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"Port Name = %016llx.\0A\00", align 1
@FDMI_PORT_SYM_NAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"port symbolic name = %s\0A\00", align 1
@FDMI_PORT_TYPE = common dso_local global i32 0, align 4
@NS_NX_PORT_TYPE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"Port Type = %x.\0A\00", align 1
@FDMI_PORT_SUPP_COS = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"Supported COS = %08x\0A\00", align 1
@FDMI_PORT_FABRIC_NAME = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"Fabric Name = %016llx.\0A\00", align 1
@FDMI_PORT_FC4_TYPE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [35 x i8] c"Port Active FC4 Type = %02x %02x.\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"NVME Port Active FC4 Type = %02x 0x0 0x0 0x0 0x0 0x0.\0A\00", align 1
@FDMI_PORT_STATE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [18 x i8] c"Port State = %x.\0A\00", align 1
@FDMI_PORT_COUNT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [23 x i8] c"Number of ports = %x.\0A\00", align 1
@FDMI_PORT_ID = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"Port Id = %x.\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"RPA portname= %8phN size=%d.\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [37 x i8] c"RPA FDMI v2 issue IOCB failed (%d).\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"RPA\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@CT_REASON_CANNOT_PERFORM = common dso_local global i32 0, align 4
@CT_EXPL_ALREADY_REGISTERED = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [32 x i8] c"RPA FDMI v2 already registered\0A\00", align 1
@QLA_ALREADY_REGISTERED = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [63 x i8] c"RPA FDMI v2 failed, CT Reason code: 0x%x, CT Explanation 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"RPA FDMI V2 exiting normally.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*)* @qla2x00_fdmiv2_rpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_fdmiv2_rpa(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ct_sns_req*, align 8
  %9 = alloca %struct.ct_sns_rsp*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ct_fdmiv2_port_attr*, align 8
  %12 = alloca %struct.init_cb_24xx*, align 8
  %13 = alloca %struct.new_utsname*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 7
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %6, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 3
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %20 = bitcast %struct.TYPE_30__* %19 to %struct.init_cb_24xx*
  store %struct.init_cb_24xx* %20, %struct.init_cb_24xx** %12, align 8
  store %struct.new_utsname* null, %struct.new_utsname** %13, align 8
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 5
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i32* (%struct.TYPE_24__*, i32, i32)*, i32* (%struct.TYPE_24__*, i32, i32)** %24, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %27 = load i32, i32* @RPA_RSP_SIZE, align 4
  %28 = call i32* %25(%struct.TYPE_24__* %26, i32 0, i32 %27)
  store i32* %28, i32** %7, align 8
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 4
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %32 = load i32, i32* @RPA_CMD, align 4
  %33 = load i32, i32* @RPA_RSP_SIZE, align 4
  %34 = call %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(%struct.TYPE_25__* %31, i32 %32, i32 %33)
  store %struct.ct_sns_req* %34, %struct.ct_sns_req** %8, align 8
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 4
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 0
  store %struct.ct_sns_rsp* %39, %struct.ct_sns_rsp** %9, align 8
  %40 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %41 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @WWN_SIZE, align 4
  %49 = call i32 @memcpy(i32 %44, i32 %47, i32 %48)
  %50 = load i32, i32* @WWN_SIZE, align 4
  %51 = add nsw i32 %50, 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @FDMIV2_PORT_ATTR_COUNT, align 4
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %55 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  store i8* %53, i8** %58, align 8
  %59 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %60 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %59, i32 0, i32 0
  %61 = bitcast %struct.TYPE_22__* %60 to i8*
  store i8* %61, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr i8, i8* %62, i64 %64
  %66 = bitcast i8* %65 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %66, %struct.ct_fdmiv2_port_attr** %11, align 8
  %67 = load i32, i32* @FDMI_PORT_FC4_TYPES, align 4
  %68 = call i8* @cpu_to_be16(i32 %67)
  %69 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %70 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = call i8* @cpu_to_be16(i32 36)
  %72 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %73 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %75 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 1, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 36
  store i32 %80, i32* %5, align 4
  %81 = load i64, i64* @ql_dbg_disc, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %83 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %84 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %90 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %81, %struct.TYPE_24__* %82, i32 8378, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %94)
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %1
  %102 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %103 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 6
  store i32 1, i32* %106, align 4
  %107 = load i64, i64* @ql_dbg_disc, align 8
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %109 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %110 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 6
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %107, %struct.TYPE_24__* %108, i32 8479, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %101, %1
  %117 = load i8*, i8** %10, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr i8, i8* %117, i64 %119
  %121 = bitcast i8* %120 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %121, %struct.ct_fdmiv2_port_attr** %11, align 8
  %122 = load i32, i32* @FDMI_PORT_SUPPORT_SPEED, align 4
  %123 = call i8* @cpu_to_be16(i32 %122)
  %124 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %125 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = call i8* @cpu_to_be16(i32 8)
  %127 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %128 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %130 = call i64 @IS_CNA_CAPABLE(%struct.qla_hw_data* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %116
  %133 = load i32, i32* @FDMI_PORT_SPEED_10GB, align 4
  %134 = call i8* @cpu_to_be32(i32 %133)
  %135 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %136 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 15
  store i8* %134, i8** %137, align 8
  br label %223

138:                                              ; preds = %116
  %139 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %140 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %144 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %142, %138
  %147 = load i32, i32* @FDMI_PORT_SPEED_32GB, align 4
  %148 = load i32, i32* @FDMI_PORT_SPEED_16GB, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @FDMI_PORT_SPEED_8GB, align 4
  %151 = or i32 %149, %150
  %152 = call i8* @cpu_to_be32(i32 %151)
  %153 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %154 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 0, i32 15
  store i8* %152, i8** %155, align 8
  br label %222

156:                                              ; preds = %142
  %157 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %158 = call i64 @IS_QLA2031(%struct.qla_hw_data* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load i32, i32* @FDMI_PORT_SPEED_16GB, align 4
  %162 = load i32, i32* @FDMI_PORT_SPEED_8GB, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @FDMI_PORT_SPEED_4GB, align 4
  %165 = or i32 %163, %164
  %166 = call i8* @cpu_to_be32(i32 %165)
  %167 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %168 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %168, i32 0, i32 15
  store i8* %166, i8** %169, align 8
  br label %221

170:                                              ; preds = %156
  %171 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %172 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %170
  %175 = load i32, i32* @FDMI_PORT_SPEED_8GB, align 4
  %176 = load i32, i32* @FDMI_PORT_SPEED_4GB, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @FDMI_PORT_SPEED_2GB, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %181 = or i32 %179, %180
  %182 = call i8* @cpu_to_be32(i32 %181)
  %183 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %184 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %184, i32 0, i32 15
  store i8* %182, i8** %185, align 8
  br label %220

186:                                              ; preds = %170
  %187 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %188 = call i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %186
  %191 = load i32, i32* @FDMI_PORT_SPEED_4GB, align 4
  %192 = load i32, i32* @FDMI_PORT_SPEED_2GB, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %195 = or i32 %193, %194
  %196 = call i8* @cpu_to_be32(i32 %195)
  %197 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %198 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 15
  store i8* %196, i8** %199, align 8
  br label %219

200:                                              ; preds = %186
  %201 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %202 = call i64 @IS_QLA23XX(%struct.qla_hw_data* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %200
  %205 = load i32, i32* @FDMI_PORT_SPEED_2GB, align 4
  %206 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %207 = or i32 %205, %206
  %208 = call i8* @cpu_to_be32(i32 %207)
  %209 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %210 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %210, i32 0, i32 15
  store i8* %208, i8** %211, align 8
  br label %218

212:                                              ; preds = %200
  %213 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %214 = call i8* @cpu_to_be32(i32 %213)
  %215 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %216 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 15
  store i8* %214, i8** %217, align 8
  br label %218

218:                                              ; preds = %212, %204
  br label %219

219:                                              ; preds = %218, %190
  br label %220

220:                                              ; preds = %219, %174
  br label %221

221:                                              ; preds = %220, %160
  br label %222

222:                                              ; preds = %221, %146
  br label %223

223:                                              ; preds = %222, %132
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, 8
  store i32 %225, i32* %5, align 4
  %226 = load i64, i64* @ql_dbg_disc, align 8
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %228 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %229 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 15
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %226, %struct.TYPE_24__* %227, i32 8379, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %231)
  %233 = load i8*, i8** %10, align 8
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr i8, i8* %233, i64 %235
  %237 = bitcast i8* %236 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %237, %struct.ct_fdmiv2_port_attr** %11, align 8
  %238 = load i32, i32* @FDMI_PORT_CURRENT_SPEED, align 4
  %239 = call i8* @cpu_to_be16(i32 %238)
  %240 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %241 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %240, i32 0, i32 2
  store i8* %239, i8** %241, align 8
  %242 = call i8* @cpu_to_be16(i32 8)
  %243 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %244 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %243, i32 0, i32 1
  store i8* %242, i8** %244, align 8
  %245 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %246 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  switch i32 %247, label %290 [
    i32 132, label %248
    i32 131, label %254
    i32 129, label %260
    i32 128, label %266
    i32 134, label %272
    i32 133, label %278
    i32 130, label %284
  ]

248:                                              ; preds = %223
  %249 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %250 = call i8* @cpu_to_be32(i32 %249)
  %251 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %252 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %252, i32 0, i32 14
  store i8* %250, i8** %253, align 8
  br label %296

254:                                              ; preds = %223
  %255 = load i32, i32* @FDMI_PORT_SPEED_2GB, align 4
  %256 = call i8* @cpu_to_be32(i32 %255)
  %257 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %258 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %258, i32 0, i32 14
  store i8* %256, i8** %259, align 8
  br label %296

260:                                              ; preds = %223
  %261 = load i32, i32* @FDMI_PORT_SPEED_4GB, align 4
  %262 = call i8* @cpu_to_be32(i32 %261)
  %263 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %264 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %264, i32 0, i32 14
  store i8* %262, i8** %265, align 8
  br label %296

266:                                              ; preds = %223
  %267 = load i32, i32* @FDMI_PORT_SPEED_8GB, align 4
  %268 = call i8* @cpu_to_be32(i32 %267)
  %269 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %270 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %270, i32 0, i32 14
  store i8* %268, i8** %271, align 8
  br label %296

272:                                              ; preds = %223
  %273 = load i32, i32* @FDMI_PORT_SPEED_10GB, align 4
  %274 = call i8* @cpu_to_be32(i32 %273)
  %275 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %276 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %276, i32 0, i32 14
  store i8* %274, i8** %277, align 8
  br label %296

278:                                              ; preds = %223
  %279 = load i32, i32* @FDMI_PORT_SPEED_16GB, align 4
  %280 = call i8* @cpu_to_be32(i32 %279)
  %281 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %282 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %282, i32 0, i32 14
  store i8* %280, i8** %283, align 8
  br label %296

284:                                              ; preds = %223
  %285 = load i32, i32* @FDMI_PORT_SPEED_32GB, align 4
  %286 = call i8* @cpu_to_be32(i32 %285)
  %287 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %288 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %288, i32 0, i32 14
  store i8* %286, i8** %289, align 8
  br label %296

290:                                              ; preds = %223
  %291 = load i32, i32* @FDMI_PORT_SPEED_UNKNOWN, align 4
  %292 = call i8* @cpu_to_be32(i32 %291)
  %293 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %294 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %294, i32 0, i32 14
  store i8* %292, i8** %295, align 8
  br label %296

296:                                              ; preds = %290, %284, %278, %272, %266, %260, %254, %248
  %297 = load i32, i32* %5, align 4
  %298 = add nsw i32 %297, 8
  store i32 %298, i32* %5, align 4
  %299 = load i64, i64* @ql_dbg_disc, align 8
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %301 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %302 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %302, i32 0, i32 14
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %299, %struct.TYPE_24__* %300, i32 8215, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %304)
  %306 = load i8*, i8** %10, align 8
  %307 = load i32, i32* %5, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr i8, i8* %306, i64 %308
  %310 = bitcast i8* %309 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %310, %struct.ct_fdmiv2_port_attr** %11, align 8
  %311 = load i32, i32* @FDMI_PORT_MAX_FRAME_SIZE, align 4
  %312 = call i8* @cpu_to_be16(i32 %311)
  %313 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %314 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %313, i32 0, i32 2
  store i8* %312, i8** %314, align 8
  %315 = call i8* @cpu_to_be16(i32 8)
  %316 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %317 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %316, i32 0, i32 1
  store i8* %315, i8** %317, align 8
  %318 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %319 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %296
  %322 = load %struct.init_cb_24xx*, %struct.init_cb_24xx** %12, align 8
  %323 = getelementptr inbounds %struct.init_cb_24xx, %struct.init_cb_24xx* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @le16_to_cpu(i32 %324)
  br label %333

326:                                              ; preds = %296
  %327 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %328 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %327, i32 0, i32 3
  %329 = load %struct.TYPE_30__*, %struct.TYPE_30__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @le16_to_cpu(i32 %331)
  br label %333

333:                                              ; preds = %326, %321
  %334 = phi i32 [ %325, %321 ], [ %332, %326 ]
  %335 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %336 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %336, i32 0, i32 1
  store i32 %334, i32* %337, align 8
  %338 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %339 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = call i8* @cpu_to_be32(i32 %341)
  %343 = ptrtoint i8* %342 to i32
  %344 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %345 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %345, i32 0, i32 1
  store i32 %343, i32* %346, align 8
  %347 = load i32, i32* %5, align 4
  %348 = add nsw i32 %347, 8
  store i32 %348, i32* %5, align 4
  %349 = load i64, i64* @ql_dbg_disc, align 8
  %350 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %351 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %352 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %349, %struct.TYPE_24__* %350, i32 8380, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %354)
  %356 = load i8*, i8** %10, align 8
  %357 = load i32, i32* %5, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr i8, i8* %356, i64 %358
  %360 = bitcast i8* %359 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %360, %struct.ct_fdmiv2_port_attr** %11, align 8
  %361 = load i32, i32* @FDMI_PORT_OS_DEVICE_NAME, align 4
  %362 = call i8* @cpu_to_be16(i32 %361)
  %363 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %364 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %363, i32 0, i32 2
  store i8* %362, i8** %364, align 8
  %365 = load i8*, i8** @QLA2XXX_DRIVER_NAME, align 8
  %366 = call i32 @strlen(i8* %365)
  store i32 %366, i32* %4, align 4
  %367 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %368 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %368, i32 0, i32 13
  %370 = load i32, i32* %369, align 8
  %371 = sext i32 %370 to i64
  %372 = inttoptr i64 %371 to i8*
  %373 = load i8*, i8** @QLA2XXX_DRIVER_NAME, align 8
  %374 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i32 0, i32 6
  %376 = load i32, i32* %375, align 8
  %377 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %372, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %373, i32 %376)
  %378 = load i32, i32* %4, align 4
  %379 = and i32 %378, 3
  %380 = sub nsw i32 4, %379
  %381 = load i32, i32* %4, align 4
  %382 = add nsw i32 %381, %380
  store i32 %382, i32* %4, align 4
  %383 = load i32, i32* %4, align 4
  %384 = add nsw i32 4, %383
  %385 = call i8* @cpu_to_be16(i32 %384)
  %386 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %387 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %386, i32 0, i32 1
  store i8* %385, i8** %387, align 8
  %388 = load i32, i32* %4, align 4
  %389 = add nsw i32 4, %388
  %390 = load i32, i32* %5, align 4
  %391 = add nsw i32 %390, %389
  store i32 %391, i32* %5, align 4
  %392 = load i64, i64* @ql_dbg_disc, align 8
  %393 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %394 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %395 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %395, i32 0, i32 13
  %397 = load i32, i32* %396, align 8
  %398 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %392, %struct.TYPE_24__* %393, i32 8382, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %397)
  %399 = load i8*, i8** %10, align 8
  %400 = load i32, i32* %5, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr i8, i8* %399, i64 %401
  %403 = bitcast i8* %402 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %403, %struct.ct_fdmiv2_port_attr** %11, align 8
  %404 = load i32, i32* @FDMI_PORT_HOST_NAME, align 4
  %405 = call i8* @cpu_to_be16(i32 %404)
  %406 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %407 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %406, i32 0, i32 2
  store i8* %405, i8** %407, align 8
  %408 = call %struct.new_utsname* (...) @utsname()
  store %struct.new_utsname* %408, %struct.new_utsname** %13, align 8
  %409 = load %struct.new_utsname*, %struct.new_utsname** %13, align 8
  %410 = icmp ne %struct.new_utsname* %409, null
  br i1 %410, label %411, label %420

411:                                              ; preds = %333
  %412 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %413 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %413, i32 0, i32 2
  %415 = load i8*, i8** %414, align 8
  %416 = load %struct.new_utsname*, %struct.new_utsname** %13, align 8
  %417 = getelementptr inbounds %struct.new_utsname, %struct.new_utsname* %416, i32 0, i32 0
  %418 = load i8*, i8** %417, align 8
  %419 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %415, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %418)
  br label %430

420:                                              ; preds = %333
  %421 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %422 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %422, i32 0, i32 2
  %424 = load i8*, i8** %423, align 8
  %425 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %426 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %425, i32 0, i32 5
  %427 = load i32, i32* %426, align 4
  %428 = call i8* @fc_host_system_hostname(i32 %427)
  %429 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %424, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %428)
  br label %430

430:                                              ; preds = %420, %411
  %431 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %432 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %432, i32 0, i32 2
  %434 = load i8*, i8** %433, align 8
  %435 = call i32 @strlen(i8* %434)
  store i32 %435, i32* %4, align 4
  %436 = load i32, i32* %4, align 4
  %437 = and i32 %436, 3
  %438 = sub nsw i32 4, %437
  %439 = load i32, i32* %4, align 4
  %440 = add nsw i32 %439, %438
  store i32 %440, i32* %4, align 4
  %441 = load i32, i32* %4, align 4
  %442 = add nsw i32 4, %441
  %443 = call i8* @cpu_to_be16(i32 %442)
  %444 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %445 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %444, i32 0, i32 1
  store i8* %443, i8** %445, align 8
  %446 = load i32, i32* %4, align 4
  %447 = add nsw i32 4, %446
  %448 = load i32, i32* %5, align 4
  %449 = add nsw i32 %448, %447
  store i32 %449, i32* %5, align 4
  %450 = load i64, i64* @ql_dbg_disc, align 8
  %451 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %452 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %453 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %453, i32 0, i32 2
  %455 = load i8*, i8** %454, align 8
  %456 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %450, %struct.TYPE_24__* %451, i32 8218, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %455)
  %457 = load i8*, i8** %10, align 8
  %458 = load i32, i32* %5, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr i8, i8* %457, i64 %459
  %461 = bitcast i8* %460 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %461, %struct.ct_fdmiv2_port_attr** %11, align 8
  %462 = load i32, i32* @FDMI_PORT_NODE_NAME, align 4
  %463 = call i8* @cpu_to_be16(i32 %462)
  %464 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %465 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %464, i32 0, i32 2
  store i8* %463, i8** %465, align 8
  %466 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %467 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %467, i32 0, i32 12
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %471 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %470, i32 0, i32 4
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* @WWN_SIZE, align 4
  %474 = call i32 @memcpy(i32 %469, i32 %472, i32 %473)
  %475 = load i32, i32* @WWN_SIZE, align 4
  %476 = add nsw i32 4, %475
  %477 = call i8* @cpu_to_be16(i32 %476)
  %478 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %479 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %478, i32 0, i32 1
  store i8* %477, i8** %479, align 8
  %480 = load i32, i32* @WWN_SIZE, align 4
  %481 = add nsw i32 4, %480
  %482 = load i32, i32* %5, align 4
  %483 = add nsw i32 %482, %481
  store i32 %483, i32* %5, align 4
  %484 = load i64, i64* @ql_dbg_disc, align 8
  %485 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %486 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %487 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %487, i32 0, i32 12
  %489 = load i32, i32* %488, align 4
  %490 = call i32 @wwn_to_u64(i32 %489)
  %491 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %484, %struct.TYPE_24__* %485, i32 8384, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %490)
  %492 = load i8*, i8** %10, align 8
  %493 = load i32, i32* %5, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr i8, i8* %492, i64 %494
  %496 = bitcast i8* %495 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %496, %struct.ct_fdmiv2_port_attr** %11, align 8
  %497 = load i32, i32* @FDMI_PORT_NAME, align 4
  %498 = call i8* @cpu_to_be16(i32 %497)
  %499 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %500 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %499, i32 0, i32 2
  store i8* %498, i8** %500, align 8
  %501 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %502 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %502, i32 0, i32 11
  %504 = load i32, i32* %503, align 8
  %505 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %506 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %505, i32 0, i32 3
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* @WWN_SIZE, align 4
  %509 = call i32 @memcpy(i32 %504, i32 %507, i32 %508)
  %510 = load i32, i32* @WWN_SIZE, align 4
  %511 = add nsw i32 4, %510
  %512 = call i8* @cpu_to_be16(i32 %511)
  %513 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %514 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %513, i32 0, i32 1
  store i8* %512, i8** %514, align 8
  %515 = load i32, i32* @WWN_SIZE, align 4
  %516 = add nsw i32 4, %515
  %517 = load i32, i32* %5, align 4
  %518 = add nsw i32 %517, %516
  store i32 %518, i32* %5, align 4
  %519 = load i64, i64* @ql_dbg_disc, align 8
  %520 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %521 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %522 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %522, i32 0, i32 11
  %524 = load i32, i32* %523, align 8
  %525 = call i32 @wwn_to_u64(i32 %524)
  %526 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %519, %struct.TYPE_24__* %520, i32 8385, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %525)
  %527 = load i8*, i8** %10, align 8
  %528 = load i32, i32* %5, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr i8, i8* %527, i64 %529
  %531 = bitcast i8* %530 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %531, %struct.ct_fdmiv2_port_attr** %11, align 8
  %532 = load i32, i32* @FDMI_PORT_SYM_NAME, align 4
  %533 = call i8* @cpu_to_be16(i32 %532)
  %534 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %535 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %534, i32 0, i32 2
  store i8* %533, i8** %535, align 8
  %536 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %537 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %538 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %538, i32 0, i32 3
  %540 = load i8*, i8** %539, align 8
  %541 = call i32 @qla2x00_get_sym_node_name(%struct.TYPE_24__* %536, i8* %540, i32 8)
  %542 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %543 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %543, i32 0, i32 3
  %545 = load i8*, i8** %544, align 8
  %546 = call i32 @strlen(i8* %545)
  store i32 %546, i32* %4, align 4
  %547 = load i32, i32* %4, align 4
  %548 = and i32 %547, 3
  %549 = sub nsw i32 4, %548
  %550 = load i32, i32* %4, align 4
  %551 = add nsw i32 %550, %549
  store i32 %551, i32* %4, align 4
  %552 = load i32, i32* %4, align 4
  %553 = add nsw i32 4, %552
  %554 = call i8* @cpu_to_be16(i32 %553)
  %555 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %556 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %555, i32 0, i32 1
  store i8* %554, i8** %556, align 8
  %557 = load i32, i32* %4, align 4
  %558 = add nsw i32 4, %557
  %559 = load i32, i32* %5, align 4
  %560 = add nsw i32 %559, %558
  store i32 %560, i32* %5, align 4
  %561 = load i64, i64* @ql_dbg_disc, align 8
  %562 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %563 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %564 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %563, i32 0, i32 0
  %565 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %564, i32 0, i32 3
  %566 = load i8*, i8** %565, align 8
  %567 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %561, %struct.TYPE_24__* %562, i32 8386, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %566)
  %568 = load i8*, i8** %10, align 8
  %569 = load i32, i32* %5, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr i8, i8* %568, i64 %570
  %572 = bitcast i8* %571 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %572, %struct.ct_fdmiv2_port_attr** %11, align 8
  %573 = load i32, i32* @FDMI_PORT_TYPE, align 4
  %574 = call i8* @cpu_to_be16(i32 %573)
  %575 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %576 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %575, i32 0, i32 2
  store i8* %574, i8** %576, align 8
  %577 = load i32, i32* @NS_NX_PORT_TYPE, align 4
  %578 = call i8* @cpu_to_be32(i32 %577)
  %579 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %580 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %579, i32 0, i32 0
  %581 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %580, i32 0, i32 10
  store i8* %578, i8** %581, align 8
  %582 = call i8* @cpu_to_be16(i32 8)
  %583 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %584 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %583, i32 0, i32 1
  store i8* %582, i8** %584, align 8
  %585 = load i32, i32* %5, align 4
  %586 = add nsw i32 %585, 8
  store i32 %586, i32* %5, align 4
  %587 = load i64, i64* @ql_dbg_disc, align 8
  %588 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %589 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %590 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %589, i32 0, i32 0
  %591 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %590, i32 0, i32 10
  %592 = load i8*, i8** %591, align 8
  %593 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %587, %struct.TYPE_24__* %588, i32 8387, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %592)
  %594 = load i8*, i8** %10, align 8
  %595 = load i32, i32* %5, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr i8, i8* %594, i64 %596
  %598 = bitcast i8* %597 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %598, %struct.ct_fdmiv2_port_attr** %11, align 8
  %599 = load i32, i32* @FDMI_PORT_SUPP_COS, align 4
  %600 = call i8* @cpu_to_be16(i32 %599)
  %601 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %602 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %601, i32 0, i32 2
  store i8* %600, i8** %602, align 8
  %603 = load i32, i32* @FC_CLASS_3, align 4
  %604 = call i8* @cpu_to_be32(i32 %603)
  %605 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %606 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %605, i32 0, i32 0
  %607 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %606, i32 0, i32 9
  store i8* %604, i8** %607, align 8
  %608 = call i8* @cpu_to_be16(i32 8)
  %609 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %610 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %609, i32 0, i32 1
  store i8* %608, i8** %610, align 8
  %611 = load i32, i32* %5, align 4
  %612 = add nsw i32 %611, 8
  store i32 %612, i32* %5, align 4
  %613 = load i64, i64* @ql_dbg_disc, align 8
  %614 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %615 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %616 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %616, i32 0, i32 9
  %618 = load i8*, i8** %617, align 8
  %619 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %613, %struct.TYPE_24__* %614, i32 8388, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %618)
  %620 = load i8*, i8** %10, align 8
  %621 = load i32, i32* %5, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr i8, i8* %620, i64 %622
  %624 = bitcast i8* %623 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %624, %struct.ct_fdmiv2_port_attr** %11, align 8
  %625 = load i32, i32* @FDMI_PORT_FABRIC_NAME, align 4
  %626 = call i8* @cpu_to_be16(i32 %625)
  %627 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %628 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %627, i32 0, i32 2
  store i8* %626, i8** %628, align 8
  %629 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %630 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %630, i32 0, i32 8
  %632 = load i32, i32* %631, align 8
  %633 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %634 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %633, i32 0, i32 2
  %635 = load i32, i32* %634, align 8
  %636 = load i32, i32* @WWN_SIZE, align 4
  %637 = call i32 @memcpy(i32 %632, i32 %635, i32 %636)
  %638 = load i32, i32* @WWN_SIZE, align 4
  %639 = add nsw i32 4, %638
  %640 = call i8* @cpu_to_be16(i32 %639)
  %641 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %642 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %641, i32 0, i32 1
  store i8* %640, i8** %642, align 8
  %643 = load i32, i32* @WWN_SIZE, align 4
  %644 = add nsw i32 4, %643
  %645 = load i32, i32* %5, align 4
  %646 = add nsw i32 %645, %644
  store i32 %646, i32* %5, align 4
  %647 = load i64, i64* @ql_dbg_disc, align 8
  %648 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %649 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %650 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %649, i32 0, i32 0
  %651 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %650, i32 0, i32 8
  %652 = load i32, i32* %651, align 8
  %653 = call i32 @wwn_to_u64(i32 %652)
  %654 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %647, %struct.TYPE_24__* %648, i32 8389, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %653)
  %655 = load i8*, i8** %10, align 8
  %656 = load i32, i32* %5, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr i8, i8* %655, i64 %657
  %659 = bitcast i8* %658 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %659, %struct.ct_fdmiv2_port_attr** %11, align 8
  %660 = load i32, i32* @FDMI_PORT_FC4_TYPE, align 4
  %661 = call i8* @cpu_to_be16(i32 %660)
  %662 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %663 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %662, i32 0, i32 2
  store i8* %661, i8** %663, align 8
  %664 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %665 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %664, i32 0, i32 0
  %666 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %665, i32 0, i32 4
  %667 = load i32*, i32** %666, align 8
  %668 = getelementptr inbounds i32, i32* %667, i64 0
  store i32 0, i32* %668, align 4
  %669 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %670 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %669, i32 0, i32 0
  %671 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %670, i32 0, i32 4
  %672 = load i32*, i32** %671, align 8
  %673 = getelementptr inbounds i32, i32* %672, i64 1
  store i32 0, i32* %673, align 4
  %674 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %675 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %674, i32 0, i32 0
  %676 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %675, i32 0, i32 4
  %677 = load i32*, i32** %676, align 8
  %678 = getelementptr inbounds i32, i32* %677, i64 2
  store i32 1, i32* %678, align 4
  %679 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %680 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %679, i32 0, i32 0
  %681 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %680, i32 0, i32 4
  %682 = load i32*, i32** %681, align 8
  %683 = getelementptr inbounds i32, i32* %682, i64 3
  store i32 0, i32* %683, align 4
  %684 = call i8* @cpu_to_be16(i32 36)
  %685 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %686 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %685, i32 0, i32 1
  store i8* %684, i8** %686, align 8
  %687 = load i32, i32* %5, align 4
  %688 = add nsw i32 %687, 36
  store i32 %688, i32* %5, align 4
  %689 = load i64, i64* @ql_dbg_disc, align 8
  %690 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %691 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %692 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %692, i32 0, i32 4
  %694 = load i32*, i32** %693, align 8
  %695 = getelementptr inbounds i32, i32* %694, i64 2
  %696 = load i32, i32* %695, align 4
  %697 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %698 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %697, i32 0, i32 0
  %699 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %698, i32 0, i32 4
  %700 = load i32*, i32** %699, align 8
  %701 = getelementptr inbounds i32, i32* %700, i64 1
  %702 = load i32, i32* %701, align 4
  %703 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %689, %struct.TYPE_24__* %690, i32 8390, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 %696, i32 %702)
  %704 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %705 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %704, i32 0, i32 1
  %706 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %705, i32 0, i32 0
  %707 = load i64, i64* %706, align 8
  %708 = icmp ne i64 %707, 0
  br i1 %708, label %709, label %734

709:                                              ; preds = %430
  %710 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %711 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %710, i32 0, i32 0
  %712 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %711, i32 0, i32 4
  %713 = load i32*, i32** %712, align 8
  %714 = getelementptr inbounds i32, i32* %713, i64 4
  store i32 0, i32* %714, align 4
  %715 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %716 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %715, i32 0, i32 0
  %717 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %716, i32 0, i32 4
  %718 = load i32*, i32** %717, align 8
  %719 = getelementptr inbounds i32, i32* %718, i64 5
  store i32 0, i32* %719, align 4
  %720 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %721 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %720, i32 0, i32 0
  %722 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %721, i32 0, i32 4
  %723 = load i32*, i32** %722, align 8
  %724 = getelementptr inbounds i32, i32* %723, i64 6
  store i32 1, i32* %724, align 4
  %725 = load i64, i64* @ql_dbg_disc, align 8
  %726 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %727 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %728 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %727, i32 0, i32 0
  %729 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %728, i32 0, i32 4
  %730 = load i32*, i32** %729, align 8
  %731 = getelementptr inbounds i32, i32* %730, i64 6
  %732 = load i32, i32* %731, align 4
  %733 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %725, %struct.TYPE_24__* %726, i32 8480, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0), i32 %732)
  br label %734

734:                                              ; preds = %709, %430
  %735 = load i8*, i8** %10, align 8
  %736 = load i32, i32* %5, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr i8, i8* %735, i64 %737
  %739 = bitcast i8* %738 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %739, %struct.ct_fdmiv2_port_attr** %11, align 8
  %740 = load i32, i32* @FDMI_PORT_STATE, align 4
  %741 = call i8* @cpu_to_be16(i32 %740)
  %742 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %743 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %742, i32 0, i32 2
  store i8* %741, i8** %743, align 8
  %744 = call i8* @cpu_to_be32(i32 1)
  %745 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %746 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %745, i32 0, i32 0
  %747 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %746, i32 0, i32 7
  store i8* %744, i8** %747, align 8
  %748 = call i8* @cpu_to_be16(i32 8)
  %749 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %750 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %749, i32 0, i32 1
  store i8* %748, i8** %750, align 8
  %751 = load i32, i32* %5, align 4
  %752 = add nsw i32 %751, 8
  store i32 %752, i32* %5, align 4
  %753 = load i64, i64* @ql_dbg_disc, align 8
  %754 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %755 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %756 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %755, i32 0, i32 0
  %757 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %756, i32 0, i32 7
  %758 = load i8*, i8** %757, align 8
  %759 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %753, %struct.TYPE_24__* %754, i32 8391, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %758)
  %760 = load i8*, i8** %10, align 8
  %761 = load i32, i32* %5, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr i8, i8* %760, i64 %762
  %764 = bitcast i8* %763 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %764, %struct.ct_fdmiv2_port_attr** %11, align 8
  %765 = load i32, i32* @FDMI_PORT_COUNT, align 4
  %766 = call i8* @cpu_to_be16(i32 %765)
  %767 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %768 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %767, i32 0, i32 2
  store i8* %766, i8** %768, align 8
  %769 = call i8* @cpu_to_be32(i32 1)
  %770 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %771 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %770, i32 0, i32 0
  %772 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %771, i32 0, i32 6
  store i8* %769, i8** %772, align 8
  %773 = call i8* @cpu_to_be16(i32 8)
  %774 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %775 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %774, i32 0, i32 1
  store i8* %773, i8** %775, align 8
  %776 = load i32, i32* %5, align 4
  %777 = add nsw i32 %776, 8
  store i32 %777, i32* %5, align 4
  %778 = load i64, i64* @ql_dbg_disc, align 8
  %779 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %780 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %781 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %780, i32 0, i32 0
  %782 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %781, i32 0, i32 6
  %783 = load i8*, i8** %782, align 8
  %784 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %778, %struct.TYPE_24__* %779, i32 8392, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %783)
  %785 = load i8*, i8** %10, align 8
  %786 = load i32, i32* %5, align 4
  %787 = sext i32 %786 to i64
  %788 = getelementptr i8, i8* %785, i64 %787
  %789 = bitcast i8* %788 to %struct.ct_fdmiv2_port_attr*
  store %struct.ct_fdmiv2_port_attr* %789, %struct.ct_fdmiv2_port_attr** %11, align 8
  %790 = load i32, i32* @FDMI_PORT_ID, align 4
  %791 = call i8* @cpu_to_be16(i32 %790)
  %792 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %793 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %792, i32 0, i32 2
  store i8* %791, i8** %793, align 8
  %794 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %795 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %794, i32 0, i32 0
  %796 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %795, i32 0, i32 0
  %797 = load i32, i32* %796, align 8
  %798 = call i8* @cpu_to_be32(i32 %797)
  %799 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %800 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %799, i32 0, i32 0
  %801 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %800, i32 0, i32 5
  store i8* %798, i8** %801, align 8
  %802 = call i8* @cpu_to_be16(i32 8)
  %803 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %804 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %803, i32 0, i32 1
  store i8* %802, i8** %804, align 8
  %805 = load i32, i32* %5, align 4
  %806 = add nsw i32 %805, 8
  store i32 %806, i32* %5, align 4
  %807 = load i64, i64* @ql_dbg_disc, align 8
  %808 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %809 = load %struct.ct_fdmiv2_port_attr*, %struct.ct_fdmiv2_port_attr** %11, align 8
  %810 = getelementptr inbounds %struct.ct_fdmiv2_port_attr, %struct.ct_fdmiv2_port_attr* %809, i32 0, i32 0
  %811 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %810, i32 0, i32 5
  %812 = load i8*, i8** %811, align 8
  %813 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %807, %struct.TYPE_24__* %808, i32 8220, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* %812)
  %814 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %815 = load i32, i32* %5, align 4
  %816 = add nsw i32 %815, 16
  %817 = call i32 @qla2x00_update_ms_fdmi_iocb(%struct.TYPE_24__* %814, i32 %816)
  %818 = load i64, i64* @ql_dbg_disc, align 8
  %819 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %820 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %821 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %820, i32 0, i32 0
  %822 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %821, i32 0, i32 0
  %823 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %822, i32 0, i32 0
  %824 = load i32, i32* %823, align 8
  %825 = load i32, i32* %5, align 4
  %826 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %818, %struct.TYPE_24__* %819, i32 8216, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i32 %824, i32 %825)
  %827 = load i64, i64* @ql_dbg_disc, align 8
  %828 = load i64, i64* @ql_dbg_buffer, align 8
  %829 = add nsw i64 %827, %828
  %830 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %831 = load i8*, i8** %10, align 8
  %832 = load i32, i32* %5, align 4
  %833 = call i32 @ql_dump_buffer(i64 %829, %struct.TYPE_24__* %830, i32 8394, i8* %831, i32 %832)
  %834 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %835 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %836 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %835, i32 0, i32 2
  %837 = load i32, i32* %836, align 8
  %838 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %839 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %838, i32 0, i32 1
  %840 = load i32, i32* %839, align 4
  %841 = call i32 @qla2x00_issue_iocb(%struct.TYPE_24__* %834, i32 %837, i32 %840, i32 4)
  store i32 %841, i32* %3, align 4
  %842 = load i32, i32* %3, align 4
  %843 = load i32, i32* @QLA_SUCCESS, align 4
  %844 = icmp ne i32 %842, %843
  br i1 %844, label %845, label %850

845:                                              ; preds = %734
  %846 = load i64, i64* @ql_dbg_disc, align 8
  %847 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %848 = load i32, i32* %3, align 4
  %849 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %846, %struct.TYPE_24__* %847, i32 8395, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i32 %848)
  br label %895

850:                                              ; preds = %734
  %851 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %852 = load i32*, i32** %7, align 8
  %853 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %854 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_24__* %851, i32* %852, %struct.ct_sns_rsp* %853, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %855 = load i32, i32* @QLA_SUCCESS, align 4
  %856 = icmp ne i32 %854, %855
  br i1 %856, label %857, label %890

857:                                              ; preds = %850
  %858 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %858, i32* %3, align 4
  %859 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %860 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %859, i32 0, i32 0
  %861 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %860, i32 0, i32 1
  %862 = load i32, i32* %861, align 4
  %863 = load i32, i32* @CT_REASON_CANNOT_PERFORM, align 4
  %864 = icmp eq i32 %862, %863
  br i1 %864, label %865, label %877

865:                                              ; preds = %857
  %866 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %867 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %866, i32 0, i32 0
  %868 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %867, i32 0, i32 0
  %869 = load i32, i32* %868, align 4
  %870 = load i32, i32* @CT_EXPL_ALREADY_REGISTERED, align 4
  %871 = icmp eq i32 %869, %870
  br i1 %871, label %872, label %877

872:                                              ; preds = %865
  %873 = load i64, i64* @ql_dbg_disc, align 8
  %874 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %875 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %873, %struct.TYPE_24__* %874, i32 8398, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0))
  %876 = load i32, i32* @QLA_ALREADY_REGISTERED, align 4
  store i32 %876, i32* %3, align 4
  br label %889

877:                                              ; preds = %865, %857
  %878 = load i64, i64* @ql_dbg_disc, align 8
  %879 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %880 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %881 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %880, i32 0, i32 0
  %882 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %881, i32 0, i32 1
  %883 = load i32, i32* %882, align 4
  %884 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %885 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %884, i32 0, i32 0
  %886 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %885, i32 0, i32 0
  %887 = load i32, i32* %886, align 4
  %888 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %878, %struct.TYPE_24__* %879, i32 8224, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.24, i64 0, i64 0), i32 %883, i32 %887)
  br label %889

889:                                              ; preds = %877, %872
  br label %894

890:                                              ; preds = %850
  %891 = load i64, i64* @ql_dbg_disc, align 8
  %892 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %893 = call i32 (i64, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i64 %891, %struct.TYPE_24__* %892, i32 8396, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0))
  br label %894

894:                                              ; preds = %890, %889
  br label %895

895:                                              ; preds = %894, %845
  %896 = load i32, i32* %3, align 4
  ret i32 %896
}

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_24__*, i32, i8*, ...) #1

declare dso_local i64 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA23XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local %struct.new_utsname* @utsname(...) #1

declare dso_local i8* @fc_host_system_hostname(i32) #1

declare dso_local i32 @wwn_to_u64(i32) #1

declare dso_local i32 @qla2x00_get_sym_node_name(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @qla2x00_update_ms_fdmi_iocb(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_24__*, i32, i8*, i32) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_24__*, i32*, %struct.ct_sns_rsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
