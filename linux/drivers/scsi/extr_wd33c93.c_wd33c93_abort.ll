; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_wd33c93_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd33c93.c_wd33c93_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_2__*, i32*, {}* }
%struct.TYPE_2__ = type { i64, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32, i64 }
%struct.WD33C93_hostdata = type { i64, i32*, i64, i32, %struct.scsi_cmnd*, i32 (%struct.Scsi_Host.0*, %struct.scsi_cmnd*, i32)*, %struct.scsi_cmnd*, i32 }
%struct.Scsi_Host.0 = type opaque

@DID_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"scsi%d: Abort - removing command from input_Q. \00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"scsi%d: Aborting connected command - \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"stopping DMA - \00", align 1
@D_DMA_RUNNING = common dso_local global i64 0, align 8
@D_DMA_OFF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"sending wd33c93 ABORT command - \00", align 1
@WD_CONTROL = common dso_local global i32 0, align 4
@CTRL_IDI = common dso_local global i32 0, align 4
@CTRL_EDI = common dso_local global i32 0, align 4
@CTRL_POLLED = common dso_local global i32 0, align 4
@WD_CMD_ABORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"flushing fifo - \00", align 1
@ASR_DBR = common dso_local global i32 0, align 4
@WD_DATA = common dso_local global i32 0, align 4
@ASR_INT = common dso_local global i32 0, align 4
@WD_SCSI_STATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"asr=%02x, sr=%02x, %ld bytes un-transferred (timeout=%ld) - \00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"sending wd33c93 DISCONNECT command - \00", align 1
@WD_CMD_DISCONNECT = common dso_local global i32 0, align 4
@ASR_CIP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"asr=%02x, sr=%02x.\00", align 1
@S_UNCONNECTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"scsi%d: Abort - command found on disconnected_Q - \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Abort SNOOZE. \00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [89 x i8] c"scsi%d: warning : SCSI command probably completed successfully         before abortion. \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wd33c93_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.WD33C93_hostdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @disable_irq(i32 %18)
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %23, align 8
  store %struct.Scsi_Host* %24, %struct.Scsi_Host** %4, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %26 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.WD33C93_hostdata*
  store %struct.WD33C93_hostdata* %28, %struct.WD33C93_hostdata** %5, align 8
  %29 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %30 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %33 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %32, i32 0, i32 6
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %33, align 8
  store %struct.scsi_cmnd* %34, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %8, align 8
  br label %35

35:                                               ; preds = %84, %1
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %37 = icmp ne %struct.scsi_cmnd* %36, null
  br i1 %37, label %38, label %90

38:                                               ; preds = %35
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %41 = icmp eq %struct.scsi_cmnd* %39, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %38
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %44 = icmp ne %struct.scsi_cmnd* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  br label %58

51:                                               ; preds = %42
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = bitcast i32* %54 to %struct.scsi_cmnd*
  %56 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %57 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %56, i32 0, i32 6
  store %struct.scsi_cmnd* %55, %struct.scsi_cmnd** %57, align 8
  br label %58

58:                                               ; preds = %51, %45
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* @DID_ABORT, align 4
  %62 = shl i32 %61, 16
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %66 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %72, align 8
  %74 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @enable_irq(i32 %75)
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 3
  %79 = bitcast {}** %78 to i32 (%struct.scsi_cmnd*)**
  %80 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %79, align 8
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %82 = call i32 %80(%struct.scsi_cmnd* %81)
  %83 = load i32, i32* @SUCCESS, align 4
  store i32 %83, i32* %2, align 4
  br label %285

84:                                               ; preds = %38
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %85, %struct.scsi_cmnd** %8, align 8
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = bitcast i32* %88 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %89, %struct.scsi_cmnd** %7, align 8
  br label %35

90:                                               ; preds = %35
  %91 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %92 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %91, i32 0, i32 4
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %92, align 8
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %95 = icmp eq %struct.scsi_cmnd* %93, %94
  br i1 %95, label %96, label %237

96:                                               ; preds = %90
  %97 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %98 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %103 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @D_DMA_RUNNING, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %96
  %108 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %109 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %108, i32 0, i32 5
  %110 = load i32 (%struct.Scsi_Host.0*, %struct.scsi_cmnd*, i32)*, i32 (%struct.Scsi_Host.0*, %struct.scsi_cmnd*, i32)** %109, align 8
  %111 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %112 = bitcast %struct.Scsi_Host* %111 to %struct.Scsi_Host.0*
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %114 = call i32 %110(%struct.Scsi_Host.0* %112, %struct.scsi_cmnd* %113, i32 0)
  %115 = load i64, i64* @D_DMA_OFF, align 8
  %116 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %117 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %107, %96
  %119 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @WD_CONTROL, align 4
  %122 = load i32, i32* @CTRL_IDI, align 4
  %123 = load i32, i32* @CTRL_EDI, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @CTRL_POLLED, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @write_wd33c93(i32 %120, i32 %121, i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @WD_CMD_ABORT, align 4
  %130 = call i32 @write_wd33c93_cmd(i32 %128, i32 %129)
  %131 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i64 1000000, i64* %11, align 8
  br label %132

132:                                              ; preds = %153, %118
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @read_aux_stat(i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @ASR_DBR, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @WD_DATA, align 4
  %142 = call i32 @read_wd33c93(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %132
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @ASR_INT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %144
  %150 = load i64, i64* %11, align 8
  %151 = add i64 %150, -1
  store i64 %151, i64* %11, align 8
  %152 = icmp ugt i64 %150, 0
  br label %153

153:                                              ; preds = %149, %144
  %154 = phi i1 [ false, %144 ], [ %152, %149 ]
  br i1 %154, label %132, label %155

155:                                              ; preds = %153
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @WD_SCSI_STATUS, align 4
  %158 = call i32 @read_wd33c93(i32 %156, i32 %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @read_wd33c93_count(i32 %161)
  %163 = load i64, i64* %11, align 8
  %164 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %159, i32 %160, i32 %162, i64 %163)
  %165 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @WD_CMD_DISCONNECT, align 4
  %168 = call i32 @write_wd33c93_cmd(i32 %166, i32 %167)
  store i64 1000000, i64* %11, align 8
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @read_aux_stat(i32 %169)
  store i32 %170, i32* %10, align 4
  br label %171

171:                                              ; preds = %182, %155
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @ASR_CIP, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i64, i64* %11, align 8
  %178 = add i64 %177, -1
  store i64 %178, i64* %11, align 8
  %179 = icmp ugt i64 %177, 0
  br label %180

180:                                              ; preds = %176, %171
  %181 = phi i1 [ false, %171 ], [ %179, %176 ]
  br i1 %181, label %182, label %185

182:                                              ; preds = %180
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @read_aux_stat(i32 %183)
  store i32 %184, i32* %10, align 4
  br label %171

185:                                              ; preds = %180
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @WD_SCSI_STATUS, align 4
  %188 = call i32 @read_wd33c93(i32 %186, i32 %187)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %9, align 4
  %191 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %189, i32 %190)
  %192 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %193 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %192, i32 0, i32 1
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, 255
  %198 = shl i32 1, %197
  %199 = xor i32 %198, -1
  %200 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %201 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %204 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %203, i32 0, i32 1
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds i32, i32* %202, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, %199
  store i32 %210, i32* %208, align 4
  %211 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %212 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %211, i32 0, i32 4
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %212, align 8
  %213 = load i32, i32* @S_UNCONNECTED, align 4
  %214 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %215 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* @DID_ABORT, align 4
  %217 = shl i32 %216, 16
  %218 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %219 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %221 = call i32 @wd33c93_execute(%struct.Scsi_Host* %220)
  %222 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %223 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %222, i32 0, i32 1
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 2
  %226 = load %struct.Scsi_Host*, %struct.Scsi_Host** %225, align 8
  %227 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @enable_irq(i32 %228)
  %230 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %231 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %230, i32 0, i32 3
  %232 = bitcast {}** %231 to i32 (%struct.scsi_cmnd*)**
  %233 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %232, align 8
  %234 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %235 = call i32 %233(%struct.scsi_cmnd* %234)
  %236 = load i32, i32* @SUCCESS, align 4
  store i32 %236, i32* %2, align 4
  br label %285

237:                                              ; preds = %90
  %238 = load %struct.WD33C93_hostdata*, %struct.WD33C93_hostdata** %5, align 8
  %239 = getelementptr inbounds %struct.WD33C93_hostdata, %struct.WD33C93_hostdata* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = inttoptr i64 %240 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %241, %struct.scsi_cmnd** %7, align 8
  br label %242

242:                                              ; preds = %264, %237
  %243 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %244 = icmp ne %struct.scsi_cmnd* %243, null
  br i1 %244, label %245, label %269

245:                                              ; preds = %242
  %246 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %247 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %248 = icmp eq %struct.scsi_cmnd* %246, %247
  br i1 %248, label %249, label %264

249:                                              ; preds = %245
  %250 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %251 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %252)
  %254 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %255 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %256 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %255, i32 0, i32 1
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 2
  %259 = load %struct.Scsi_Host*, %struct.Scsi_Host** %258, align 8
  %260 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @enable_irq(i32 %261)
  %263 = load i32, i32* @FAILED, align 4
  store i32 %263, i32* %2, align 4
  br label %285

264:                                              ; preds = %245
  %265 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %266 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %265, i32 0, i32 2
  %267 = load i32*, i32** %266, align 8
  %268 = bitcast i32* %267 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %268, %struct.scsi_cmnd** %7, align 8
  br label %242

269:                                              ; preds = %242
  %270 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %271 = call i32 @wd33c93_execute(%struct.Scsi_Host* %270)
  %272 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %273 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %272, i32 0, i32 1
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 2
  %276 = load %struct.Scsi_Host*, %struct.Scsi_Host** %275, align 8
  %277 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @enable_irq(i32 %278)
  %280 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %281 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.10, i64 0, i64 0), i32 %282)
  %284 = load i32, i32* @FAILED, align 4
  store i32 %284, i32* %2, align 4
  br label %285

285:                                              ; preds = %269, %249, %185, %58
  %286 = load i32, i32* %2, align 4
  ret i32 %286
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @write_wd33c93(i32, i32, i32) #1

declare dso_local i32 @write_wd33c93_cmd(i32, i32) #1

declare dso_local i32 @read_aux_stat(i32) #1

declare dso_local i32 @read_wd33c93(i32, i32) #1

declare dso_local i32 @read_wd33c93_count(i32) #1

declare dso_local i32 @wd33c93_execute(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
