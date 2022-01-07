; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_data_io_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_data_io_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { %struct.ScsiReqBlk* }
%struct.ScsiReqBlk = type { i32, i32, i32, i32, i64, i32, i32, i32, %struct.DeviceCtlBlk*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.DeviceCtlBlk = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@DBG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"data_io_transfer: (0x%p) <%02i-%i> %c len=%i, sg=(%i/%i)\0A\00", align 1
@DMACMD_DIR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"data_io_transfer: Using tmp_srb!\0A\00", align 1
@DC395x_LASTPIO = common dso_local global i32 0, align 4
@TRM_S1040_DMA_STATUS = common dso_local global i32 0, align 4
@XFERPENDING = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"data_io_transfer: Xfer pending! Expect trouble!\0A\00", align 1
@TRM_S1040_DMA_CONTROL = common dso_local global i32 0, align 4
@CLRXFIFO = common dso_local global i32 0, align 4
@SRB_DATA_XFER = common dso_local global i32 0, align 4
@TRM_S1040_DMA_XHIGHADDR = common dso_local global i32 0, align 4
@DMACMD_SG = common dso_local global i32 0, align 4
@TRM_S1040_DMA_XLOWADDR = common dso_local global i32 0, align 4
@TRM_S1040_DMA_XCNT = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_COUNTER = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_CONTROL = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_COMMAND = common dso_local global i32 0, align 4
@SCMD_DMA_IN = common dso_local global i32 0, align 4
@TRM_S1040_DMA_COMMAND = common dso_local global i32 0, align 4
@SCMD_DMA_OUT = common dso_local global i32 0, align 4
@H_OVER_UNDER_RUN = common dso_local global i32 0, align 4
@OVER_RUN = common dso_local global i32 0, align 4
@WIDE_SYNC = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_CONFIG2 = common dso_local global i32 0, align 4
@CFG2_WIDEFIFO = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_FIFO = common dso_local global i32 0, align 4
@SRB_XFERPAD = common dso_local global i32 0, align 4
@SCMD_FIFO_IN = common dso_local global i32 0, align 4
@SCMD_FIFO_OUT = common dso_local global i32 0, align 4
@DBG_PIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*, i32)* @data_io_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_io_transfer(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1, i32 %2) #0 {
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  %5 = alloca %struct.ScsiReqBlk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.DeviceCtlBlk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %4, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %13 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %12, i32 0, i32 8
  %14 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %13, align 8
  store %struct.DeviceCtlBlk* %14, %struct.DeviceCtlBlk** %7, align 8
  %15 = load i32, i32* @DBG_0, align 4
  %16 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %17 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %16, i32 0, i32 9
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %20 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %19, i32 0, i32 9
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %27 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %26, i32 0, i32 9
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @DMACMD_DIR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 114, i32 119
  %40 = trunc i32 %39 to i8
  %41 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %42 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %45 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %48 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dprintkdbg(i32 %15, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %18, i32 %25, i32 %33, i8 signext %40, i32 %43, i32 %46, i32 %49)
  %51 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %52 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %53 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %52, i32 0, i32 0
  %54 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %53, align 8
  %55 = icmp eq %struct.ScsiReqBlk* %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %3
  %57 = load i32, i32* @KERN_ERR, align 4
  %58 = call i32 @dprintkl(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %3
  %60 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %61 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %64 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %285

68:                                               ; preds = %59
  %69 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %70 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @DC395x_LASTPIO, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %193

74:                                               ; preds = %68
  %75 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %76 = load i32, i32* @TRM_S1040_DMA_STATUS, align 4
  %77 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @XFERPENDING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load i32, i32* @KERN_DEBUG, align 4
  %84 = call i32 @dprintkl(i32 %83, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %86 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %7, align 8
  %87 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %88 = call i32 @dump_register_info(%struct.AdapterCtlBlk* %85, %struct.DeviceCtlBlk* %86, %struct.ScsiReqBlk* %87)
  %89 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %90 = load i32, i32* @TRM_S1040_DMA_CONTROL, align 4
  %91 = load i32, i32* @CLRXFIFO, align 4
  %92 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %82, %74
  %94 = load i32, i32* @SRB_DATA_XFER, align 4
  %95 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %96 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %100 = load i32, i32* @TRM_S1040_DMA_XHIGHADDR, align 4
  %101 = call i32 @DC395x_write32(%struct.AdapterCtlBlk* %99, i32 %100, i32 0)
  %102 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %103 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %102, i32 0, i32 9
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = call i64 @scsi_sg_count(%struct.TYPE_8__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %93
  %108 = load i32, i32* @DMACMD_SG, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %112 = load i32, i32* @TRM_S1040_DMA_XLOWADDR, align 4
  %113 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %114 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %118 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 4, %120
  %122 = add i64 %116, %121
  %123 = trunc i64 %122 to i32
  %124 = call i32 @DC395x_write32(%struct.AdapterCtlBlk* %111, i32 %112, i32 %123)
  %125 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %126 = load i32, i32* @TRM_S1040_DMA_XCNT, align 4
  %127 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %128 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %131 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %129, %132
  %134 = shl i32 %133, 3
  %135 = call i32 @DC395x_write32(%struct.AdapterCtlBlk* %125, i32 %126, i32 %134)
  br label %159

136:                                              ; preds = %93
  %137 = load i32, i32* @DMACMD_SG, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %6, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %6, align 4
  %141 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %142 = load i32, i32* @TRM_S1040_DMA_XLOWADDR, align 4
  %143 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %144 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %143, i32 0, i32 10
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @DC395x_write32(%struct.AdapterCtlBlk* %141, i32 %142, i32 %148)
  %150 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %151 = load i32, i32* @TRM_S1040_DMA_XCNT, align 4
  %152 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %153 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %152, i32 0, i32 10
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @DC395x_write32(%struct.AdapterCtlBlk* %150, i32 %151, i32 %157)
  br label %159

159:                                              ; preds = %136, %107
  %160 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %161 = load i32, i32* @TRM_S1040_SCSI_COUNTER, align 4
  %162 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %163 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @DC395x_write32(%struct.AdapterCtlBlk* %160, i32 %161, i32 %164)
  %166 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %167 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %168 = load i32, i32* @DO_DATALATCH, align 4
  %169 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %166, i32 %167, i32 %168)
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @DMACMD_DIR, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %159
  %175 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %176 = load i32, i32* @TRM_S1040_SCSI_COMMAND, align 4
  %177 = load i32, i32* @SCMD_DMA_IN, align 4
  %178 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %175, i32 %176, i32 %177)
  %179 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %180 = load i32, i32* @TRM_S1040_DMA_COMMAND, align 4
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %179, i32 %180, i32 %181)
  br label %192

183:                                              ; preds = %159
  %184 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %185 = load i32, i32* @TRM_S1040_DMA_COMMAND, align 4
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %184, i32 %185, i32 %186)
  %188 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %189 = load i32, i32* @TRM_S1040_SCSI_COMMAND, align 4
  %190 = load i32, i32* @SCMD_DMA_OUT, align 4
  %191 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %183, %174
  br label %285

193:                                              ; preds = %68
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %194 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %195 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %193
  %199 = load i32, i32* @H_OVER_UNDER_RUN, align 4
  %200 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %201 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %200, i32 0, i32 7
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* @OVER_RUN, align 4
  %203 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %204 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %198, %193
  %208 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %7, align 8
  %209 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @WIDE_SYNC, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %244

214:                                              ; preds = %207
  %215 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %216 = load i32, i32* @TRM_S1040_SCSI_COUNTER, align 4
  %217 = call i32 @DC395x_write32(%struct.AdapterCtlBlk* %215, i32 %216, i32 2)
  %218 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %219 = load i32, i32* @TRM_S1040_SCSI_CONFIG2, align 4
  %220 = load i32, i32* @CFG2_WIDEFIFO, align 4
  %221 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %218, i32 %219, i32 %220)
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* @DMACMD_DIR, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %214
  %227 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %228 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %229 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %227, i32 %228)
  store i32 %229, i32* %10, align 4
  %230 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %231 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %232 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %230, i32 %231)
  store i32 %232, i32* %11, align 4
  br label %240

233:                                              ; preds = %214
  %234 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %235 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %236 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %234, i32 %235, i32 75)
  %237 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %238 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %239 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %237, i32 %238, i32 71)
  br label %240

240:                                              ; preds = %233, %226
  %241 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %242 = load i32, i32* @TRM_S1040_SCSI_CONFIG2, align 4
  %243 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %241, i32 %242, i32 0)
  br label %261

244:                                              ; preds = %207
  %245 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %246 = load i32, i32* @TRM_S1040_SCSI_COUNTER, align 4
  %247 = call i32 @DC395x_write32(%struct.AdapterCtlBlk* %245, i32 %246, i32 1)
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* @DMACMD_DIR, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %244
  %253 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %254 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %255 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %253, i32 %254)
  store i32 %255, i32* %10, align 4
  br label %260

256:                                              ; preds = %244
  %257 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %258 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %259 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %257, i32 %258, i32 75)
  br label %260

260:                                              ; preds = %256, %252
  br label %261

261:                                              ; preds = %260, %240
  %262 = load i32, i32* @SRB_XFERPAD, align 4
  %263 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %264 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 8
  %267 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %268 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %269 = load i32, i32* @DO_DATALATCH, align 4
  %270 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %267, i32 %268, i32 %269)
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* @DMACMD_DIR, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %261
  %276 = load i32, i32* @SCMD_FIFO_IN, align 4
  br label %279

277:                                              ; preds = %261
  %278 = load i32, i32* @SCMD_FIFO_OUT, align 4
  br label %279

279:                                              ; preds = %277, %275
  %280 = phi i32 [ %276, %275 ], [ %278, %277 ]
  store i32 %280, i32* %8, align 4
  %281 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %282 = load i32, i32* @TRM_S1040_SCSI_COMMAND, align 4
  %283 = load i32, i32* %8, align 4
  %284 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %281, i32 %282, i32 %283)
  br label %285

285:                                              ; preds = %67, %279, %192
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, %struct.TYPE_8__*, i32, i32, i8 signext, i32, i32, i32) #1

declare dso_local i32 @dprintkl(i32, i8*) #1

declare dso_local i32 @DC395x_read8(%struct.AdapterCtlBlk*, i32) #1

declare dso_local i32 @dump_register_info(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @DC395x_write8(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @DC395x_write32(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i64 @scsi_sg_count(%struct.TYPE_8__*) #1

declare dso_local i32 @DC395x_write16(%struct.AdapterCtlBlk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
