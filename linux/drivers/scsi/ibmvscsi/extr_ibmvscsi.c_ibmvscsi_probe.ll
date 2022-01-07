; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.vio_device_id = type { i32 }
%struct.ibmvscsi_host_data = type { %struct.srp_rport*, i32, i32, %struct.Scsi_Host*, i32, i32, %struct.TYPE_2__, %struct.device*, i32, i32 }
%struct.srp_rport = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.srp_rport_identifiers = type { i32, i32 }

@driver_template = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"couldn't allocate host data\0A\00", align 1
@ibmvscsi_transport_template = common dso_local global i32 0, align 4
@IBMVSCSI_MAX_SECTORS_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"couldn't map persistent buffers\0A\00", align 1
@ibmvscsi_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ibmvscsi\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"couldn't initialize kthread. rc=%ld\0A\00", align 1
@max_events = common dso_local global i32 0, align 4
@H_RESOURCE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"couldn't initialize crq. rc=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"couldn't initialize event pool\0A\00", align 1
@IBMVSCSI_MAX_LUN = common dso_local global i32 0, align 4
@max_id = common dso_local global i32 0, align 4
@max_channel = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"Maximum ID: %d Maximum LUN: %llu Maximum Channel: %d\0A\00", align 1
@SRP_RPORT_ROLE_TARGET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@init_timeout = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ibmvscsi_driver_lock = common dso_local global i32 0, align 4
@ibmvscsi_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*, %struct.vio_device_id*)* @ibmvscsi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsi_probe(%struct.vio_dev* %0, %struct.vio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.vio_device_id*, align 8
  %6 = alloca %struct.ibmvscsi_host_data*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.srp_rport_identifiers, align 4
  %10 = alloca %struct.srp_rport*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.vio_dev* %0, %struct.vio_dev** %4, align 8
  store %struct.vio_device_id* %1, %struct.vio_device_id** %5, align 8
  %13 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %14 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %8, align 8
  store i64 0, i64* %11, align 8
  %15 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %16 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %15, i32 0, i32 0
  %17 = call i32 @dev_set_drvdata(%struct.device* %16, %struct.ibmvscsi_host_data* null)
  %18 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @driver_template, i32 56)
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %7, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %20 = icmp ne %struct.Scsi_Host* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %23 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %22, i32 0, i32 0
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %232

25:                                               ; preds = %2
  %26 = load i32, i32* @ibmvscsi_transport_template, align 4
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %30 = call %struct.ibmvscsi_host_data* @shost_priv(%struct.Scsi_Host* %29)
  store %struct.ibmvscsi_host_data* %30, %struct.ibmvscsi_host_data** %6, align 8
  %31 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %32 = call i32 @memset(%struct.ibmvscsi_host_data* %31, i32 0, i32 56)
  %33 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %34 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %33, i32 0, i32 9
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %37 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %36, i32 0, i32 8
  %38 = call i32 @init_waitqueue_head(i32* %37)
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %40 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %41 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %40, i32 0, i32 3
  store %struct.Scsi_Host* %39, %struct.Scsi_Host** %41, align 8
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %44 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %43, i32 0, i32 7
  store %struct.device* %42, %struct.device** %44, align 8
  %45 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %46 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %45, i32 0, i32 5
  %47 = call i32 @atomic_set(i32* %46, i32 -1)
  %48 = load i32, i32* @IBMVSCSI_MAX_SECTORS_DEFAULT, align 4
  %49 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %50 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %49, i32 0, i32 3
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %50, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 5
  store i32 %48, i32* %52, align 4
  %53 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %54 = call i64 @map_persist_bufs(%struct.ibmvscsi_host_data* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %25
  %57 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %58 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %57, i32 0, i32 0
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %229

60:                                               ; preds = %25
  %61 = load i32, i32* @ibmvscsi_work, align 4
  %62 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %64 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.srp_rport* @kthread_run(i32 %61, %struct.ibmvscsi_host_data* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %68 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %67, i32 0, i32 0
  store %struct.srp_rport* %66, %struct.srp_rport** %68, align 8
  %69 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %70 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %69, i32 0, i32 0
  %71 = load %struct.srp_rport*, %struct.srp_rport** %70, align 8
  %72 = call i64 @IS_ERR(%struct.srp_rport* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %60
  %75 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %76 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %75, i32 0, i32 0
  %77 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %78 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %77, i32 0, i32 0
  %79 = load %struct.srp_rport*, %struct.srp_rport** %78, align 8
  %80 = call i32 @PTR_ERR(%struct.srp_rport* %79)
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %226

82:                                               ; preds = %60
  %83 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %84 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %83, i32 0, i32 1
  %85 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %86 = load i32, i32* @max_events, align 4
  %87 = call i32 @ibmvscsi_init_crq_queue(i32* %84, %struct.ibmvscsi_host_data* %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @H_RESOURCE, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %96 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %12, align 4
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  br label %221

99:                                               ; preds = %90, %82
  %100 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %101 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %100, i32 0, i32 2
  %102 = load i32, i32* @max_events, align 4
  %103 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %104 = call i64 @initialize_event_pool(i32* %101, i32 %102, %struct.ibmvscsi_host_data* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %108 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %107, i32 0, i32 0
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %215

110:                                              ; preds = %99
  %111 = load i32, i32* @IBMVSCSI_MAX_LUN, align 4
  %112 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %113 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @max_id, align 4
  %115 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %116 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @max_channel, align 4
  %118 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %119 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %121 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %120, i32 0, i32 0
  store i32 16, i32* %121, align 4
  %122 = load %struct.device*, %struct.device** %8, align 8
  %123 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %124 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %127 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %130 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_info(%struct.device* %122, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %125, i32 %128, i32 %131)
  %133 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %134 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %133, i32 0, i32 3
  %135 = load %struct.Scsi_Host*, %struct.Scsi_Host** %134, align 8
  %136 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %137 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %136, i32 0, i32 7
  %138 = load %struct.device*, %struct.device** %137, align 8
  %139 = call i64 @scsi_add_host(%struct.Scsi_Host* %135, %struct.device* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %110
  br label %210

142:                                              ; preds = %110
  %143 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %9, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %146 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @memcpy(i32 %144, i32 %148, i32 4)
  %150 = load i32, i32* @SRP_RPORT_ROLE_TARGET, align 4
  %151 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %9, i32 0, i32 0
  store i32 %150, i32* %151, align 4
  %152 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %153 = call %struct.srp_rport* @srp_rport_add(%struct.Scsi_Host* %152, %struct.srp_rport_identifiers* %9)
  store %struct.srp_rport* %153, %struct.srp_rport** %10, align 8
  %154 = load %struct.srp_rport*, %struct.srp_rport** %10, align 8
  %155 = call i64 @IS_ERR(%struct.srp_rport* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %142
  br label %205

158:                                              ; preds = %142
  %159 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %160 = call i64 @ibmvscsi_send_crq(%struct.ibmvscsi_host_data* %159, i32 0, i32 0)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @H_RESOURCE, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %195

166:                                              ; preds = %162, %158
  %167 = load i64, i64* @jiffies, align 8
  %168 = load i64, i64* @init_timeout, align 8
  %169 = load i64, i64* @HZ, align 8
  %170 = mul i64 %168, %169
  %171 = add i64 %167, %170
  store i64 %171, i64* %11, align 8
  br label %172

172:                                              ; preds = %184, %166
  %173 = load i64, i64* @jiffies, align 8
  %174 = load i64, i64* %11, align 8
  %175 = call i64 @time_before(i64 %173, i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %179 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %178, i32 0, i32 5
  %180 = call i32 @atomic_read(i32* %179)
  %181 = icmp slt i32 %180, 2
  br label %182

182:                                              ; preds = %177, %172
  %183 = phi i1 [ false, %172 ], [ %181, %177 ]
  br i1 %183, label %184, label %186

184:                                              ; preds = %182
  %185 = call i32 @msleep(i32 10)
  br label %172

186:                                              ; preds = %182
  %187 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %188 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %187, i32 0, i32 5
  %189 = call i32 @atomic_read(i32* %188)
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %193 = call i32 @scsi_scan_host(%struct.Scsi_Host* %192)
  br label %194

194:                                              ; preds = %191, %186
  br label %195

195:                                              ; preds = %194, %162
  %196 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %197 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %196, i32 0, i32 0
  %198 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %199 = call i32 @dev_set_drvdata(%struct.device* %197, %struct.ibmvscsi_host_data* %198)
  %200 = call i32 @spin_lock(i32* @ibmvscsi_driver_lock)
  %201 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %202 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %201, i32 0, i32 4
  %203 = call i32 @list_add_tail(i32* %202, i32* @ibmvscsi_head)
  %204 = call i32 @spin_unlock(i32* @ibmvscsi_driver_lock)
  store i32 0, i32* %3, align 4
  br label %233

205:                                              ; preds = %157
  %206 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %207 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %206, i32 0, i32 3
  %208 = load %struct.Scsi_Host*, %struct.Scsi_Host** %207, align 8
  %209 = call i32 @scsi_remove_host(%struct.Scsi_Host* %208)
  br label %210

210:                                              ; preds = %205, %141
  %211 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %212 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %211, i32 0, i32 2
  %213 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %214 = call i32 @release_event_pool(i32* %212, %struct.ibmvscsi_host_data* %213)
  br label %215

215:                                              ; preds = %210, %106
  %216 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %217 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %216, i32 0, i32 1
  %218 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %219 = load i32, i32* @max_events, align 4
  %220 = call i32 @ibmvscsi_release_crq_queue(i32* %217, %struct.ibmvscsi_host_data* %218, i32 %219)
  br label %221

221:                                              ; preds = %215, %94
  %222 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %223 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %222, i32 0, i32 0
  %224 = load %struct.srp_rport*, %struct.srp_rport** %223, align 8
  %225 = call i32 @kthread_stop(%struct.srp_rport* %224)
  br label %226

226:                                              ; preds = %221, %74
  %227 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %6, align 8
  %228 = call i32 @unmap_persist_bufs(%struct.ibmvscsi_host_data* %227)
  br label %229

229:                                              ; preds = %226, %56
  %230 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %231 = call i32 @scsi_host_put(%struct.Scsi_Host* %230)
  br label %232

232:                                              ; preds = %229, %21
  store i32 -1, i32* %3, align 4
  br label %233

233:                                              ; preds = %232, %195
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ibmvscsi_host_data*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.ibmvscsi_host_data* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(%struct.ibmvscsi_host_data*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @map_persist_bufs(%struct.ibmvscsi_host_data*) #1

declare dso_local %struct.srp_rport* @kthread_run(i32, %struct.ibmvscsi_host_data*, i8*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.srp_rport*) #1

declare dso_local i32 @PTR_ERR(%struct.srp_rport*) #1

declare dso_local i32 @ibmvscsi_init_crq_queue(i32*, %struct.ibmvscsi_host_data*, i32) #1

declare dso_local i64 @initialize_event_pool(i32*, i32, %struct.ibmvscsi_host_data*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i64 @scsi_add_host(%struct.Scsi_Host*, %struct.device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.srp_rport* @srp_rport_add(%struct.Scsi_Host*, %struct.srp_rport_identifiers*) #1

declare dso_local i64 @ibmvscsi_send_crq(%struct.ibmvscsi_host_data*, i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @release_event_pool(i32*, %struct.ibmvscsi_host_data*) #1

declare dso_local i32 @ibmvscsi_release_crq_queue(i32*, %struct.ibmvscsi_host_data*, i32) #1

declare dso_local i32 @kthread_stop(%struct.srp_rport*) #1

declare dso_local i32 @unmap_persist_bufs(%struct.ibmvscsi_host_data*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
