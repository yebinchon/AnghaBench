; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_scsi_cmd_iocb_cmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_scsi_cmd_iocb_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_27__, %struct.lpfc_vport*, i64 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__, i32, %struct.TYPE_20__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_20__ = type { i32* }
%struct.lpfc_vport = type { i32, i64, i32 }
%struct.lpfc_io_buf = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_16__, %struct.scsi_cmnd*, i64, %struct.TYPE_28__*, i32*, i64, %struct.lpfc_rport_data* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.scsi_cmnd = type { i64*, i32, i32 (%struct.scsi_cmnd*)*, i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32* }
%struct.TYPE_28__ = type { i32, i64, i32 }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.lpfc_fast_path_event = type { %struct.TYPE_24__, %struct.lpfc_vport*, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }

@LOG_FCP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"2621 IO completion: Not an active IO\0A\00", align 1
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@LPFC_EXCHANGE_BUSY = common dso_local global i32 0, align 4
@IOERR_DRVR_MASK = common dso_local global i32 0, align 4
@IOSTAT_DRIVER_REJECT = common dso_local global i32 0, align 4
@IOSTAT_CNT = common dso_local global i32 0, align 4
@IOSTAT_DEFAULT = common dso_local global i32 0, align 4
@RESID_UNDER = common dso_local global i32 0, align 4
@LOG_FCP_UNDER = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [101 x i8] c"9030 FCP cmd x%x failed <%d/%lld> status: x%x result: x%x sid: x%x did: x%x oxid: x%x Data: x%x x%x\0A\00", align 1
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@DID_TRANSPORT_DISRUPTED = common dso_local global i32 0, align 4
@FC_REG_FABRIC_EVENT = common dso_local global i32 0, align 4
@LPFC_EVENT_PORT_BUSY = common dso_local global i32 0, align 4
@LPFC_EVENT_FABRIC_BUSY = common dso_local global i32 0, align 4
@LPFC_EVT_FASTPATH_MGMT_EVT = common dso_local global i32 0, align 4
@IOERR_ELXSEC_KEY_UNWRAP_ERROR = common dso_local global i32 0, align 4
@IOERR_ELXSEC_KEY_UNWRAP_COMPARE_ERROR = common dso_local global i32 0, align 4
@IOERR_ELXSEC_CRYPTO_ERROR = common dso_local global i32 0, align 4
@IOERR_ELXSEC_CRYPTO_COMPARE_ERROR = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@IOERR_INVALID_RPI = common dso_local global i32 0, align 4
@IOERR_NO_RESOURCES = common dso_local global i32 0, align 4
@IOERR_ABORT_REQUESTED = common dso_local global i32 0, align 4
@IOERR_SLER_CMD_RCV_FAILURE = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@IOERR_RX_DMA_FAILED = common dso_local global i32 0, align 4
@IOERR_TX_DMA_FAILED = common dso_local global i32 0, align 4
@SCSI_PROT_NORMAL = common dso_local global i32 0, align 4
@LOG_BG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"9031 non-zero BGSTAT on unprotected cmd\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@SAM_STAT_BUSY = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"0710 Iodone <%d/%llu> cmd x%px, error x%x SNS x%x x%x Data: x%x x%x\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@LPFC_MIN_TGT_QDEPTH = common dso_local global i64 0, align 8
@READ_10 = common dso_local global i64 0, align 8
@WRITE_10 = common dso_local global i64 0, align 8
@LPFC_DRIVER_ABORTED = common dso_local global i32 0, align 4
@LPFC_CHECK_CPU_CNT = common dso_local global i32 0, align 4
@LPFC_CHECK_SCSI_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_scsi_cmd_iocb_cmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_scsi_cmd_iocb_cmpl(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_io_buf*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.lpfc_rport_data*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca %struct.scsi_cmnd*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.lpfc_fast_path_event*, align 8
  %14 = alloca %struct.Scsi_Host*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.lpfc_io_buf*
  store %struct.lpfc_io_buf* %21, %struct.lpfc_io_buf** %7, align 8
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 2
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %23, align 8
  store %struct.lpfc_vport* %24, %struct.lpfc_vport** %8, align 8
  %25 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %26 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %25, i32 0, i32 12
  %27 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %26, align 8
  store %struct.lpfc_rport_data* %27, %struct.lpfc_rport_data** %9, align 8
  %28 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %9, align 8
  %29 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %28, i32 0, i32 0
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %29, align 8
  store %struct.lpfc_nodelist* %30, %struct.lpfc_nodelist** %10, align 8
  %31 = load i32, i32* @LOG_FCP, align 4
  store i32 %31, i32* %16, align 4
  %32 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %33 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %32, i32 0, i32 4
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %36 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %35, i32 0, i32 7
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %36, align 8
  store %struct.scsi_cmnd* %37, %struct.scsi_cmnd** %11, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %39 = icmp ne %struct.scsi_cmnd* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %3
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %42 = load i32, i32* @KERN_ERR, align 4
  %43 = load i32, i32* @LOG_INIT, align 4
  %44 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %46 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %45, i32 0, i32 4
  %47 = call i32 @spin_unlock(i32* %46)
  br label %638

48:                                               ; preds = %3
  %49 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %50 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %15, align 4
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %57 = icmp ne %struct.TYPE_17__* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %48
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %58, %48
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load %struct.Scsi_Host*, %struct.Scsi_Host** %74, align 8
  store %struct.Scsi_Host* %75, %struct.Scsi_Host** %14, align 8
  %76 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %77 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %86 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %88 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %92 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %94 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @LPFC_EXCHANGE_BUSY, align 4
  %97 = and i32 %95, %96
  %98 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %99 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %101 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %470

104:                                              ; preds = %70
  %105 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %106 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 133
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %111 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IOERR_DRVR_MASK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32, i32* @IOSTAT_DRIVER_REJECT, align 4
  %118 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %119 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %131

120:                                              ; preds = %109, %104
  %121 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %122 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IOSTAT_CNT, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32, i32* @IOSTAT_DEFAULT, align 4
  %128 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %129 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %126, %120
  br label %131

131:                                              ; preds = %130, %116
  %132 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %133 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 134
  br i1 %135, label %136, label %160

136:                                              ; preds = %131
  %137 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %138 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %137, i32 0, i32 9
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %160, label %143

143:                                              ; preds = %136
  %144 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %145 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %144, i32 0, i32 9
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @RESID_UNDER, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %143
  %153 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %154 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @LOG_FCP_UNDER, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %152
  store i32 0, i32* %16, align 4
  br label %164

160:                                              ; preds = %152, %143, %136, %131
  %161 = load i32, i32* @LOG_FCP, align 4
  %162 = load i32, i32* @LOG_FCP_UNDER, align 4
  %163 = or i32 %161, %162
  store i32 %163, i32* %16, align 4
  br label %164

164:                                              ; preds = %160, %159
  %165 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %166 = load i32, i32* @KERN_WARNING, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %169 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %174 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %173, i32 0, i32 4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = icmp ne %struct.TYPE_15__* %175, null
  br i1 %176, label %177, label %183

177:                                              ; preds = %164
  %178 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %179 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %178, i32 0, i32 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  br label %184

183:                                              ; preds = %164
  br label %184

184:                                              ; preds = %183, %177
  %185 = phi i32 [ %182, %177 ], [ 65535, %183 ]
  %186 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %187 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %186, i32 0, i32 4
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %187, align 8
  %189 = icmp ne %struct.TYPE_15__* %188, null
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  %191 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %192 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %191, i32 0, i32 4
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  br label %197

196:                                              ; preds = %184
  br label %197

197:                                              ; preds = %196, %190
  %198 = phi i32 [ %195, %190 ], [ 65535, %196 ]
  %199 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %200 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %203 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %206 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %209 = icmp ne %struct.lpfc_nodelist* %208, null
  br i1 %209, label %210, label %214

210:                                              ; preds = %197
  %211 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %212 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  br label %215

214:                                              ; preds = %197
  br label %215

215:                                              ; preds = %214, %210
  %216 = phi i32 [ %213, %210 ], [ 0, %214 ]
  %217 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %218 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @LPFC_SLI_REV4, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %215
  %223 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %224 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %223, i32 0, i32 6
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  br label %228

227:                                              ; preds = %215
  br label %228

228:                                              ; preds = %227, %222
  %229 = phi i32 [ %226, %222 ], [ 65535, %227 ]
  %230 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %231 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %235 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %234, i32 0, i32 6
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %165, i32 %166, i32 %167, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i64 %172, i32 %185, i32 %198, i32 %201, i32 %204, i32 %207, i32 %216, i32 %229, i32 %233, i32 %238)
  %240 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %241 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  switch i32 %242, label %444 [
    i32 134, label %243
    i32 132, label %248
    i32 135, label %248
    i32 133, label %323
    i32 131, label %323
  ]

243:                                              ; preds = %228
  %244 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %245 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %246 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %247 = call i32 @lpfc_handle_fcp_err(%struct.lpfc_vport* %244, %struct.lpfc_io_buf* %245, %struct.lpfc_iocbq* %246)
  br label %449

248:                                              ; preds = %228, %228
  %249 = load i32, i32* @DID_TRANSPORT_DISRUPTED, align 4
  %250 = shl i32 %249, 16
  %251 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %252 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 8
  %253 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %254 = call %struct.lpfc_fast_path_event* @lpfc_alloc_fast_evt(%struct.lpfc_hba* %253)
  store %struct.lpfc_fast_path_event* %254, %struct.lpfc_fast_path_event** %13, align 8
  %255 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %256 = icmp ne %struct.lpfc_fast_path_event* %255, null
  br i1 %256, label %258, label %257

257:                                              ; preds = %248
  br label %449

258:                                              ; preds = %248
  %259 = load i32, i32* @FC_REG_FABRIC_EVENT, align 4
  %260 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %261 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 3
  store i32 %259, i32* %263, align 4
  %264 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %265 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 132
  br i1 %267, label %268, label %270

268:                                              ; preds = %258
  %269 = load i32, i32* @LPFC_EVENT_PORT_BUSY, align 4
  br label %272

270:                                              ; preds = %258
  %271 = load i32, i32* @LPFC_EVENT_FABRIC_BUSY, align 4
  br label %272

272:                                              ; preds = %270, %268
  %273 = phi i32 [ %269, %268 ], [ %271, %270 ]
  %274 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %275 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 2
  store i32 %273, i32* %277, align 8
  %278 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %279 = icmp ne %struct.lpfc_nodelist* %278, null
  br i1 %279, label %280, label %299

280:                                              ; preds = %272
  %281 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %282 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %299

284:                                              ; preds = %280
  %285 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %286 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 1
  %289 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %290 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %289, i32 0, i32 5
  %291 = call i32 @memcpy(i32* %288, i32* %290, i32 4)
  %292 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %293 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 0
  %296 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %297 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %296, i32 0, i32 4
  %298 = call i32 @memcpy(i32* %295, i32* %297, i32 4)
  br label %299

299:                                              ; preds = %284, %280, %272
  %300 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %301 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %302 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %301, i32 0, i32 1
  store %struct.lpfc_vport* %300, %struct.lpfc_vport** %302, align 8
  %303 = load i32, i32* @LPFC_EVT_FASTPATH_MGMT_EVT, align 4
  %304 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %305 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 1
  store i32 %303, i32* %306, align 4
  %307 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %308 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %307, i32 0, i32 2
  %309 = load i64, i64* %12, align 8
  %310 = call i32 @spin_lock_irqsave(i32* %308, i64 %309)
  %311 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %13, align 8
  %312 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 0
  %314 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %315 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %314, i32 0, i32 3
  %316 = call i32 @list_add_tail(i32* %313, i32* %315)
  %317 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %318 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %317, i32 0, i32 2
  %319 = load i64, i64* %12, align 8
  %320 = call i32 @spin_unlock_irqrestore(i32* %318, i64 %319)
  %321 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %322 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %321)
  br label %449

323:                                              ; preds = %228, %228
  %324 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %325 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @IOERR_ELXSEC_KEY_UNWRAP_ERROR, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %347, label %329

329:                                              ; preds = %323
  %330 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %331 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @IOERR_ELXSEC_KEY_UNWRAP_COMPARE_ERROR, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %347, label %335

335:                                              ; preds = %329
  %336 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %337 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @IOERR_ELXSEC_CRYPTO_ERROR, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %347, label %341

341:                                              ; preds = %335
  %342 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %343 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @IOERR_ELXSEC_CRYPTO_COMPARE_ERROR, align 4
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %347, label %352

347:                                              ; preds = %341, %335, %329, %323
  %348 = load i32, i32* @DID_NO_CONNECT, align 4
  %349 = shl i32 %348, 16
  %350 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %351 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %350, i32 0, i32 1
  store i32 %349, i32* %351, align 8
  br label %449

352:                                              ; preds = %341
  %353 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %354 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @IOERR_INVALID_RPI, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %376, label %358

358:                                              ; preds = %352
  %359 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %360 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @IOERR_NO_RESOURCES, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %376, label %364

364:                                              ; preds = %358
  %365 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %366 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @IOERR_ABORT_REQUESTED, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %376, label %370

370:                                              ; preds = %364
  %371 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %372 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @IOERR_SLER_CMD_RCV_FAILURE, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %381

376:                                              ; preds = %370, %364, %358, %352
  %377 = load i32, i32* @DID_REQUEUE, align 4
  %378 = shl i32 %377, 16
  %379 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %380 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %379, i32 0, i32 1
  store i32 %378, i32* %380, align 8
  br label %449

381:                                              ; preds = %370
  %382 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %383 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @IOERR_RX_DMA_FAILED, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %393, label %387

387:                                              ; preds = %381
  %388 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %389 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @IOERR_TX_DMA_FAILED, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %393, label %417

393:                                              ; preds = %387, %381
  %394 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %395 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %417

401:                                              ; preds = %393
  %402 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %403 = call i32 @scsi_get_prot_op(%struct.scsi_cmnd* %402)
  %404 = load i32, i32* @SCSI_PROT_NORMAL, align 4
  %405 = icmp ne i32 %403, %404
  br i1 %405, label %406, label %411

406:                                              ; preds = %401
  %407 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %408 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %409 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %410 = call i32 @lpfc_parse_bg_err(%struct.lpfc_hba* %407, %struct.lpfc_io_buf* %408, %struct.lpfc_iocbq* %409)
  br label %449

411:                                              ; preds = %401
  %412 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %413 = load i32, i32* @KERN_WARNING, align 4
  %414 = load i32, i32* @LOG_BG, align 4
  %415 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %412, i32 %413, i32 %414, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %416

416:                                              ; preds = %411
  br label %417

417:                                              ; preds = %416, %393, %387
  %418 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %419 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = icmp eq i32 %420, 131
  br i1 %421, label %422, label %443

422:                                              ; preds = %417
  %423 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %424 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %423, i32 0, i32 1
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @LPFC_SLI_REV4, align 8
  %427 = icmp eq i64 %425, %426
  br i1 %427, label %428, label %443

428:                                              ; preds = %422
  %429 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %430 = icmp ne %struct.lpfc_nodelist* %429, null
  br i1 %430, label %431, label %443

431:                                              ; preds = %428
  %432 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %433 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %443

435:                                              ; preds = %431
  %436 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %437 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %438 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %439 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %438, i32 0, i32 6
  %440 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @lpfc_set_rrq_active(%struct.lpfc_hba* %436, %struct.lpfc_nodelist* %437, i32 %441, i32 0, i32 0)
  br label %443

443:                                              ; preds = %435, %431, %428, %422, %417
  br label %444

444:                                              ; preds = %228, %443
  %445 = load i32, i32* @DID_ERROR, align 4
  %446 = shl i32 %445, 16
  %447 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %448 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %447, i32 0, i32 1
  store i32 %446, i32* %448, align 8
  br label %449

449:                                              ; preds = %444, %406, %376, %347, %299, %257, %243
  %450 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %451 = icmp ne %struct.lpfc_nodelist* %450, null
  br i1 %451, label %452, label %462

452:                                              ; preds = %449
  %453 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %454 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %453)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %462

456:                                              ; preds = %452
  %457 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %458 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %461 = icmp ne i64 %459, %460
  br i1 %461, label %462, label %469

462:                                              ; preds = %456, %452, %449
  %463 = load i32, i32* @DID_TRANSPORT_DISRUPTED, align 4
  %464 = shl i32 %463, 16
  %465 = load i32, i32* @SAM_STAT_BUSY, align 4
  %466 = or i32 %464, %465
  %467 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %468 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %467, i32 0, i32 1
  store i32 %466, i32* %468, align 8
  br label %469

469:                                              ; preds = %462, %456
  br label %475

470:                                              ; preds = %70
  %471 = load i32, i32* @DID_OK, align 4
  %472 = shl i32 %471, 16
  %473 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %474 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %473, i32 0, i32 1
  store i32 %472, i32* %474, align 8
  br label %475

475:                                              ; preds = %470, %469
  %476 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %477 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 8
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %487, label %480

480:                                              ; preds = %475
  %481 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %482 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %481, i32 0, i32 9
  %483 = load %struct.TYPE_28__*, %struct.TYPE_28__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %520

487:                                              ; preds = %480, %475
  %488 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %489 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %488, i32 0, i32 5
  %490 = load i64, i64* %489, align 8
  %491 = inttoptr i64 %490 to i32*
  store i32* %491, i32** %17, align 8
  %492 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %493 = load i32, i32* @KERN_INFO, align 4
  %494 = load i32, i32* @LOG_FCP, align 4
  %495 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %496 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %495, i32 0, i32 4
  %497 = load %struct.TYPE_15__*, %struct.TYPE_15__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %501 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %500, i32 0, i32 4
  %502 = load %struct.TYPE_15__*, %struct.TYPE_15__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %506 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %507 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 8
  %509 = load i32*, i32** %17, align 8
  %510 = load i32, i32* %509, align 4
  %511 = load i32*, i32** %17, align 8
  %512 = getelementptr inbounds i32, i32* %511, i64 3
  %513 = load i32, i32* %512, align 4
  %514 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %515 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %514, i32 0, i32 3
  %516 = load i32, i32* %515, align 8
  %517 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %518 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %517)
  %519 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %492, i32 %493, i32 %494, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %499, i32 %504, %struct.scsi_cmnd* %505, i32 %508, i32 %510, i32 %513, i32 %516, i32 %518)
  br label %520

520:                                              ; preds = %487, %480
  %521 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %522 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %523 = call i32 @lpfc_update_stats(%struct.lpfc_hba* %521, %struct.lpfc_io_buf* %522)
  %524 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %525 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %524, i32 0, i32 1
  %526 = load i64, i64* %525, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %598

528:                                              ; preds = %520
  %529 = load i32, i32* @jiffies, align 4
  %530 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %531 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %530, i32 0, i32 8
  %532 = load i64, i64* %531, align 8
  %533 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %534 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %533, i32 0, i32 1
  %535 = load i64, i64* %534, align 8
  %536 = call i64 @msecs_to_jiffies(i64 %535)
  %537 = add nsw i64 %532, %536
  %538 = call i64 @time_after(i32 %529, i64 %537)
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %598

540:                                              ; preds = %528
  %541 = load %struct.Scsi_Host*, %struct.Scsi_Host** %14, align 8
  %542 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %541, i32 0, i32 0
  %543 = load i32*, i32** %542, align 8
  %544 = load i64, i64* %12, align 8
  %545 = call i32 @spin_lock_irqsave(i32* %543, i64 %544)
  %546 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %547 = icmp ne %struct.lpfc_nodelist* %546, null
  br i1 %547, label %548, label %592

548:                                              ; preds = %540
  %549 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %550 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %549)
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %552, label %592

552:                                              ; preds = %548
  %553 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %554 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %553, i32 0, i32 1
  %555 = load i64, i64* %554, align 8
  %556 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %557 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %556, i32 0, i32 3
  %558 = call i64 @atomic_read(i32* %557)
  %559 = icmp sgt i64 %555, %558
  br i1 %559, label %560, label %588

560:                                              ; preds = %552
  %561 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %562 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %561, i32 0, i32 3
  %563 = call i64 @atomic_read(i32* %562)
  %564 = load i64, i64* @LPFC_MIN_TGT_QDEPTH, align 8
  %565 = icmp sgt i64 %563, %564
  br i1 %565, label %566, label %588

566:                                              ; preds = %560
  %567 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %568 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %567, i32 0, i32 0
  %569 = load i64*, i64** %568, align 8
  %570 = getelementptr inbounds i64, i64* %569, i64 0
  %571 = load i64, i64* %570, align 8
  %572 = load i64, i64* @READ_10, align 8
  %573 = icmp eq i64 %571, %572
  br i1 %573, label %582, label %574

574:                                              ; preds = %566
  %575 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %576 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %575, i32 0, i32 0
  %577 = load i64*, i64** %576, align 8
  %578 = getelementptr inbounds i64, i64* %577, i64 0
  %579 = load i64, i64* %578, align 8
  %580 = load i64, i64* @WRITE_10, align 8
  %581 = icmp eq i64 %579, %580
  br i1 %581, label %582, label %588

582:                                              ; preds = %574, %566
  %583 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %584 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %583, i32 0, i32 3
  %585 = call i64 @atomic_read(i32* %584)
  %586 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %587 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %586, i32 0, i32 1
  store i64 %585, i64* %587, align 8
  br label %588

588:                                              ; preds = %582, %574, %560, %552
  %589 = load i32, i32* @jiffies, align 4
  %590 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %591 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %590, i32 0, i32 2
  store i32 %589, i32* %591, align 8
  br label %592

592:                                              ; preds = %588, %548, %540
  %593 = load %struct.Scsi_Host*, %struct.Scsi_Host** %14, align 8
  %594 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %593, i32 0, i32 0
  %595 = load i32*, i32** %594, align 8
  %596 = load i64, i64* %12, align 8
  %597 = call i32 @spin_unlock_irqrestore(i32* %595, i64 %596)
  br label %598

598:                                              ; preds = %592, %528, %520
  %599 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %600 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %601 = call i32 @lpfc_scsi_unprep_dma_buf(%struct.lpfc_hba* %599, %struct.lpfc_io_buf* %600)
  %602 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %603 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %602, i32 0, i32 7
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %603, align 8
  %604 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %605 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %604, i32 0, i32 4
  %606 = call i32 @spin_unlock(i32* %605)
  %607 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %608 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %607, i32 0, i32 2
  %609 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %608, align 8
  %610 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %611 = call i32 %609(%struct.scsi_cmnd* %610)
  %612 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %613 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %612, i32 0, i32 4
  %614 = call i32 @spin_lock(i32* %613)
  %615 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %616 = xor i32 %615, -1
  %617 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %618 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %617, i32 0, i32 6
  %619 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %618, i32 0, i32 2
  %620 = load i32, i32* %619, align 8
  %621 = and i32 %620, %616
  store i32 %621, i32* %619, align 8
  %622 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %623 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %622, i32 0, i32 5
  %624 = load i64, i64* %623, align 8
  %625 = icmp ne i64 %624, 0
  br i1 %625, label %626, label %631

626:                                              ; preds = %598
  %627 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %628 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %627, i32 0, i32 5
  %629 = load i64, i64* %628, align 8
  %630 = call i32 @wake_up(i64 %629)
  br label %631

631:                                              ; preds = %626, %598
  %632 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %633 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %632, i32 0, i32 4
  %634 = call i32 @spin_unlock(i32* %633)
  %635 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %636 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %637 = call i32 @lpfc_release_scsi_buf(%struct.lpfc_hba* %635, %struct.lpfc_io_buf* %636)
  br label %638

638:                                              ; preds = %631, %40
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @lpfc_handle_fcp_err(%struct.lpfc_vport*, %struct.lpfc_io_buf*, %struct.lpfc_iocbq*) #1

declare dso_local %struct.lpfc_fast_path_event* @lpfc_alloc_fast_evt(%struct.lpfc_hba*) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

declare dso_local i32 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_parse_bg_err(%struct.lpfc_hba*, %struct.lpfc_io_buf*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_set_rrq_active(%struct.lpfc_hba*, %struct.lpfc_nodelist*, i32, i32, i32) #1

declare dso_local i32 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_update_stats(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @lpfc_scsi_unprep_dma_buf(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

declare dso_local i32 @wake_up(i64) #1

declare dso_local i32 @lpfc_release_scsi_buf(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
