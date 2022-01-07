; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_create_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_create_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data*, %struct.Scsi_Host*, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32, i32 }
%struct.scsi_host_template = type { i32 }
%struct.qla_hw_data = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Failed to allocate host from the scsi layer, aborting.\0A\00", align 1
@ql2x_ini_mode = common dso_local global i32 0, align 4
@ql2xexchoffld = common dso_local global i32 0, align 4
@ql2xiniexchg = common dso_local global i32 0, align 4
@qla2x00_iocb_work_fn = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Alloc failed for name list.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Alloc failed for scan database.\0A\00", align 1
@qla_scan_work_fn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s_%ld\00", align 1
@QLA2XXX_DRIVER_NAME = common dso_local global i8* null, align 8
@ql_dbg_init = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Allocated the host=%p hw=%p vha=%p dev_name=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_qla_host* @qla2x00_create_host(%struct.scsi_host_template* %0, %struct.qla_hw_data* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.scsi_host_template*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.scsi_qla_host*, align 8
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %4, align 8
  store %struct.qla_hw_data* %1, %struct.qla_hw_data** %5, align 8
  store %struct.scsi_qla_host* null, %struct.scsi_qla_host** %7, align 8
  %8 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %9 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %8, i32 4)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %6, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %11 = icmp ne %struct.Scsi_Host* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ql_log_fatal, align 4
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @ql_log_pci(i32 %13, %struct.TYPE_6__* %16, i32 263, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store %struct.scsi_qla_host* null, %struct.scsi_qla_host** %3, align 8
  br label %210

18:                                               ; preds = %2
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %20 = call %struct.scsi_qla_host* @shost_priv(%struct.Scsi_Host* %19)
  store %struct.scsi_qla_host* %20, %struct.scsi_qla_host** %7, align 8
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %22 = call i32 @memset(%struct.scsi_qla_host* %21, i32 0, i32 4)
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %25 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %24, i32 0, i32 1
  store %struct.Scsi_Host* %23, %struct.Scsi_Host** %25, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %30 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %33 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %32, i32 0, i32 0
  store %struct.qla_hw_data* %31, %struct.qla_hw_data** %33, align 8
  %34 = load i32, i32* @ql2x_ini_mode, align 4
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %36 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %35, i32 0, i32 22
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @ql2xexchoffld, align 4
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %39 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %38, i32 0, i32 21
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ql2xiniexchg, align 4
  %41 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %42 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %41, i32 0, i32 20
  store i32 %40, i32* %42, align 8
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %44 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %43, i32 0, i32 19
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %47 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %46, i32 0, i32 18
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %50 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %49, i32 0, i32 17
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %53 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %52, i32 0, i32 16
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %56 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %55, i32 0, i32 15
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %59 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %58, i32 0, i32 14
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %62 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %61, i32 0, i32 13
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %65 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %64, i32 0, i32 12
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %68 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %72 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %71, i32 0, i32 11
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %75 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %74, i32 0, i32 10
  %76 = load i32, i32* @qla2x00_iocb_work_fn, align 4
  %77 = call i32 @INIT_WORK(i32* %75, i32 %76)
  %78 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %79 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %78, i32 0, i32 9
  %80 = call i32 @spin_lock_init(i32* %79)
  %81 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %82 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %81, i32 0, i32 8
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %85 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %84, i32 0, i32 7
  %86 = call i32 @init_waitqueue_head(i32* %85)
  %87 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %88 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %87, i32 0, i32 6
  %89 = call i32 @init_waitqueue_head(i32* %88)
  %90 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %91 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = mul i64 4, %94
  %96 = trunc i64 %95 to i32
  %97 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %98 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %105 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %109 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i32* @dma_alloc_coherent(i32* %103, i32 %107, i32* %110, i32 %111)
  %113 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %114 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i32* %112, i32** %115, align 8
  %116 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %117 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %18
  %122 = load i32, i32* @ql_log_fatal, align 4
  %123 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %124 = call i32 @ql_log(i32 %122, %struct.scsi_qla_host* %123, i32 53322, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %126 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %125, i32 0, i32 1
  %127 = load %struct.Scsi_Host*, %struct.Scsi_Host** %126, align 8
  %128 = call i32 @scsi_host_put(%struct.Scsi_Host* %127)
  store %struct.scsi_qla_host* null, %struct.scsi_qla_host** %3, align 8
  br label %210

129:                                              ; preds = %18
  %130 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %131 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = trunc i64 %134 to i32
  %136 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %137 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %140 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @vmalloc(i32 %142)
  %144 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %145 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 8
  %147 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %148 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %180, label %152

152:                                              ; preds = %129
  %153 = load i32, i32* @ql_log_fatal, align 4
  %154 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %155 = call i32 @ql_log(i32 %153, %struct.scsi_qla_host* %154, i32 53322, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %156 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %157 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %156, i32 0, i32 2
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %161 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %165 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %169 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @dma_free_coherent(i32* %159, i32 %163, i32* %167, i32 %171)
  %173 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %174 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  store i32* null, i32** %175, align 8
  %176 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %177 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %176, i32 0, i32 1
  %178 = load %struct.Scsi_Host*, %struct.Scsi_Host** %177, align 8
  %179 = call i32 @scsi_host_put(%struct.Scsi_Host* %178)
  store %struct.scsi_qla_host* null, %struct.scsi_qla_host** %3, align 8
  br label %210

180:                                              ; preds = %129
  %181 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %182 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load i32, i32* @qla_scan_work_fn, align 4
  %185 = call i32 @INIT_DELAYED_WORK(i32* %183, i32 %184)
  %186 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %187 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i8*, i8** @QLA2XXX_DRIVER_NAME, align 8
  %190 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %191 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @sprintf(i32 %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %189, i32 %192)
  %194 = load i32, i32* @ql_dbg_init, align 4
  %195 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %196 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %197 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %196, i32 0, i32 1
  %198 = load %struct.Scsi_Host*, %struct.Scsi_Host** %197, align 8
  %199 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %200 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %199, i32 0, i32 0
  %201 = load %struct.qla_hw_data*, %struct.qla_hw_data** %200, align 8
  %202 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %203 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %204 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %203, i32 0, i32 2
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = call i32 @dev_name(i32* %206)
  %208 = call i32 @ql_dbg(i32 %194, %struct.scsi_qla_host* %195, i32 65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), %struct.Scsi_Host* %198, %struct.qla_hw_data* %201, %struct.scsi_qla_host* %202, i32 %207)
  %209 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  store %struct.scsi_qla_host* %209, %struct.scsi_qla_host** %3, align 8
  br label %210

210:                                              ; preds = %180, %152, %121, %12
  %211 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  ret %struct.scsi_qla_host* %211
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template*, i32) #1

declare dso_local i32 @ql_log_pci(i32, %struct.TYPE_6__*, i32, i8*) #1

declare dso_local %struct.scsi_qla_host* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, %struct.Scsi_Host*, %struct.qla_hw_data*, %struct.scsi_qla_host*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
