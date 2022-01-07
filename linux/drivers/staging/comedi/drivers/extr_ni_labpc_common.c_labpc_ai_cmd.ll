; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_common.c_labpc_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_8254*, %struct.labpc_private*, %struct.labpc_boardinfo* }
%struct.comedi_8254 = type { i32, i32, i32 }
%struct.labpc_private = type { i32, i32, i32, i32, i32, i32, i32 (%struct.comedi_device.0*, i32, i32)*, %struct.comedi_8254*, i64 }
%struct.comedi_device.0 = type opaque
%struct.labpc_boardinfo = type { i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32*, i32, i64, i32, i32, i64, i64, i64 }

@MODE_MULT_CHAN_UP = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@TRIG_EXT = common dso_local global i64 0, align 8
@I8254_MODE0 = common dso_local global i32 0, align 4
@I8254_BINARY = common dso_local global i32 0, align 4
@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@CMDF_PRIORITY = common dso_local global i32 0, align 4
@isa_dma_transfer = common dso_local global i32 0, align 4
@fifo_half_full_transfer = common dso_local global i32 0, align 4
@fifo_not_empty_transfer = common dso_local global i32 0, align 4
@MODE_MULT_CHAN_DOWN = common dso_local global i32 0, align 4
@CMD1_SCANEN = common dso_local global i32 0, align 4
@CMD1_REG = common dso_local global i32 0, align 4
@INTERVAL_COUNT_REG = common dso_local global i32 0, align 4
@INTERVAL_STROBE_REG = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@I8254_MODE3 = common dso_local global i32 0, align 4
@I8254_MODE2 = common dso_local global i32 0, align 4
@CMD3_ERRINTEN = common dso_local global i32 0, align 4
@CMD3_FIFOINTEN = common dso_local global i32 0, align 4
@CMD3_REG = common dso_local global i32 0, align 4
@CMD4_ECLKRCV = common dso_local global i32 0, align 4
@CMD4_INTSCAN = common dso_local global i32 0, align 4
@CMD4_EOIRCV = common dso_local global i32 0, align 4
@AREF_DIFF = common dso_local global i32 0, align 4
@CMD4_SEDIFF = common dso_local global i32 0, align 4
@CMD4_REG = common dso_local global i32 0, align 4
@CMD2_TBSEL = common dso_local global i32 0, align 4
@CMD2_SWTRIG = common dso_local global i32 0, align 4
@CMD2_HWTRIG = common dso_local global i32 0, align 4
@CMD2_PRETRIG = common dso_local global i32 0, align 4
@CMD2_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @labpc_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.labpc_boardinfo*, align 8
  %6 = alloca %struct.labpc_private*, align 8
  %7 = alloca %struct.comedi_async*, align 8
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.comedi_8254*, align 8
  %17 = alloca %struct.comedi_8254*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 3
  %20 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %19, align 8
  store %struct.labpc_boardinfo* %20, %struct.labpc_boardinfo** %5, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 2
  %23 = load %struct.labpc_private*, %struct.labpc_private** %22, align 8
  store %struct.labpc_private* %23, %struct.labpc_private** %6, align 8
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %25 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 0
  %26 = load %struct.comedi_async*, %struct.comedi_async** %25, align 8
  store %struct.comedi_async* %26, %struct.comedi_async** %7, align 8
  %27 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %27, i32 0, i32 0
  store %struct.comedi_cmd* %28, %struct.comedi_cmd** %8, align 8
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %30 = call i32 @labpc_ai_scan_mode(%struct.comedi_cmd* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MODE_MULT_CHAN_UP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %2
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  %44 = load i32, i32* %43, align 4
  br label %51

45:                                               ; preds = %2
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  br label %51

51:                                               ; preds = %45, %34
  %52 = phi i32 [ %44, %34 ], [ %50, %45 ]
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @CR_CHAN(i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @CR_RANGE(i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @CR_AREF(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %61 = call i32 @labpc_cancel(%struct.comedi_device* %59, %struct.comedi_subdevice* %60)
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TRIG_COUNT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %51
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %72 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %70, %73
  %75 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %76 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %67, %51
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TRIG_EXT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %85 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %84, i32 0, i32 7
  %86 = load %struct.comedi_8254*, %struct.comedi_8254** %85, align 8
  %87 = load i32, i32* @I8254_MODE0, align 4
  %88 = load i32, i32* @I8254_BINARY, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @comedi_8254_load(%struct.comedi_8254* %86, i32 1, i32 3, i32 %89)
  br label %99

91:                                               ; preds = %77
  %92 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %93 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %92, i32 0, i32 7
  %94 = load %struct.comedi_8254*, %struct.comedi_8254** %93, align 8
  %95 = load i32, i32* @I8254_MODE0, align 4
  %96 = load i32, i32* @I8254_BINARY, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @comedi_8254_set_mode(%struct.comedi_8254* %94, i32 1, i32 %97)
  br label %99

99:                                               ; preds = %91, %83
  %100 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %101 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %100, i32 0, i32 8
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %109 = load i32, i32* @CMDF_PRIORITY, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = load i32, i32* @isa_dma_transfer, align 4
  store i32 %114, i32* %14, align 4
  br label %143

115:                                              ; preds = %104, %99
  %116 = load %struct.labpc_boardinfo*, %struct.labpc_boardinfo** %5, align 8
  %117 = getelementptr inbounds %struct.labpc_boardinfo, %struct.labpc_boardinfo* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %115
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %125 = and i32 %123, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %120
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @TRIG_COUNT, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %138, label %133

133:                                              ; preds = %127
  %134 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %135 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp sgt i32 %136, 256
  br i1 %137, label %138, label %140

138:                                              ; preds = %133, %127
  %139 = load i32, i32* @fifo_half_full_transfer, align 4
  store i32 %139, i32* %14, align 4
  br label %142

140:                                              ; preds = %133, %120, %115
  %141 = load i32, i32* @fifo_not_empty_transfer, align 4
  store i32 %141, i32* %14, align 4
  br label %142

142:                                              ; preds = %140, %138
  br label %143

143:                                              ; preds = %142, %113
  %144 = load i32, i32* %14, align 4
  %145 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %146 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @labpc_ai_set_chan_and_gain(%struct.comedi_device* %147, i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %154 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %160 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @TRIG_EXT, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @labpc_setup_cmd6_reg(%struct.comedi_device* %153, %struct.comedi_subdevice* %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %164)
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @MODE_MULT_CHAN_UP, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %143
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @MODE_MULT_CHAN_DOWN, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %169, %143
  %174 = load i32, i32* @CMD1_SCANEN, align 4
  %175 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %176 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = call i32 @udelay(i32 1)
  %180 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %181 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %180, i32 0, i32 6
  %182 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %181, align 8
  %183 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %184 = bitcast %struct.comedi_device* %183 to %struct.comedi_device.0*
  %185 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %186 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @CMD1_REG, align 4
  %189 = call i32 %182(%struct.comedi_device.0* %184, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %173, %169
  %191 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %192 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %191, i32 0, i32 6
  %193 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %192, align 8
  %194 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %195 = bitcast %struct.comedi_device* %194 to %struct.comedi_device.0*
  %196 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %197 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @INTERVAL_COUNT_REG, align 4
  %200 = call i32 %193(%struct.comedi_device.0* %195, i32 %198, i32 %199)
  %201 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %202 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %201, i32 0, i32 6
  %203 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %202, align 8
  %204 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %205 = bitcast %struct.comedi_device* %204 to %struct.comedi_device.0*
  %206 = load i32, i32* @INTERVAL_STROBE_REG, align 4
  %207 = call i32 %203(%struct.comedi_device.0* %205, i32 1, i32 %206)
  %208 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %209 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @TRIG_TIMER, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %219, label %213

213:                                              ; preds = %190
  %214 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %215 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %214, i32 0, i32 6
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @TRIG_TIMER, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %266

219:                                              ; preds = %213, %190
  %220 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %221 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %220, i32 0, i32 1
  %222 = load %struct.comedi_8254*, %struct.comedi_8254** %221, align 8
  store %struct.comedi_8254* %222, %struct.comedi_8254** %16, align 8
  %223 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %224 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %223, i32 0, i32 7
  %225 = load %struct.comedi_8254*, %struct.comedi_8254** %224, align 8
  store %struct.comedi_8254* %225, %struct.comedi_8254** %17, align 8
  %226 = load %struct.comedi_8254*, %struct.comedi_8254** %16, align 8
  %227 = call i32 @comedi_8254_update_divisors(%struct.comedi_8254* %226)
  %228 = load %struct.comedi_8254*, %struct.comedi_8254** %16, align 8
  %229 = load %struct.comedi_8254*, %struct.comedi_8254** %16, align 8
  %230 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @I8254_MODE3, align 4
  %233 = load i32, i32* @I8254_BINARY, align 4
  %234 = or i32 %232, %233
  %235 = call i32 @comedi_8254_load(%struct.comedi_8254* %228, i32 0, i32 %231, i32 %234)
  %236 = load %struct.comedi_8254*, %struct.comedi_8254** %17, align 8
  %237 = load i32, i32* @I8254_MODE2, align 4
  %238 = load i32, i32* @I8254_BINARY, align 4
  %239 = or i32 %237, %238
  %240 = call i32 @comedi_8254_set_mode(%struct.comedi_8254* %236, i32 0, i32 %239)
  %241 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %242 = load i32, i32* %9, align 4
  %243 = call i64 @labpc_ai_convert_period(%struct.comedi_cmd* %241, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %219
  %246 = load %struct.comedi_8254*, %struct.comedi_8254** %17, align 8
  %247 = load %struct.comedi_8254*, %struct.comedi_8254** %16, align 8
  %248 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @comedi_8254_write(%struct.comedi_8254* %246, i32 0, i32 %249)
  br label %251

251:                                              ; preds = %245, %219
  %252 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %253 = load i32, i32* %9, align 4
  %254 = call i64 @labpc_ai_scan_period(%struct.comedi_cmd* %252, i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = load %struct.comedi_8254*, %struct.comedi_8254** %16, align 8
  %258 = load %struct.comedi_8254*, %struct.comedi_8254** %16, align 8
  %259 = getelementptr inbounds %struct.comedi_8254, %struct.comedi_8254* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @I8254_MODE2, align 4
  %262 = load i32, i32* @I8254_BINARY, align 4
  %263 = or i32 %261, %262
  %264 = call i32 @comedi_8254_load(%struct.comedi_8254* %257, i32 1, i32 %260, i32 %263)
  br label %265

265:                                              ; preds = %256, %251
  br label %266

266:                                              ; preds = %265, %213
  %267 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %268 = call i32 @labpc_clear_adc_fifo(%struct.comedi_device* %267)
  %269 = load i32, i32* %14, align 4
  %270 = load i32, i32* @isa_dma_transfer, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %266
  %273 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %274 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %275 = call i32 @labpc_setup_dma(%struct.comedi_device* %273, %struct.comedi_subdevice* %274)
  br label %276

276:                                              ; preds = %272, %266
  %277 = load i32, i32* @CMD3_ERRINTEN, align 4
  %278 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %279 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 4
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* @fifo_not_empty_transfer, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %291

285:                                              ; preds = %276
  %286 = load i32, i32* @CMD3_FIFOINTEN, align 4
  %287 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %288 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %285, %276
  %292 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %293 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %292, i32 0, i32 6
  %294 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %293, align 8
  %295 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %296 = bitcast %struct.comedi_device* %295 to %struct.comedi_device.0*
  %297 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %298 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @CMD3_REG, align 4
  %301 = call i32 %294(%struct.comedi_device.0* %296, i32 %299, i32 %300)
  %302 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %303 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %302, i32 0, i32 4
  store i32 0, i32* %303, align 8
  %304 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %305 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %304, i32 0, i32 5
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @TRIG_EXT, align 8
  %308 = icmp ne i64 %306, %307
  br i1 %308, label %309, label %315

309:                                              ; preds = %291
  %310 = load i32, i32* @CMD4_ECLKRCV, align 4
  %311 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %312 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 8
  %314 = or i32 %313, %310
  store i32 %314, i32* %312, align 8
  br label %315

315:                                              ; preds = %309, %291
  %316 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %317 = load i32, i32* %9, align 4
  %318 = call i32 @labpc_use_continuous_mode(%struct.comedi_cmd* %316, i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %338, label %320

320:                                              ; preds = %315
  %321 = load i32, i32* @CMD4_INTSCAN, align 4
  %322 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %323 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 8
  %325 = or i32 %324, %321
  store i32 %325, i32* %323, align 8
  %326 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %327 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %326, i32 0, i32 6
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @TRIG_EXT, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %337

331:                                              ; preds = %320
  %332 = load i32, i32* @CMD4_EOIRCV, align 4
  %333 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %334 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %331, %320
  br label %338

338:                                              ; preds = %337, %315
  %339 = load i32, i32* %13, align 4
  %340 = load i32, i32* @AREF_DIFF, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %348

342:                                              ; preds = %338
  %343 = load i32, i32* @CMD4_SEDIFF, align 4
  %344 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %345 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 8
  br label %348

348:                                              ; preds = %342, %338
  %349 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %350 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %349, i32 0, i32 6
  %351 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %350, align 8
  %352 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %353 = bitcast %struct.comedi_device* %352 to %struct.comedi_device.0*
  %354 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %355 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @CMD4_REG, align 4
  %358 = call i32 %351(%struct.comedi_device.0* %353, i32 %356, i32 %357)
  %359 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %360 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %359, i32 0, i32 0
  %361 = load i64, i64* %15, align 8
  %362 = call i32 @spin_lock_irqsave(i32* %360, i64 %361)
  %363 = load i32, i32* @CMD2_TBSEL, align 4
  %364 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %365 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %364, i32 0, i32 5
  %366 = load i32, i32* %365, align 4
  %367 = or i32 %366, %363
  store i32 %367, i32* %365, align 4
  %368 = load i32, i32* @CMD2_SWTRIG, align 4
  %369 = load i32, i32* @CMD2_HWTRIG, align 4
  %370 = or i32 %368, %369
  %371 = load i32, i32* @CMD2_PRETRIG, align 4
  %372 = or i32 %370, %371
  %373 = xor i32 %372, -1
  %374 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %375 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 4
  %377 = and i32 %376, %373
  store i32 %377, i32* %375, align 4
  %378 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %379 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %378, i32 0, i32 7
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @TRIG_EXT, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %389

383:                                              ; preds = %348
  %384 = load i32, i32* @CMD2_HWTRIG, align 4
  %385 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %386 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %385, i32 0, i32 5
  %387 = load i32, i32* %386, align 4
  %388 = or i32 %387, %384
  store i32 %388, i32* %386, align 4
  br label %395

389:                                              ; preds = %348
  %390 = load i32, i32* @CMD2_SWTRIG, align 4
  %391 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %392 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %391, i32 0, i32 5
  %393 = load i32, i32* %392, align 4
  %394 = or i32 %393, %390
  store i32 %394, i32* %392, align 4
  br label %395

395:                                              ; preds = %389, %383
  %396 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %397 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %396, i32 0, i32 2
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @TRIG_EXT, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %409

401:                                              ; preds = %395
  %402 = load i32, i32* @CMD2_HWTRIG, align 4
  %403 = load i32, i32* @CMD2_PRETRIG, align 4
  %404 = or i32 %402, %403
  %405 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %406 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %405, i32 0, i32 5
  %407 = load i32, i32* %406, align 4
  %408 = or i32 %407, %404
  store i32 %408, i32* %406, align 4
  br label %409

409:                                              ; preds = %401, %395
  %410 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %411 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %410, i32 0, i32 6
  %412 = load i32 (%struct.comedi_device.0*, i32, i32)*, i32 (%struct.comedi_device.0*, i32, i32)** %411, align 8
  %413 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %414 = bitcast %struct.comedi_device* %413 to %struct.comedi_device.0*
  %415 = load %struct.labpc_private*, %struct.labpc_private** %6, align 8
  %416 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %415, i32 0, i32 5
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @CMD2_REG, align 4
  %419 = call i32 %412(%struct.comedi_device.0* %414, i32 %417, i32 %418)
  %420 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %421 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %420, i32 0, i32 0
  %422 = load i64, i64* %15, align 8
  %423 = call i32 @spin_unlock_irqrestore(i32* %421, i64 %422)
  ret i32 0
}

declare dso_local i32 @labpc_ai_scan_mode(%struct.comedi_cmd*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @labpc_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_8254_load(%struct.comedi_8254*, i32, i32, i32) #1

declare dso_local i32 @comedi_8254_set_mode(%struct.comedi_8254*, i32, i32) #1

declare dso_local i32 @labpc_ai_set_chan_and_gain(%struct.comedi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @labpc_setup_cmd6_reg(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @comedi_8254_update_divisors(%struct.comedi_8254*) #1

declare dso_local i64 @labpc_ai_convert_period(%struct.comedi_cmd*, i32) #1

declare dso_local i32 @comedi_8254_write(%struct.comedi_8254*, i32, i32) #1

declare dso_local i64 @labpc_ai_scan_period(%struct.comedi_cmd*, i32) #1

declare dso_local i32 @labpc_clear_adc_fifo(%struct.comedi_device*) #1

declare dso_local i32 @labpc_setup_dma(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @labpc_use_continuous_mode(%struct.comedi_cmd*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
