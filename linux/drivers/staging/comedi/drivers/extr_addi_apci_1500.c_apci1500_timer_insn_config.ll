; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1500.c_apci1500_timer_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_1500.c_apci1500_timer_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.apci1500_private* }
%struct.apci1500_private = type { i32, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@Z8536_CT_CMDSTAT_GCB = common dso_local global i32 0, align 4
@Z8536_CT_STAT_CIP = common dso_local global i32 0, align 4
@COMEDI_COUNTER_COUNTING = common dso_local global i32 0, align 4
@COMEDI_COUNTER_ARMED = common dso_local global i32 0, align 4
@Z8536_STAT_IP = common dso_local global i32 0, align 4
@COMEDI_COUNTER_TERMINAL_COUNT = common dso_local global i32 0, align 4
@Z8536_CT_MODE_ECE = common dso_local global i32 0, align 4
@Z8536_CT_MODE_DCS_ONESHOT = common dso_local global i32 0, align 4
@Z8536_CT_MODE_ETE = common dso_local global i32 0, align 4
@Z8536_CT_MODE_CSC = common dso_local global i32 0, align 4
@Z8536_CT_MODE_DCS_PULSE = common dso_local global i32 0, align 4
@Z8536_CT_MODE_DCS_SQRWAVE = common dso_local global i32 0, align 4
@Z8536_CT_MODE_REB = common dso_local global i32 0, align 4
@Z8536_CT_MODE_EOE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@APCI1500_CLK_SEL_REG = common dso_local global i64 0, align 8
@Z8536_CT_MODE_EGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci1500_timer_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci1500_timer_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.apci1500_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.apci1500_private*, %struct.apci1500_private** %14, align 8
  store %struct.apci1500_private* %15, %struct.apci1500_private** %10, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %249 [
    i32 135, label %23
    i32 134, label %52
    i32 132, label %56
    i32 129, label %107
    i32 130, label %151
    i32 133, label %182
    i32 128, label %205
    i32 131, label %242
  ]

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %26, %29
  store i32 %30, i32* %12, align 4
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, 255
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @Z8536_CT_RELOAD_LSB_REG(i32 %34)
  %36 = call i32 @z8536_write(%struct.comedi_device* %31, i32 %33, i32 %35)
  %37 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %38 = load i32, i32* %12, align 4
  %39 = lshr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @Z8536_CT_RELOAD_MSB_REG(i32 %41)
  %43 = call i32 @z8536_write(%struct.comedi_device* %37, i32 %40, i32 %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @apci1500_timer_enable(%struct.comedi_device* %44, i32 %45, i32 1)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %48 = load i32, i32* @Z8536_CT_CMDSTAT_GCB, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @Z8536_CT_CMDSTAT_REG(i32 %49)
  %51 = call i32 @z8536_write(%struct.comedi_device* %47, i32 %48, i32 %50)
  br label %252

52:                                               ; preds = %4
  %53 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @apci1500_timer_enable(%struct.comedi_device* %53, i32 %54, i32 0)
  br label %252

56:                                               ; preds = %4
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @Z8536_CT_CMDSTAT_REG(i32 %60)
  %62 = call i32 @z8536_read(%struct.comedi_device* %59, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @Z8536_CT_STAT_CIP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = load i32, i32* @COMEDI_COUNTER_COUNTING, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %56
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @Z8536_CT_CMDSTAT_GCB, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* @COMEDI_COUNTER_ARMED, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @Z8536_STAT_IP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i32, i32* @COMEDI_COUNTER_TERMINAL_COUNT, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @Z8536_CT_CMDSTAT_REG(i32 %96)
  %98 = call i32 @apci1500_ack_irq(%struct.comedi_device* %95, i32 %97)
  br label %99

99:                                               ; preds = %89, %84
  %100 = load i32, i32* @COMEDI_COUNTER_ARMED, align 4
  %101 = load i32, i32* @COMEDI_COUNTER_COUNTING, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @COMEDI_COUNTER_TERMINAL_COUNT, align 4
  %104 = or i32 %102, %103
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 %104, i32* %106, align 4
  br label %252

107:                                              ; preds = %4
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %139 [
    i32 141, label %111
    i32 140, label %115
    i32 139, label %119
    i32 138, label %123
    i32 137, label %127
    i32 136, label %131
  ]

111:                                              ; preds = %107
  %112 = load i32, i32* @Z8536_CT_MODE_ECE, align 4
  %113 = load i32, i32* @Z8536_CT_MODE_DCS_ONESHOT, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* %12, align 4
  br label %142

115:                                              ; preds = %107
  %116 = load i32, i32* @Z8536_CT_MODE_ETE, align 4
  %117 = load i32, i32* @Z8536_CT_MODE_DCS_ONESHOT, align 4
  %118 = or i32 %116, %117
  store i32 %118, i32* %12, align 4
  br label %142

119:                                              ; preds = %107
  %120 = load i32, i32* @Z8536_CT_MODE_CSC, align 4
  %121 = load i32, i32* @Z8536_CT_MODE_DCS_PULSE, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %12, align 4
  br label %142

123:                                              ; preds = %107
  %124 = load i32, i32* @Z8536_CT_MODE_CSC, align 4
  %125 = load i32, i32* @Z8536_CT_MODE_DCS_SQRWAVE, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %12, align 4
  br label %142

127:                                              ; preds = %107
  %128 = load i32, i32* @Z8536_CT_MODE_REB, align 4
  %129 = load i32, i32* @Z8536_CT_MODE_DCS_PULSE, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %12, align 4
  br label %142

131:                                              ; preds = %107
  %132 = load i32, i32* @Z8536_CT_MODE_EOE, align 4
  %133 = load i32, i32* @Z8536_CT_MODE_ETE, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @Z8536_CT_MODE_REB, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @Z8536_CT_MODE_DCS_PULSE, align 4
  %138 = or i32 %136, %137
  store i32 %138, i32* %12, align 4
  br label %142

139:                                              ; preds = %107
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %5, align 4
  br label %256

142:                                              ; preds = %131, %127, %123, %119, %115, %111
  %143 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @apci1500_timer_enable(%struct.comedi_device* %143, i32 %144, i32 0)
  %146 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @Z8536_CT_MODE_REG(i32 %148)
  %150 = call i32 @z8536_write(%struct.comedi_device* %146, i32 %147, i32 %149)
  br label %252

151:                                              ; preds = %4
  %152 = load i32*, i32** %9, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ugt i32 %154, 2
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %5, align 4
  br label %256

159:                                              ; preds = %151
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.apci1500_private*, %struct.apci1500_private** %10, align 8
  %164 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.apci1500_private*, %struct.apci1500_private** %10, align 8
  %166 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %172

169:                                              ; preds = %159
  %170 = load %struct.apci1500_private*, %struct.apci1500_private** %10, align 8
  %171 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %170, i32 0, i32 0
  store i32 3, i32* %171, align 8
  br label %172

172:                                              ; preds = %169, %159
  %173 = load %struct.apci1500_private*, %struct.apci1500_private** %10, align 8
  %174 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.apci1500_private*, %struct.apci1500_private** %10, align 8
  %177 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @APCI1500_CLK_SEL_REG, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @outw(i32 %175, i64 %180)
  br label %252

182:                                              ; preds = %4
  %183 = load %struct.apci1500_private*, %struct.apci1500_private** %10, align 8
  %184 = getelementptr inbounds %struct.apci1500_private, %struct.apci1500_private* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  switch i32 %185, label %201 [
    i32 0, label %186
    i32 1, label %191
    i32 3, label %196
  ]

186:                                              ; preds = %182
  %187 = load i32*, i32** %9, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  store i32 0, i32* %188, align 4
  %189 = load i32*, i32** %9, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  store i32 17879, i32* %190, align 4
  br label %204

191:                                              ; preds = %182
  %192 = load i32*, i32** %9, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  store i32 1, i32* %193, align 4
  %194 = load i32*, i32** %9, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  store i32 573066, i32* %195, align 4
  br label %204

196:                                              ; preds = %182
  %197 = load i32*, i32** %9, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 2, i32* %198, align 4
  %199 = load i32*, i32** %9, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  store i32 1164822, i32* %200, align 4
  br label %204

201:                                              ; preds = %182
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %5, align 4
  br label %256

204:                                              ; preds = %196, %191, %186
  br label %252

205:                                              ; preds = %4
  %206 = load i32, i32* %11, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %5, align 4
  br label %256

211:                                              ; preds = %205
  %212 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @Z8536_CT_MODE_REG(i32 %213)
  %215 = call i32 @z8536_read(%struct.comedi_device* %212, i32 %214)
  store i32 %215, i32* %12, align 4
  %216 = load i32, i32* @Z8536_CT_MODE_EGE, align 4
  %217 = load i32, i32* %12, align 4
  %218 = and i32 %217, %216
  store i32 %218, i32* %12, align 4
  %219 = load i32*, i32** %9, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %227

223:                                              ; preds = %211
  %224 = load i32, i32* @Z8536_CT_MODE_EGE, align 4
  %225 = load i32, i32* %12, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %12, align 4
  br label %236

227:                                              ; preds = %211
  %228 = load i32*, i32** %9, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp ugt i32 %230, 1
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load i32, i32* @EINVAL, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %5, align 4
  br label %256

235:                                              ; preds = %227
  br label %236

236:                                              ; preds = %235, %223
  %237 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %11, align 4
  %240 = call i32 @Z8536_CT_MODE_REG(i32 %239)
  %241 = call i32 @z8536_write(%struct.comedi_device* %237, i32 %238, i32 %240)
  br label %252

242:                                              ; preds = %4
  %243 = load i32, i32* %11, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i32, i32* @EINVAL, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %5, align 4
  br label %256

248:                                              ; preds = %242
  br label %252

249:                                              ; preds = %4
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %5, align 4
  br label %256

252:                                              ; preds = %248, %236, %204, %172, %142, %99, %52, %23
  %253 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %254 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %5, align 4
  br label %256

256:                                              ; preds = %252, %249, %245, %232, %208, %201, %156, %139
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @z8536_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @Z8536_CT_RELOAD_LSB_REG(i32) #1

declare dso_local i32 @Z8536_CT_RELOAD_MSB_REG(i32) #1

declare dso_local i32 @apci1500_timer_enable(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @Z8536_CT_CMDSTAT_REG(i32) #1

declare dso_local i32 @z8536_read(%struct.comedi_device*, i32) #1

declare dso_local i32 @apci1500_ack_irq(%struct.comedi_device*, i32) #1

declare dso_local i32 @Z8536_CT_MODE_REG(i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
