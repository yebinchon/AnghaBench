; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_serial_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_serial_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i32, i32, i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NISTC_DIO_CTRL_HW_SER_ENA = common dso_local global i32 0, align 4
@SERIAL_DISABLED = common dso_local global i32 0, align 4
@NISTC_DIO_SDCLK = common dso_local global i32 0, align 4
@SERIAL_600NS = common dso_local global i32 0, align 4
@NISTC_DIO_CTRL_HW_SER_TIMEBASE = common dso_local global i32 0, align 4
@NISTC_CLK_FOUT_SLOW_TIMEBASE = common dso_local global i32 0, align 4
@NISTC_CLK_FOUT_DIO_SER_OUT_DIV2 = common dso_local global i32 0, align 4
@SERIAL_1_2US = common dso_local global i32 0, align 4
@SERIAL_10US = common dso_local global i32 0, align 4
@NISTC_DIO_CTRL_REG = common dso_local global i32 0, align 4
@NISTC_CLK_FOUT_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"serial disabled!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_serial_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_serial_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ni_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.ni_private*, %struct.ni_private** %16, align 8
  store %struct.ni_private* %17, %struct.ni_private** %10, align 8
  %18 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %19 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  store i8 0, i8* %14, align 1
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %25 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %246

31:                                               ; preds = %4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %243 [
    i32 128, label %35
    i32 129, label %188
  ]

35:                                               ; preds = %31
  %36 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %37 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* @NISTC_DIO_CTRL_HW_SER_ENA, align 4
  %39 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %40 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SERIAL_DISABLED, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %35
  %49 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %50 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* @NISTC_DIO_CTRL_HW_SER_ENA, align 4
  %52 = load i32, i32* @NISTC_DIO_SDCLK, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %56 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @SERIAL_DISABLED, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %66 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %172

67:                                               ; preds = %35
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SERIAL_600NS, align 4
  %72 = icmp ule i32 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %67
  %74 = load i32, i32* @NISTC_DIO_CTRL_HW_SER_TIMEBASE, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %77 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @NISTC_CLK_FOUT_SLOW_TIMEBASE, align 4
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* @NISTC_CLK_FOUT_DIO_SER_OUT_DIV2, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* @SERIAL_600NS, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %94 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  br label %171

95:                                               ; preds = %67
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @SERIAL_1_2US, align 4
  %100 = icmp ule i32 %98, %99
  br i1 %100, label %101, label %121

101:                                              ; preds = %95
  %102 = load i32, i32* @NISTC_DIO_CTRL_HW_SER_TIMEBASE, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %105 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* @NISTC_CLK_FOUT_SLOW_TIMEBASE, align 4
  %109 = load i32, i32* @NISTC_CLK_FOUT_DIO_SER_OUT_DIV2, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* @SERIAL_1_2US, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 %113, i32* %115, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %120 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  br label %170

121:                                              ; preds = %95
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @SERIAL_10US, align 4
  %126 = icmp ule i32 %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %121
  %128 = load i32, i32* @NISTC_DIO_CTRL_HW_SER_TIMEBASE, align 4
  %129 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %130 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* @NISTC_CLK_FOUT_SLOW_TIMEBASE, align 4
  %134 = load i32, i32* @NISTC_CLK_FOUT_DIO_SER_OUT_DIV2, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %11, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* @SERIAL_10US, align 4
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 %138, i32* %140, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %145 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  br label %169

146:                                              ; preds = %121
  %147 = load i32, i32* @NISTC_DIO_CTRL_HW_SER_ENA, align 4
  %148 = load i32, i32* @NISTC_DIO_SDCLK, align 4
  %149 = or i32 %147, %148
  %150 = xor i32 %149, -1
  %151 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %152 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %156 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %155, i32 0, i32 1
  store i32 0, i32* %156, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = udiv i32 %159, 1000
  %161 = mul i32 %160, 1000
  %162 = load i32*, i32** %9, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 %161, i32* %163, align 4
  %164 = load i32*, i32** %9, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %168 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %146, %127
  br label %170

170:                                              ; preds = %169, %101
  br label %171

171:                                              ; preds = %170, %73
  br label %172

172:                                              ; preds = %171, %48
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %175 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %177 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %178 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @NISTC_DIO_CTRL_REG, align 4
  %181 = call i32 @ni_stc_writew(%struct.comedi_device* %176, i32 %179, i32 %180)
  %182 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %183 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %184 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @NISTC_CLK_FOUT_REG, align 4
  %187 = call i32 @ni_stc_writew(%struct.comedi_device* %182, i32 %185, i32 %186)
  store i32 1, i32* %5, align 4
  br label %246

188:                                              ; preds = %31
  %189 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %190 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %5, align 4
  br label %246

196:                                              ; preds = %188
  %197 = load i32*, i32** %9, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 255
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %13, align 1
  %202 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %203 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %196
  %207 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %208 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %209 = load i8, i8* %13, align 1
  %210 = call i32 @ni_serial_hw_readwrite8(%struct.comedi_device* %207, %struct.comedi_subdevice* %208, i8 zeroext %209, i8* %14)
  store i32 %210, i32* %12, align 4
  br label %229

211:                                              ; preds = %196
  %212 = load %struct.ni_private*, %struct.ni_private** %10, align 8
  %213 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = icmp ugt i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %218 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %219 = load i8, i8* %13, align 1
  %220 = call i32 @ni_serial_sw_readwrite8(%struct.comedi_device* %217, %struct.comedi_subdevice* %218, i8 zeroext %219, i8* %14)
  store i32 %220, i32* %12, align 4
  br label %228

221:                                              ; preds = %211
  %222 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %223 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @dev_err(i32 %224, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %5, align 4
  br label %246

228:                                              ; preds = %216
  br label %229

229:                                              ; preds = %228, %206
  %230 = load i32, i32* %12, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = load i32, i32* %12, align 4
  store i32 %233, i32* %5, align 4
  br label %246

234:                                              ; preds = %229
  %235 = load i8, i8* %14, align 1
  %236 = zext i8 %235 to i32
  %237 = and i32 %236, 255
  %238 = load i32*, i32** %9, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  store i32 %237, i32* %239, align 4
  %240 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %241 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %5, align 4
  br label %246

243:                                              ; preds = %31
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %5, align 4
  br label %246

246:                                              ; preds = %243, %234, %232, %221, %193, %172, %28
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_serial_hw_readwrite8(%struct.comedi_device*, %struct.comedi_subdevice*, i8 zeroext, i8*) #1

declare dso_local i32 @ni_serial_sw_readwrite8(%struct.comedi_device*, %struct.comedi_subdevice*, i8 zeroext, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
