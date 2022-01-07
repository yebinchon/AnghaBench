; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_rpa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_rpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32, %struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.ct_sns_rsp }
%struct.ct_sns_rsp = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32* (%struct.TYPE_27__*, i32, i32)* }
%struct.ct_sns_req = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8* }
%struct.ct_fdmi_port_attr = type { %struct.TYPE_26__, i8*, i8* }
%struct.TYPE_26__ = type { i32*, i32, i32, i32, i8*, i8* }
%struct.init_cb_24xx = type { i32 }
%struct.new_utsname = type { i8* }

@RPA_RSP_SIZE = common dso_local global i32 0, align 4
@RPA_CMD = common dso_local global i32 0, align 4
@WWN_SIZE = common dso_local global i32 0, align 4
@FDMI_PORT_ATTR_COUNT = common dso_local global i32 0, align 4
@FDMI_PORT_FC4_TYPES = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"FC4_TYPES=%02x %02x.\0A\00", align 1
@FDMI_PORT_SUPPORT_SPEED = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_10GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_32GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_16GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_8GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_4GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_2GB = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_1GB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Supported_Speed=%x.\0A\00", align 1
@FDMI_PORT_CURRENT_SPEED = common dso_local global i32 0, align 4
@FDMI_PORT_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Current_Speed=%x.\0A\00", align 1
@FDMI_PORT_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Max_Frame_Size=%x.\0A\00", align 1
@FDMI_PORT_OS_DEVICE_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"%s:host%lu\00", align 1
@QLA2XXX_DRIVER_NAME = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"OS_Device_Name=%s.\0A\00", align 1
@FDMI_PORT_HOST_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"HostName=%s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"RPA portname  %016llx, size = %d.\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"RPA issue IOCB failed (%d).\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"RPA\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@CT_REASON_CANNOT_PERFORM = common dso_local global i64 0, align 8
@CT_EXPL_ALREADY_REGISTERED = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"RPA already registered.\0A\00", align 1
@QLA_ALREADY_REGISTERED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"RPA exiting normally.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*)* @qla2x00_fdmi_rpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_fdmi_rpa(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ct_sns_req*, align 8
  %9 = alloca %struct.ct_sns_rsp*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ct_fdmi_port_attr*, align 8
  %12 = alloca %struct.init_cb_24xx*, align 8
  %13 = alloca %struct.new_utsname*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 3
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %6, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 3
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %20 = bitcast %struct.TYPE_20__* %19 to %struct.init_cb_24xx*
  store %struct.init_cb_24xx* %20, %struct.init_cb_24xx** %12, align 8
  store %struct.new_utsname* null, %struct.new_utsname** %13, align 8
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 5
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i32* (%struct.TYPE_27__*, i32, i32)*, i32* (%struct.TYPE_27__*, i32, i32)** %24, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %27 = load i32, i32* @RPA_RSP_SIZE, align 4
  %28 = call i32* %25(%struct.TYPE_27__* %26, i32 0, i32 %27)
  store i32* %28, i32** %7, align 8
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = load i32, i32* @RPA_CMD, align 4
  %33 = load i32, i32* @RPA_RSP_SIZE, align 4
  %34 = call %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(%struct.TYPE_18__* %31, i32 %32, i32 %33)
  store %struct.ct_sns_req* %34, %struct.ct_sns_req** %8, align 8
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  store %struct.ct_sns_rsp* %39, %struct.ct_sns_rsp** %9, align 8
  %40 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %41 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @WWN_SIZE, align 4
  %49 = call i32 @memcpy(i32 %44, i32 %47, i32 %48)
  %50 = load i32, i32* @WWN_SIZE, align 4
  %51 = add nsw i32 %50, 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @FDMI_PORT_ATTR_COUNT, align 4
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %55 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  store i8* %53, i8** %58, align 8
  %59 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %60 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %59, i32 0, i32 0
  %61 = bitcast %struct.TYPE_25__* %60 to i8*
  store i8* %61, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr i8, i8* %62, i64 %64
  %66 = bitcast i8* %65 to %struct.ct_fdmi_port_attr*
  store %struct.ct_fdmi_port_attr* %66, %struct.ct_fdmi_port_attr** %11, align 8
  %67 = load i32, i32* @FDMI_PORT_FC4_TYPES, align 4
  %68 = call i8* @cpu_to_be16(i32 %67)
  %69 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %70 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = call i8* @cpu_to_be16(i32 36)
  %72 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %73 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %75 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 1, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 36
  store i32 %80, i32* %5, align 4
  %81 = load i64, i64* @ql_dbg_disc, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %83 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %84 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %90 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %81, %struct.TYPE_27__* %82, i32 8249, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %94)
  %96 = load i8*, i8** %10, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr i8, i8* %96, i64 %98
  %100 = bitcast i8* %99 to %struct.ct_fdmi_port_attr*
  store %struct.ct_fdmi_port_attr* %100, %struct.ct_fdmi_port_attr** %11, align 8
  %101 = load i32, i32* @FDMI_PORT_SUPPORT_SPEED, align 4
  %102 = call i8* @cpu_to_be16(i32 %101)
  %103 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %104 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = call i8* @cpu_to_be16(i32 8)
  %106 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %107 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %109 = call i64 @IS_CNA_CAPABLE(%struct.qla_hw_data* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %1
  %112 = load i32, i32* @FDMI_PORT_SPEED_10GB, align 4
  %113 = call i8* @cpu_to_be32(i32 %112)
  %114 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %115 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 5
  store i8* %113, i8** %116, align 8
  br label %202

117:                                              ; preds = %1
  %118 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %119 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %123 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %121, %117
  %126 = load i32, i32* @FDMI_PORT_SPEED_32GB, align 4
  %127 = load i32, i32* @FDMI_PORT_SPEED_16GB, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @FDMI_PORT_SPEED_8GB, align 4
  %130 = or i32 %128, %129
  %131 = call i8* @cpu_to_be32(i32 %130)
  %132 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %133 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 5
  store i8* %131, i8** %134, align 8
  br label %201

135:                                              ; preds = %121
  %136 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %137 = call i64 @IS_QLA2031(%struct.qla_hw_data* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = load i32, i32* @FDMI_PORT_SPEED_16GB, align 4
  %141 = load i32, i32* @FDMI_PORT_SPEED_8GB, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @FDMI_PORT_SPEED_4GB, align 4
  %144 = or i32 %142, %143
  %145 = call i8* @cpu_to_be32(i32 %144)
  %146 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %147 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 5
  store i8* %145, i8** %148, align 8
  br label %200

149:                                              ; preds = %135
  %150 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %151 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %149
  %154 = load i32, i32* @FDMI_PORT_SPEED_8GB, align 4
  %155 = load i32, i32* @FDMI_PORT_SPEED_4GB, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @FDMI_PORT_SPEED_2GB, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %160 = or i32 %158, %159
  %161 = call i8* @cpu_to_be32(i32 %160)
  %162 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %163 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 5
  store i8* %161, i8** %164, align 8
  br label %199

165:                                              ; preds = %149
  %166 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %167 = call i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %165
  %170 = load i32, i32* @FDMI_PORT_SPEED_4GB, align 4
  %171 = load i32, i32* @FDMI_PORT_SPEED_2GB, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %174 = or i32 %172, %173
  %175 = call i8* @cpu_to_be32(i32 %174)
  %176 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %177 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 5
  store i8* %175, i8** %178, align 8
  br label %198

179:                                              ; preds = %165
  %180 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %181 = call i64 @IS_QLA23XX(%struct.qla_hw_data* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %179
  %184 = load i32, i32* @FDMI_PORT_SPEED_2GB, align 4
  %185 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %186 = or i32 %184, %185
  %187 = call i8* @cpu_to_be32(i32 %186)
  %188 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %189 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 5
  store i8* %187, i8** %190, align 8
  br label %197

191:                                              ; preds = %179
  %192 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %193 = call i8* @cpu_to_be32(i32 %192)
  %194 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %195 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 5
  store i8* %193, i8** %196, align 8
  br label %197

197:                                              ; preds = %191, %183
  br label %198

198:                                              ; preds = %197, %169
  br label %199

199:                                              ; preds = %198, %153
  br label %200

200:                                              ; preds = %199, %139
  br label %201

201:                                              ; preds = %200, %125
  br label %202

202:                                              ; preds = %201, %111
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 8
  store i32 %204, i32* %5, align 4
  %205 = load i64, i64* @ql_dbg_disc, align 8
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %207 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %208 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 5
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %205, %struct.TYPE_27__* %206, i32 8250, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %210)
  %212 = load i8*, i8** %10, align 8
  %213 = load i32, i32* %5, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr i8, i8* %212, i64 %214
  %216 = bitcast i8* %215 to %struct.ct_fdmi_port_attr*
  store %struct.ct_fdmi_port_attr* %216, %struct.ct_fdmi_port_attr** %11, align 8
  %217 = load i32, i32* @FDMI_PORT_CURRENT_SPEED, align 4
  %218 = call i8* @cpu_to_be16(i32 %217)
  %219 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %220 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  %221 = call i8* @cpu_to_be16(i32 8)
  %222 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %223 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %222, i32 0, i32 1
  store i8* %221, i8** %223, align 8
  %224 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %225 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  switch i32 %226, label %269 [
    i32 132, label %227
    i32 131, label %233
    i32 129, label %239
    i32 128, label %245
    i32 134, label %251
    i32 133, label %257
    i32 130, label %263
  ]

227:                                              ; preds = %202
  %228 = load i32, i32* @FDMI_PORT_SPEED_1GB, align 4
  %229 = call i8* @cpu_to_be32(i32 %228)
  %230 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %231 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 4
  store i8* %229, i8** %232, align 8
  br label %275

233:                                              ; preds = %202
  %234 = load i32, i32* @FDMI_PORT_SPEED_2GB, align 4
  %235 = call i8* @cpu_to_be32(i32 %234)
  %236 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %237 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 4
  store i8* %235, i8** %238, align 8
  br label %275

239:                                              ; preds = %202
  %240 = load i32, i32* @FDMI_PORT_SPEED_4GB, align 4
  %241 = call i8* @cpu_to_be32(i32 %240)
  %242 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %243 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 4
  store i8* %241, i8** %244, align 8
  br label %275

245:                                              ; preds = %202
  %246 = load i32, i32* @FDMI_PORT_SPEED_8GB, align 4
  %247 = call i8* @cpu_to_be32(i32 %246)
  %248 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %249 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 4
  store i8* %247, i8** %250, align 8
  br label %275

251:                                              ; preds = %202
  %252 = load i32, i32* @FDMI_PORT_SPEED_10GB, align 4
  %253 = call i8* @cpu_to_be32(i32 %252)
  %254 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %255 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 4
  store i8* %253, i8** %256, align 8
  br label %275

257:                                              ; preds = %202
  %258 = load i32, i32* @FDMI_PORT_SPEED_16GB, align 4
  %259 = call i8* @cpu_to_be32(i32 %258)
  %260 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %261 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 4
  store i8* %259, i8** %262, align 8
  br label %275

263:                                              ; preds = %202
  %264 = load i32, i32* @FDMI_PORT_SPEED_32GB, align 4
  %265 = call i8* @cpu_to_be32(i32 %264)
  %266 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %267 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %267, i32 0, i32 4
  store i8* %265, i8** %268, align 8
  br label %275

269:                                              ; preds = %202
  %270 = load i32, i32* @FDMI_PORT_SPEED_UNKNOWN, align 4
  %271 = call i8* @cpu_to_be32(i32 %270)
  %272 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %273 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 4
  store i8* %271, i8** %274, align 8
  br label %275

275:                                              ; preds = %269, %263, %257, %251, %245, %239, %233, %227
  %276 = load i32, i32* %5, align 4
  %277 = add nsw i32 %276, 8
  store i32 %277, i32* %5, align 4
  %278 = load i64, i64* @ql_dbg_disc, align 8
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %280 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %281 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %281, i32 0, i32 4
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %278, %struct.TYPE_27__* %279, i32 8251, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %283)
  %285 = load i8*, i8** %10, align 8
  %286 = load i32, i32* %5, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr i8, i8* %285, i64 %287
  %289 = bitcast i8* %288 to %struct.ct_fdmi_port_attr*
  store %struct.ct_fdmi_port_attr* %289, %struct.ct_fdmi_port_attr** %11, align 8
  %290 = load i32, i32* @FDMI_PORT_MAX_FRAME_SIZE, align 4
  %291 = call i8* @cpu_to_be16(i32 %290)
  %292 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %293 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %292, i32 0, i32 2
  store i8* %291, i8** %293, align 8
  %294 = call i8* @cpu_to_be16(i32 8)
  %295 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %296 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %295, i32 0, i32 1
  store i8* %294, i8** %296, align 8
  %297 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %298 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %275
  %301 = load %struct.init_cb_24xx*, %struct.init_cb_24xx** %12, align 8
  %302 = getelementptr inbounds %struct.init_cb_24xx, %struct.init_cb_24xx* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @le16_to_cpu(i32 %303)
  br label %312

305:                                              ; preds = %275
  %306 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %307 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %306, i32 0, i32 3
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @le16_to_cpu(i32 %310)
  br label %312

312:                                              ; preds = %305, %300
  %313 = phi i32 [ %304, %300 ], [ %311, %305 ]
  %314 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %315 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i32 0, i32 1
  store i32 %313, i32* %316, align 8
  %317 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %318 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = call i8* @cpu_to_be32(i32 %320)
  %322 = ptrtoint i8* %321 to i32
  %323 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %324 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 1
  store i32 %322, i32* %325, align 8
  %326 = load i32, i32* %5, align 4
  %327 = add nsw i32 %326, 8
  store i32 %327, i32* %5, align 4
  %328 = load i64, i64* @ql_dbg_disc, align 8
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %330 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %331 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %328, %struct.TYPE_27__* %329, i32 8252, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %333)
  %335 = load i8*, i8** %10, align 8
  %336 = load i32, i32* %5, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr i8, i8* %335, i64 %337
  %339 = bitcast i8* %338 to %struct.ct_fdmi_port_attr*
  store %struct.ct_fdmi_port_attr* %339, %struct.ct_fdmi_port_attr** %11, align 8
  %340 = load i32, i32* @FDMI_PORT_OS_DEVICE_NAME, align 4
  %341 = call i8* @cpu_to_be16(i32 %340)
  %342 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %343 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %342, i32 0, i32 2
  store i8* %341, i8** %343, align 8
  %344 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %345 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  %348 = load i8*, i8** @QLA2XXX_DRIVER_NAME, align 8
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %347, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %348, i32 %351)
  %353 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %354 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 8
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
  %366 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %367 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %366, i32 0, i32 1
  store i8* %365, i8** %367, align 8
  %368 = load i32, i32* %4, align 4
  %369 = add nsw i32 4, %368
  %370 = load i32, i32* %5, align 4
  %371 = add nsw i32 %370, %369
  store i32 %371, i32* %5, align 4
  %372 = load i64, i64* @ql_dbg_disc, align 8
  %373 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %374 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %375 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 8
  %378 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %372, %struct.TYPE_27__* %373, i32 8267, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %377)
  %379 = load i8*, i8** %10, align 8
  %380 = load i32, i32* %5, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr i8, i8* %379, i64 %381
  %383 = bitcast i8* %382 to %struct.ct_fdmi_port_attr*
  store %struct.ct_fdmi_port_attr* %383, %struct.ct_fdmi_port_attr** %11, align 8
  %384 = load i32, i32* @FDMI_PORT_HOST_NAME, align 4
  %385 = call i8* @cpu_to_be16(i32 %384)
  %386 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %387 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %386, i32 0, i32 2
  store i8* %385, i8** %387, align 8
  %388 = call %struct.new_utsname* (...) @utsname()
  store %struct.new_utsname* %388, %struct.new_utsname** %13, align 8
  %389 = load %struct.new_utsname*, %struct.new_utsname** %13, align 8
  %390 = icmp ne %struct.new_utsname* %389, null
  br i1 %390, label %391, label %400

391:                                              ; preds = %312
  %392 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %393 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.new_utsname*, %struct.new_utsname** %13, align 8
  %397 = getelementptr inbounds %struct.new_utsname, %struct.new_utsname* %396, i32 0, i32 0
  %398 = load i8*, i8** %397, align 8
  %399 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %395, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %398)
  br label %410

400:                                              ; preds = %312
  %401 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %402 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %406 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = call i8* @fc_host_system_hostname(i32 %407)
  %409 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %404, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %408)
  br label %410

410:                                              ; preds = %400, %391
  %411 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %412 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @strlen(i32 %414)
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
  %424 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %425 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %424, i32 0, i32 1
  store i8* %423, i8** %425, align 8
  %426 = load i32, i32* %4, align 4
  %427 = add nsw i32 4, %426
  %428 = load i32, i32* %5, align 4
  %429 = add nsw i32 %428, %427
  store i32 %429, i32* %5, align 4
  %430 = load i64, i64* @ql_dbg_disc, align 8
  %431 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %432 = load %struct.ct_fdmi_port_attr*, %struct.ct_fdmi_port_attr** %11, align 8
  %433 = getelementptr inbounds %struct.ct_fdmi_port_attr, %struct.ct_fdmi_port_attr* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 4
  %436 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %430, %struct.TYPE_27__* %431, i32 8253, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %435)
  %437 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %438 = load i32, i32* %5, align 4
  %439 = add nsw i32 %438, 16
  %440 = call i32 @qla2x00_update_ms_fdmi_iocb(%struct.TYPE_27__* %437, i32 %439)
  %441 = load i64, i64* @ql_dbg_disc, align 8
  %442 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %443 = load %struct.ct_sns_req*, %struct.ct_sns_req** %8, align 8
  %444 = getelementptr inbounds %struct.ct_sns_req, %struct.ct_sns_req* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = call i32 @wwn_to_u64(i32 %447)
  %449 = load i32, i32* %5, align 4
  %450 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %441, %struct.TYPE_27__* %442, i32 8254, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %448, i32 %449)
  %451 = load i64, i64* @ql_dbg_disc, align 8
  %452 = load i64, i64* @ql_dbg_buffer, align 8
  %453 = add nsw i64 %451, %452
  %454 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %455 = load i8*, i8** %10, align 8
  %456 = load i32, i32* %5, align 4
  %457 = call i32 @ql_dump_buffer(i64 %453, %struct.TYPE_27__* %454, i32 8313, i8* %455, i32 %456)
  %458 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %459 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %460 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 8
  %462 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %463 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @qla2x00_issue_iocb(%struct.TYPE_27__* %458, i32 %461, i32 %464, i32 4)
  store i32 %465, i32* %3, align 4
  %466 = load i32, i32* %3, align 4
  %467 = load i32, i32* @QLA_SUCCESS, align 4
  %468 = icmp ne i32 %466, %467
  br i1 %468, label %469, label %474

469:                                              ; preds = %410
  %470 = load i64, i64* @ql_dbg_disc, align 8
  %471 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %472 = load i32, i32* %3, align 4
  %473 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %470, %struct.TYPE_27__* %471, i32 8256, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %472)
  br label %507

474:                                              ; preds = %410
  %475 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %476 = load i32*, i32** %7, align 8
  %477 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %478 = call i32 @qla2x00_chk_ms_status(%struct.TYPE_27__* %475, i32* %476, %struct.ct_sns_rsp* %477, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %479 = load i32, i32* @QLA_SUCCESS, align 4
  %480 = icmp ne i32 %478, %479
  br i1 %480, label %481, label %502

481:                                              ; preds = %474
  %482 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %482, i32* %3, align 4
  %483 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %484 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @CT_REASON_CANNOT_PERFORM, align 8
  %488 = icmp eq i64 %486, %487
  br i1 %488, label %489, label %501

489:                                              ; preds = %481
  %490 = load %struct.ct_sns_rsp*, %struct.ct_sns_rsp** %9, align 8
  %491 = getelementptr inbounds %struct.ct_sns_rsp, %struct.ct_sns_rsp* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %491, i32 0, i32 1
  %493 = load i64, i64* %492, align 8
  %494 = load i64, i64* @CT_EXPL_ALREADY_REGISTERED, align 8
  %495 = icmp eq i64 %493, %494
  br i1 %495, label %496, label %501

496:                                              ; preds = %489
  %497 = load i64, i64* @ql_dbg_disc, align 8
  %498 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %499 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %497, %struct.TYPE_27__* %498, i32 8397, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %500 = load i32, i32* @QLA_ALREADY_REGISTERED, align 4
  store i32 %500, i32* %3, align 4
  br label %501

501:                                              ; preds = %496, %489, %481
  br label %506

502:                                              ; preds = %474
  %503 = load i64, i64* @ql_dbg_disc, align 8
  %504 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %505 = call i32 (i64, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i64 %503, %struct.TYPE_27__* %504, i32 8257, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  br label %506

506:                                              ; preds = %502, %501
  br label %507

507:                                              ; preds = %506, %469
  %508 = load i32, i32* %3, align 4
  ret i32 %508
}

declare dso_local %struct.ct_sns_req* @qla2x00_prep_ct_fdmi_req(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_27__*, i32, i8*, ...) #1

declare dso_local i64 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA23XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.new_utsname* @utsname(...) #1

declare dso_local i8* @fc_host_system_hostname(i32) #1

declare dso_local i32 @qla2x00_update_ms_fdmi_iocb(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @wwn_to_u64(i32) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_27__*, i32, i8*, i32) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_chk_ms_status(%struct.TYPE_27__*, i32*, %struct.ct_sns_rsp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
