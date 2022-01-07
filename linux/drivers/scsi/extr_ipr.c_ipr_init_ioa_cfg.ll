; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_init_ioa_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_init_ioa_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i32, i32, %struct.TYPE_2__*, %struct.Scsi_Host*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32, i32*, i32, i32 }
%struct.Scsi_Host = type { i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@ipr_log_level = common dso_local global i32 0, align 4
@IPR_DOORBELL = common dso_local global i32 0, align 4
@IPR_EYECATCHER = common dso_local global i8* null, align 8
@IPR_TRACE_START_LABEL = common dso_local global i8* null, align 8
@IPR_CFG_TBL_START = common dso_local global i8* null, align 8
@IPR_RES_TABLE_LABEL = common dso_local global i8* null, align 8
@IPR_HCAM_LABEL = common dso_local global i8* null, align 8
@IPR_CMD_LABEL = common dso_local global i8* null, align 8
@ipr_worker_thread = common dso_local global i32 0, align 4
@ipr_add_remove_thread = common dso_local global i32 0, align 4
@INACTIVE = common dso_local global i32 0, align 4
@ipr_max_devs = common dso_local global i64 0, align 8
@IPR_MAX_SIS64_TARGETS_PER_BUS = common dso_local global i32 0, align 4
@IPR_MAX_SIS64_LUNS_PER_TARGET = common dso_local global i32 0, align 4
@IPR_MAX_SIS64_DEVS = common dso_local global i64 0, align 8
@IPR_MAX_NUM_TARGETS_PER_BUS = common dso_local global i32 0, align 4
@IPR_MAX_NUM_LUNS_PER_TARGET = common dso_local global i32 0, align 4
@IPR_MAX_PHYSICAL_DEVS = common dso_local global i64 0, align 8
@IPR_VSET_BUS = common dso_local global i32 0, align 4
@IPR_MAX_CDB_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*, %struct.Scsi_Host*, %struct.pci_dev*)* @ipr_init_ioa_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_init_ioa_cfg(%struct.ipr_ioa_cfg* %0, %struct.Scsi_Host* %1, %struct.pci_dev* %2) #0 {
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %4, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %5, align 8
  store %struct.pci_dev* %2, %struct.pci_dev** %6, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %9, i32 0, i32 3
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %10, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %12 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %13 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %12, i32 0, i32 25
  store %struct.pci_dev* %11, %struct.pci_dev** %13, align 8
  %14 = load i32, i32* @ipr_log_level, align 4
  %15 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %16 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %15, i32 0, i32 24
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @IPR_DOORBELL, align 4
  %18 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %18, i32 0, i32 23
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %20, i32 0, i32 22
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** @IPR_EYECATCHER, align 8
  %24 = call i32 @sprintf(i32 %22, i8* %23)
  %25 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %25, i32 0, i32 21
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** @IPR_TRACE_START_LABEL, align 8
  %29 = call i32 @sprintf(i32 %27, i8* %28)
  %30 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %30, i32 0, i32 20
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** @IPR_CFG_TBL_START, align 8
  %34 = call i32 @sprintf(i32 %32, i8* %33)
  %35 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %36 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %35, i32 0, i32 19
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** @IPR_RES_TABLE_LABEL, align 8
  %39 = call i32 @sprintf(i32 %37, i8* %38)
  %40 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %41 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %40, i32 0, i32 18
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** @IPR_HCAM_LABEL, align 8
  %44 = call i32 @sprintf(i32 %42, i8* %43)
  %45 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %46 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %45, i32 0, i32 17
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** @IPR_CMD_LABEL, align 8
  %49 = call i32 @sprintf(i32 %47, i8* %48)
  %50 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %51 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %50, i32 0, i32 16
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %54 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %53, i32 0, i32 15
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %57 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %56, i32 0, i32 14
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %60 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %59, i32 0, i32 13
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %63 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %62, i32 0, i32 12
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %66 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %65, i32 0, i32 11
  %67 = load i32, i32* @ipr_worker_thread, align 4
  %68 = call i32 @INIT_WORK(i32* %66, i32 %67)
  %69 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %70 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %69, i32 0, i32 10
  %71 = load i32, i32* @ipr_add_remove_thread, align 4
  %72 = call i32 @INIT_WORK(i32* %70, i32 %71)
  %73 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %74 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %73, i32 0, i32 9
  %75 = call i32 @init_waitqueue_head(i32* %74)
  %76 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %77 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %76, i32 0, i32 8
  %78 = call i32 @init_waitqueue_head(i32* %77)
  %79 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %80 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %79, i32 0, i32 7
  %81 = call i32 @init_waitqueue_head(i32* %80)
  %82 = load i32, i32* @INACTIVE, align 4
  %83 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %84 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %86 = call i32 @ipr_initialize_bus_attr(%struct.ipr_ioa_cfg* %85)
  %87 = load i64, i64* @ipr_max_devs, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %90 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %92 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %3
  %96 = load i32, i32* @IPR_MAX_SIS64_TARGETS_PER_BUS, align 4
  %97 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %98 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @IPR_MAX_SIS64_LUNS_PER_TARGET, align 4
  %100 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %101 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  %102 = load i64, i64* @ipr_max_devs, align 8
  %103 = load i64, i64* @IPR_MAX_SIS64_DEVS, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %95
  %106 = load i64, i64* @IPR_MAX_SIS64_DEVS, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %109 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %105, %95
  %111 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %112 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = mul i64 4, %114
  %116 = add i64 4, %115
  %117 = trunc i64 %116 to i32
  %118 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %119 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %145

120:                                              ; preds = %3
  %121 = load i32, i32* @IPR_MAX_NUM_TARGETS_PER_BUS, align 4
  %122 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %123 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @IPR_MAX_NUM_LUNS_PER_TARGET, align 4
  %125 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %126 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  %127 = load i64, i64* @ipr_max_devs, align 8
  %128 = load i64, i64* @IPR_MAX_PHYSICAL_DEVS, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = load i64, i64* @IPR_MAX_PHYSICAL_DEVS, align 8
  %132 = trunc i64 %131 to i32
  %133 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %134 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %130, %120
  %136 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %137 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = mul i64 4, %139
  %141 = add i64 4, %140
  %142 = trunc i64 %141 to i32
  %143 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %144 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %135, %110
  %146 = load i32, i32* @IPR_VSET_BUS, align 4
  %147 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %148 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 8
  %149 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %150 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %153 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @IPR_MAX_CDB_LEN, align 4
  %155 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %156 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 4
  %157 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %158 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %161 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  %162 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %163 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %164 = call i32 @pci_set_drvdata(%struct.pci_dev* %162, %struct.ipr_ioa_cfg* %163)
  store i32 0, i32* %7, align 4
  br label %165

165:                                              ; preds = %228, %145
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %168 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %167, i32 0, i32 2
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %169)
  %171 = icmp slt i32 %166, %170
  br i1 %171, label %172, label %231

172:                                              ; preds = %165
  %173 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %174 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %173, i32 0, i32 2
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 3
  %180 = call i32 @INIT_LIST_HEAD(i32* %179)
  %181 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %182 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %181, i32 0, i32 2
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 2
  %188 = call i32 @INIT_LIST_HEAD(i32* %187)
  %189 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %190 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %189, i32 0, i32 2
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = call i32 @spin_lock_init(i32* %195)
  %197 = load i32, i32* %7, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %212

199:                                              ; preds = %172
  %200 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %201 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %200, i32 0, i32 3
  %202 = load %struct.Scsi_Host*, %struct.Scsi_Host** %201, align 8
  %203 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %206 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %205, i32 0, i32 2
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  store i32* %204, i32** %211, align 8
  br label %227

212:                                              ; preds = %172
  %213 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %214 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %213, i32 0, i32 2
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %221 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %220, i32 0, i32 2
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  store i32* %219, i32** %226, align 8
  br label %227

227:                                              ; preds = %212, %199
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %7, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %7, align 4
  br label %165

231:                                              ; preds = %165
  ret void
}

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ipr_initialize_bus_attr(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ipr_ioa_cfg*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
