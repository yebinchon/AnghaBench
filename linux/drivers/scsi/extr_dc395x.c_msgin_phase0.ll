; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgin_phase0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_msgin_phase0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i64, %struct.DeviceCtlBlk* }
%struct.DeviceCtlBlk = type { i32, i32, i32, i32 }
%struct.ScsiReqBlk = type { i32*, i32, i32, i32*, i32, i32 }

@DBG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"msgin_phase0: (0x%p)\0A\00", align 1
@TRM_S1040_SCSI_FIFO = common dso_local global i32 0, align 4
@SRB_DISCONNECT = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_CONTROL = common dso_local global i32 0, align 4
@DO_CLRATN = common dso_local global i32 0, align 4
@DO_DATALATCH = common dso_local global i32 0, align 4
@SRB_DO_SYNC_NEGO = common dso_local global i32 0, align 4
@SRB_DO_WIDE_NEGO = common dso_local global i32 0, align 4
@EXTENDED_SDTR = common dso_local global i32 0, align 4
@EXTENDED_WDTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"msgin_phase0: Ignore Wide Residual!\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"msgin_phase0: (0x%p) SAVE POINTER rem=%i Ignore\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"msgin_phase0: RESTORE POINTER. Ignore\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"msgin_phase0: (0x%p) <%02i-%i> ABORT msg\0A\00", align 1
@ABORT_DEV_ = common dso_local global i32 0, align 4
@IDENTIFY_BASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"msgin_phase0: Identify msg\0A\00", align 1
@DC395x_ENABLE_MSGOUT = common dso_local global i32 0, align 4
@SRB_MSGOUT = common dso_local global i32 0, align 4
@SRB_MSGIN = common dso_local global i32 0, align 4
@PH_BUS_FREE = common dso_local global i32 0, align 4
@TRM_S1040_SCSI_COMMAND = common dso_local global i32 0, align 4
@SCMD_MSGACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*, i32*)* @msgin_phase0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msgin_phase0(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1, i32* %2) #0 {
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  %5 = alloca %struct.ScsiReqBlk*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.DeviceCtlBlk*, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %4, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %9 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %8, i32 0, i32 1
  %10 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %9, align 8
  store %struct.DeviceCtlBlk* %10, %struct.DeviceCtlBlk** %7, align 8
  %11 = load i32, i32* @DBG_0, align 4
  %12 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %13 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %17 = load i32, i32* @TRM_S1040_SCSI_FIFO, align 4
  %18 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %16, i32 %17)
  %19 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %20 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %23 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %18, i32* %26, align 4
  %27 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %28 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %31 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @msgin_completed(i32* %29, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %211

35:                                               ; preds = %3
  %36 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %37 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %171 [
    i32 136, label %41
    i32 128, label %45
    i32 134, label %45
    i32 131, label %45
    i32 133, label %54
    i32 135, label %86
    i32 132, label %135
    i32 137, label %138
    i32 129, label %139
    i32 130, label %148
    i32 138, label %151
  ]

41:                                               ; preds = %35
  %42 = load i32, i32* @SRB_DISCONNECT, align 4
  %43 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %44 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %202

45:                                               ; preds = %35, %35, %35
  %46 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %47 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %7, align 8
  %48 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %49 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.ScsiReqBlk* @msgin_qtag(%struct.AdapterCtlBlk* %46, %struct.DeviceCtlBlk* %47, i32 %52)
  store %struct.ScsiReqBlk* %53, %struct.ScsiReqBlk** %5, align 8
  br label %202

54:                                               ; preds = %35
  %55 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %56 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %57 = load i32, i32* @DO_CLRATN, align 4
  %58 = load i32, i32* @DO_DATALATCH, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %55, i32 %56, i32 %59)
  %61 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %62 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SRB_DO_SYNC_NEGO, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  %68 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %69 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %70 = call i32 @msgin_set_async(%struct.AdapterCtlBlk* %68, %struct.ScsiReqBlk* %69)
  br label %202

71:                                               ; preds = %54
  %72 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %73 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SRB_DO_WIDE_NEGO, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %80 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %81 = call i32 @msgin_set_nowide(%struct.AdapterCtlBlk* %79, %struct.ScsiReqBlk* %80)
  br label %202

82:                                               ; preds = %71
  %83 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %84 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %85 = call i32 @enable_msgout_abort(%struct.AdapterCtlBlk* %83, %struct.ScsiReqBlk* %84)
  br label %202

86:                                               ; preds = %35
  %87 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %88 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %95 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @EXTENDED_SDTR, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %103 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %104 = call i32 @msgin_set_sync(%struct.AdapterCtlBlk* %102, %struct.ScsiReqBlk* %103)
  br label %202

105:                                              ; preds = %93, %86
  %106 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %107 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %131

112:                                              ; preds = %105
  %113 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %114 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @EXTENDED_WDTR, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %112
  %121 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %122 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  %125 = load i32, i32* %124, align 4
  %126 = icmp sle i32 %125, 2
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %129 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %130 = call i32 @msgin_set_wide(%struct.AdapterCtlBlk* %128, %struct.ScsiReqBlk* %129)
  br label %202

131:                                              ; preds = %120, %112, %105
  %132 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %133 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %134 = call i32 @msgin_reject(%struct.AdapterCtlBlk* %132, %struct.ScsiReqBlk* %133)
  br label %202

135:                                              ; preds = %35
  %136 = load i32, i32* @DBG_0, align 4
  %137 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %136, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %202

138:                                              ; preds = %35
  br label %202

139:                                              ; preds = %35
  %140 = load i32, i32* @DBG_0, align 4
  %141 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %142 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %145 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %140, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %143, i32 %146)
  br label %202

148:                                              ; preds = %35
  %149 = load i32, i32* @DBG_0, align 4
  %150 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %149, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %202

151:                                              ; preds = %35
  %152 = load i32, i32* @DBG_0, align 4
  %153 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %154 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %7, align 8
  %157 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %7, align 8
  %160 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %152, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %155, i32 %158, i32 %161)
  %163 = load i32, i32* @ABORT_DEV_, align 4
  %164 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %7, align 8
  %165 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %169 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %170 = call i32 @enable_msgout_abort(%struct.AdapterCtlBlk* %168, %struct.ScsiReqBlk* %169)
  br label %202

171:                                              ; preds = %35
  %172 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %173 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @IDENTIFY_BASE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %198

180:                                              ; preds = %171
  %181 = load i32, i32* @DBG_0, align 4
  %182 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %181, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %183 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %184 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %183, i32 0, i32 2
  store i32 1, i32* %184, align 4
  %185 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %7, align 8
  %186 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %189 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  store i32 %187, i32* %191, align 4
  %192 = load i32, i32* @DC395x_ENABLE_MSGOUT, align 4
  %193 = load i32, i32* @SRB_MSGOUT, align 4
  %194 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %195 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  br label %198

198:                                              ; preds = %180, %171
  %199 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %200 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %201 = call i32 @msgin_reject(%struct.AdapterCtlBlk* %199, %struct.ScsiReqBlk* %200)
  br label %202

202:                                              ; preds = %198, %151, %148, %139, %138, %135, %131, %127, %101, %82, %78, %67, %45, %41
  %203 = load i32, i32* @SRB_MSGIN, align 4
  %204 = xor i32 %203, -1
  %205 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %5, align 8
  %206 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, %204
  store i32 %208, i32* %206, align 8
  %209 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %210 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %209, i32 0, i32 0
  store i64 0, i64* %210, align 8
  br label %211

211:                                              ; preds = %202, %3
  %212 = load i32, i32* @PH_BUS_FREE, align 4
  %213 = load i32*, i32** %6, align 8
  store i32 %212, i32* %213, align 4
  %214 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %215 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %216 = load i32, i32* @DO_DATALATCH, align 4
  %217 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %214, i32 %215, i32 %216)
  %218 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %219 = load i32, i32* @TRM_S1040_SCSI_COMMAND, align 4
  %220 = load i32, i32* @SCMD_MSGACCEPT, align 4
  %221 = call i32 @DC395x_write8(%struct.AdapterCtlBlk* %218, i32 %219, i32 %220)
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, ...) #1

declare dso_local i32 @DC395x_read8(%struct.AdapterCtlBlk*, i32) #1

declare dso_local i64 @msgin_completed(i32*, i64) #1

declare dso_local %struct.ScsiReqBlk* @msgin_qtag(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*, i32) #1

declare dso_local i32 @DC395x_write16(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @msgin_set_async(%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @msgin_set_nowide(%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @enable_msgout_abort(%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @msgin_set_sync(%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @msgin_set_wide(%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @msgin_reject(%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @DC395x_write8(%struct.AdapterCtlBlk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
