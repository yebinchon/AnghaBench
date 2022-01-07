; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_atmio16d.c_atmio16d_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_atmio16d.c_atmio16d_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.atmio16d_private* }
%struct.atmio16d_private = type { i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32* }

@COMREG1_SCANEN = common dso_local global i32 0, align 4
@COM_REG_1 = common dso_local global i64 0, align 8
@COMREG2_SCN2 = common dso_local global i32 0, align 4
@COM_REG_2 = common dso_local global i64 0, align 8
@MUX_CNTR_REG = common dso_local global i64 0, align 8
@MUX_GAIN_REG = common dso_local global i64 0, align 8
@CLOCK_1_MHZ = common dso_local global i32 0, align 4
@CLOCK_100_KHZ = common dso_local global i32 0, align 4
@CLOCK_10_KHZ = common dso_local global i32 0, align 4
@AM9513A_COM_REG = common dso_local global i64 0, align 8
@AM9513A_DATA_REG = common dso_local global i64 0, align 8
@COMREG1_1632CNT = common dso_local global i32 0, align 4
@AD_CLEAR_REG = common dso_local global i64 0, align 8
@INT2CLR_REG = common dso_local global i64 0, align 8
@COMREG1_DAQEN = common dso_local global i32 0, align 4
@COMREG1_CONVINTEN = common dso_local global i32 0, align 4
@COMREG2_INTEN = common dso_local global i32 0, align 4
@START_DAQ_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @atmio16d_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmio16d_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.atmio16d_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.atmio16d_private*, %struct.atmio16d_private** %15, align 8
  store %struct.atmio16d_private* %16, %struct.atmio16d_private** %5, align 8
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.comedi_cmd* %20, %struct.comedi_cmd** %6, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %22 = call i32 @reset_counters(%struct.comedi_device* %21)
  %23 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %43

27:                                               ; preds = %2
  %28 = load i32, i32* @COMREG1_SCANEN, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %31 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %35 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @COM_REG_1, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outw(i32 %36, i64 %41)
  br label %72

43:                                               ; preds = %2
  %44 = load i32, i32* @COMREG1_SCANEN, align 4
  %45 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %46 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @COMREG2_SCN2, align 4
  %50 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %51 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %55 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @COM_REG_1, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outw(i32 %56, i64 %61)
  %63 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %64 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @COM_REG_2, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outw(i32 %65, i64 %70)
  br label %72

72:                                               ; preds = %43, %27
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %124, %72
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %127

79:                                               ; preds = %73
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @CR_CHAN(i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @CR_RANGE(i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MUX_CNTR_REG, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outw(i32 %96, i64 %101)
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = shl i32 %104, 6
  %106 = or i32 %103, %105
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = icmp eq i32 %107, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %79
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %114, 16
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %113, %79
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %119 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MUX_GAIN_REG, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @outw(i32 %117, i64 %122)
  br label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %73

127:                                              ; preds = %73
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %130, 65536000
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load i32, i32* @CLOCK_1_MHZ, align 4
  store i32 %133, i32* %8, align 4
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sdiv i32 %136, 1000
  store i32 %137, i32* %7, align 4
  br label %156

138:                                              ; preds = %127
  %139 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %140 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %141, 655360000
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load i32, i32* @CLOCK_100_KHZ, align 4
  store i32 %144, i32* %8, align 4
  %145 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %146 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sdiv i32 %147, 10000
  store i32 %148, i32* %7, align 4
  br label %155

149:                                              ; preds = %138
  %150 = load i32, i32* @CLOCK_10_KHZ, align 4
  store i32 %150, i32* %8, align 4
  %151 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %152 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = sdiv i32 %153, 100000
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %149, %143
  br label %156

156:                                              ; preds = %155, %132
  %157 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %158 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @AM9513A_COM_REG, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @outw(i32 65283, i64 %161)
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %165 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @AM9513A_DATA_REG, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @outw(i32 %163, i64 %168)
  %170 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %171 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @AM9513A_COM_REG, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @outw(i32 65291, i64 %174)
  %176 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %177 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @AM9513A_DATA_REG, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @outw(i32 2, i64 %180)
  %182 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %183 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @AM9513A_COM_REG, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @outw(i32 65348, i64 %186)
  %188 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %189 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @AM9513A_COM_REG, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @outw(i32 65523, i64 %192)
  %194 = load i32, i32* %7, align 4
  %195 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %196 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @AM9513A_DATA_REG, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @outw(i32 %194, i64 %199)
  %201 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %202 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @AM9513A_COM_REG, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @outw(i32 65316, i64 %205)
  %207 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %208 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %211 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = mul i32 %209, %212
  store i32 %213, i32* %9, align 4
  %214 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %215 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @AM9513A_COM_REG, align 8
  %218 = add nsw i64 %216, %217
  %219 = call i32 @outw(i32 65284, i64 %218)
  %220 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %221 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @AM9513A_DATA_REG, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @outw(i32 4133, i64 %224)
  %226 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %227 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @AM9513A_COM_REG, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @outw(i32 65292, i64 %230)
  %232 = load i32, i32* %9, align 4
  %233 = icmp ult i32 %232, 65536
  br i1 %233, label %234, label %275

234:                                              ; preds = %156
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %237 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @AM9513A_DATA_REG, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i32 @outw(i32 %235, i64 %240)
  %242 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %243 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @AM9513A_COM_REG, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i32 @outw(i32 65352, i64 %246)
  %248 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %249 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @AM9513A_COM_REG, align 8
  %252 = add nsw i64 %250, %251
  %253 = call i32 @outw(i32 65524, i64 %252)
  %254 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %255 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @AM9513A_COM_REG, align 8
  %258 = add nsw i64 %256, %257
  %259 = call i32 @outw(i32 65320, i64 %258)
  %260 = load i32, i32* @COMREG1_1632CNT, align 4
  %261 = xor i32 %260, -1
  %262 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %263 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, %261
  store i32 %265, i32* %263, align 4
  %266 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %267 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %270 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @COM_REG_1, align 8
  %273 = add nsw i64 %271, %272
  %274 = call i32 @outw(i32 %268, i64 %273)
  br label %382

275:                                              ; preds = %156
  %276 = load i32, i32* %9, align 4
  %277 = and i32 %276, 65535
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %10, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %275
  %281 = load i32, i32* %10, align 4
  %282 = sub i32 %281, 1
  %283 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %284 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @AM9513A_DATA_REG, align 8
  %287 = add nsw i64 %285, %286
  %288 = call i32 @outw(i32 %282, i64 %287)
  br label %296

289:                                              ; preds = %275
  %290 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %291 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @AM9513A_DATA_REG, align 8
  %294 = add nsw i64 %292, %293
  %295 = call i32 @outw(i32 65535, i64 %294)
  br label %296

296:                                              ; preds = %289, %280
  %297 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %298 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @AM9513A_COM_REG, align 8
  %301 = add nsw i64 %299, %300
  %302 = call i32 @outw(i32 65352, i64 %301)
  %303 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %304 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @AM9513A_DATA_REG, align 8
  %307 = add nsw i64 %305, %306
  %308 = call i32 @outw(i32 0, i64 %307)
  %309 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %310 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @AM9513A_COM_REG, align 8
  %313 = add nsw i64 %311, %312
  %314 = call i32 @outw(i32 65320, i64 %313)
  %315 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %316 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @AM9513A_COM_REG, align 8
  %319 = add nsw i64 %317, %318
  %320 = call i32 @outw(i32 65285, i64 %319)
  %321 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %322 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @AM9513A_DATA_REG, align 8
  %325 = add nsw i64 %323, %324
  %326 = call i32 @outw(i32 37, i64 %325)
  %327 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %328 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @AM9513A_COM_REG, align 8
  %331 = add nsw i64 %329, %330
  %332 = call i32 @outw(i32 65293, i64 %331)
  %333 = load i32, i32* %9, align 4
  %334 = and i32 %333, 65535
  store i32 %334, i32* %10, align 4
  %335 = load i32, i32* %10, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %296
  %338 = load i32, i32* %10, align 4
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %340, label %350

340:                                              ; preds = %337, %296
  %341 = load i32, i32* %9, align 4
  %342 = lshr i32 %341, 16
  %343 = and i32 %342, 65535
  %344 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %345 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @AM9513A_DATA_REG, align 8
  %348 = add nsw i64 %346, %347
  %349 = call i32 @outw(i32 %343, i64 %348)
  br label %361

350:                                              ; preds = %337
  %351 = load i32, i32* %9, align 4
  %352 = lshr i32 %351, 16
  %353 = and i32 %352, 65535
  %354 = add i32 %353, 1
  %355 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %356 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @AM9513A_DATA_REG, align 8
  %359 = add nsw i64 %357, %358
  %360 = call i32 @outw(i32 %354, i64 %359)
  br label %361

361:                                              ; preds = %350, %340
  %362 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %363 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @AM9513A_COM_REG, align 8
  %366 = add nsw i64 %364, %365
  %367 = call i32 @outw(i32 65392, i64 %366)
  %368 = load i32, i32* @COMREG1_1632CNT, align 4
  %369 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %370 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = or i32 %371, %368
  store i32 %372, i32* %370, align 4
  %373 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %374 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %377 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @COM_REG_1, align 8
  %380 = add nsw i64 %378, %379
  %381 = call i32 @outw(i32 %375, i64 %380)
  br label %382

382:                                              ; preds = %361, %234
  %383 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %384 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = icmp sgt i32 %385, 1
  br i1 %386, label %387, label %467

387:                                              ; preds = %382
  %388 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %389 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 8
  %391 = icmp slt i32 %390, 65536000
  br i1 %391, label %392, label %398

392:                                              ; preds = %387
  %393 = load i32, i32* @CLOCK_1_MHZ, align 4
  store i32 %393, i32* %8, align 4
  %394 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %395 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = sdiv i32 %396, 1000
  store i32 %397, i32* %7, align 4
  br label %416

398:                                              ; preds = %387
  %399 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %400 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %399, i32 0, i32 4
  %401 = load i32, i32* %400, align 8
  %402 = icmp slt i32 %401, 655360000
  br i1 %402, label %403, label %409

403:                                              ; preds = %398
  %404 = load i32, i32* @CLOCK_100_KHZ, align 4
  store i32 %404, i32* %8, align 4
  %405 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %406 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %405, i32 0, i32 4
  %407 = load i32, i32* %406, align 8
  %408 = sdiv i32 %407, 10000
  store i32 %408, i32* %7, align 4
  br label %415

409:                                              ; preds = %398
  %410 = load i32, i32* @CLOCK_10_KHZ, align 4
  store i32 %410, i32* %8, align 4
  %411 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %412 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %411, i32 0, i32 4
  %413 = load i32, i32* %412, align 8
  %414 = sdiv i32 %413, 100000
  store i32 %414, i32* %7, align 4
  br label %415

415:                                              ; preds = %409, %403
  br label %416

416:                                              ; preds = %415, %392
  %417 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %418 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = load i64, i64* @AM9513A_COM_REG, align 8
  %421 = add nsw i64 %419, %420
  %422 = call i32 @outw(i32 65282, i64 %421)
  %423 = load i32, i32* %8, align 4
  %424 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %425 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* @AM9513A_DATA_REG, align 8
  %428 = add nsw i64 %426, %427
  %429 = call i32 @outw(i32 %423, i64 %428)
  %430 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %431 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = load i64, i64* @AM9513A_COM_REG, align 8
  %434 = add nsw i64 %432, %433
  %435 = call i32 @outw(i32 65290, i64 %434)
  %436 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %437 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @AM9513A_DATA_REG, align 8
  %440 = add nsw i64 %438, %439
  %441 = call i32 @outw(i32 2, i64 %440)
  %442 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %443 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @AM9513A_COM_REG, align 8
  %446 = add nsw i64 %444, %445
  %447 = call i32 @outw(i32 65346, i64 %446)
  %448 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %449 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = load i64, i64* @AM9513A_COM_REG, align 8
  %452 = add nsw i64 %450, %451
  %453 = call i32 @outw(i32 65522, i64 %452)
  %454 = load i32, i32* %7, align 4
  %455 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %456 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = load i64, i64* @AM9513A_DATA_REG, align 8
  %459 = add nsw i64 %457, %458
  %460 = call i32 @outw(i32 %454, i64 %459)
  %461 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %462 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %461, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = load i64, i64* @AM9513A_COM_REG, align 8
  %465 = add nsw i64 %463, %464
  %466 = call i32 @outw(i32 65314, i64 %465)
  br label %467

467:                                              ; preds = %416, %382
  %468 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %469 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = load i64, i64* @AD_CLEAR_REG, align 8
  %472 = add nsw i64 %470, %471
  %473 = call i32 @outw(i32 0, i64 %472)
  %474 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %475 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @MUX_CNTR_REG, align 8
  %478 = add nsw i64 %476, %477
  %479 = call i32 @outw(i32 0, i64 %478)
  %480 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %481 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %480, i32 0, i32 0
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @INT2CLR_REG, align 8
  %484 = add nsw i64 %482, %483
  %485 = call i32 @outw(i32 0, i64 %484)
  %486 = load i32, i32* @COMREG1_DAQEN, align 4
  %487 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %488 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  %490 = or i32 %489, %486
  store i32 %490, i32* %488, align 4
  %491 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %492 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %495 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* @COM_REG_1, align 8
  %498 = add nsw i64 %496, %497
  %499 = call i32 @outw(i32 %493, i64 %498)
  %500 = load i32, i32* @COMREG1_CONVINTEN, align 4
  %501 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %502 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = or i32 %503, %500
  store i32 %504, i32* %502, align 4
  %505 = load i32, i32* @COMREG2_INTEN, align 4
  %506 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %507 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = or i32 %508, %505
  store i32 %509, i32* %507, align 4
  %510 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %511 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %514 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = load i64, i64* @COM_REG_1, align 8
  %517 = add nsw i64 %515, %516
  %518 = call i32 @outw(i32 %512, i64 %517)
  %519 = load %struct.atmio16d_private*, %struct.atmio16d_private** %5, align 8
  %520 = getelementptr inbounds %struct.atmio16d_private, %struct.atmio16d_private* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %523 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = load i64, i64* @COM_REG_2, align 8
  %526 = add nsw i64 %524, %525
  %527 = call i32 @outw(i32 %521, i64 %526)
  %528 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %529 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = load i64, i64* @START_DAQ_REG, align 8
  %532 = add nsw i64 %530, %531
  %533 = call i32 @outw(i32 0, i64 %532)
  ret i32 0
}

declare dso_local i32 @reset_counters(%struct.comedi_device*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
