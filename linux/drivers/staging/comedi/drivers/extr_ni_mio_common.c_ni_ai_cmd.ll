; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, %struct.ni_private* }
%struct.ni_private = type { i32, i32, i32, i32, i64, i64 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"cannot run command without an irq\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NISTC_RESET_AI_CFG_START = common dso_local global i32 0, align 4
@NISTC_RESET_REG = common dso_local global i32 0, align 4
@NISTC_ATRIG_ETC_ENA = common dso_local global i32 0, align 4
@NISTC_ATRIG_ETC_REG = common dso_local global i32 0, align 4
@NISTC_AI_TRIG_START1_SYNC = common dso_local global i32 0, align 4
@NISTC_AI_TRIG_START1_EDGE = common dso_local global i32 0, align 4
@NI_AI_StartTrigger = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@NISTC_AI_TRIG_START1_POLARITY = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@NISTC_AI_TRIG_SEL_REG = common dso_local global i32 0, align 4
@NISTC_AI_MODE2_PRE_TRIGGER = common dso_local global i32 0, align 4
@NISTC_AI_MODE2_SC_INIT_LOAD_SRC = common dso_local global i32 0, align 4
@NISTC_AI_MODE2_SC_RELOAD_MODE = common dso_local global i32 0, align 4
@NISTC_AI_MODE2_REG = common dso_local global i32 0, align 4
@NISTC_AI_STOP_POLARITY = common dso_local global i32 0, align 4
@NISTC_AI_STOP_SYNC = common dso_local global i32 0, align 4
@NISTC_AI_START_STOP_REG = common dso_local global i32 0, align 4
@num_adc_stages_611x = common dso_local global i32 0, align 4
@NISTC_AI_SC_LOADA_REG = common dso_local global i32 0, align 4
@NISTC_AI_MODE1_START_STOP = common dso_local global i32 0, align 4
@NISTC_AI_MODE1_RSVD = common dso_local global i32 0, align 4
@NISTC_AI_MODE1_TRIGGER_ONCE = common dso_local global i32 0, align 4
@NISTC_AI_MODE1_REG = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_SC_LOAD = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_REG = common dso_local global i32 0, align 4
@NISTC_AI_CMD2_END_ON_EOS = common dso_local global i32 0, align 4
@NISTC_INTA_ENA_AI_STOP = common dso_local global i32 0, align 4
@NISTC_AI_STOP_EDGE = common dso_local global i32 0, align 4
@NISTC_AI_MODE1_CONTINUOUS = common dso_local global i32 0, align 4
@NISTC_AI_START_EDGE = common dso_local global i32 0, align 4
@NISTC_AI_START_SYNC = common dso_local global i32 0, align 4
@NISTC_AI_MODE2_SI_INIT_LOAD_SRC = common dso_local global i32 0, align 4
@CMDF_ROUND_NEAREST = common dso_local global i32 0, align 4
@NISTC_AI_SI_LOADA_REG = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_SI_LOAD = common dso_local global i32 0, align 4
@NISTC_AI_START_POLARITY = common dso_local global i32 0, align 4
@NI_AI_SampleClock = common dso_local global i32 0, align 4
@NISTC_AI_SI2_LOADA_REG = common dso_local global i32 0, align 4
@NISTC_AI_SI2_LOADB_REG = common dso_local global i32 0, align 4
@NISTC_AI_MODE2_SI2_INIT_LOAD_SRC = common dso_local global i32 0, align 4
@NISTC_AI_MODE2_SI2_RELOAD_MODE = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_SI2_LOAD = common dso_local global i32 0, align 4
@NI_AI_ConvertClock = common dso_local global i32 0, align 4
@NISTC_AI_MODE1_CONVERT_POLARITY = common dso_local global i32 0, align 4
@NISTC_AI_MODE2_SC_GATE_ENA = common dso_local global i32 0, align 4
@NISTC_AI_MODE2_START_STOP_GATE_ENA = common dso_local global i32 0, align 4
@NISTC_INTA_ENA_AI_ERR = common dso_local global i32 0, align 4
@NISTC_INTA_ENA_AI_SC_TC = common dso_local global i32 0, align 4
@NISTC_INTA_ENA_AI_FIFO = common dso_local global i32 0, align 4
@CMDF_WAKE_EOS = common dso_local global i32 0, align 4
@NISTC_AI_MODE3_FIFO_MODE_HF = common dso_local global i32 0, align 4
@NISTC_AI_MODE3_REG = common dso_local global i32 0, align 4
@NISTC_AI_MODE3_FIFO_MODE_NE = common dso_local global i32 0, align 4
@NISTC_INTA_ACK_AI_ALL = common dso_local global i32 0, align 4
@NISTC_INTA_ACK_REG = common dso_local global i32 0, align 4
@NISTC_INTA_ENA_REG = common dso_local global i32 0, align 4
@NISTC_RESET_AI_CFG_END = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_SI2_ARM = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_SI_ARM = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_DIV_ARM = common dso_local global i32 0, align 4
@NISTC_AI_CMD1_SC_ARM = common dso_local global i32 0, align 4
@NISTC_AI_CMD2_START1_PULSE = common dso_local global i32 0, align 4
@NISTC_AI_CMD2_REG = common dso_local global i32 0, align 4
@ni_ai_inttrig = common dso_local global i32* null, align 8
@NISTC_AI_MODE3_FIFO_MODE_HF_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.ni_private*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 2
  %17 = load %struct.ni_private*, %struct.ni_private** %16, align 8
  store %struct.ni_private* %17, %struct.ni_private** %6, align 8
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store %struct.comedi_cmd* %21, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %568

33:                                               ; preds = %2
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = call i32 @ni_clear_ai_fifo(%struct.comedi_device* %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ni_load_channelgain_list(%struct.comedi_device* %36, %struct.comedi_subdevice* %37, i32 %40, i32 %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = load i32, i32* @NISTC_RESET_AI_CFG_START, align 4
  %47 = load i32, i32* @NISTC_RESET_REG, align 4
  %48 = call i32 @ni_stc_writew(%struct.comedi_device* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @NISTC_ATRIG_ETC_ENA, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %52 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %56 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %57 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NISTC_ATRIG_ETC_REG, align 4
  %60 = call i32 @ni_stc_writew(%struct.comedi_device* %55, i32 %58, i32 %59)
  %61 = call i32 @NISTC_AI_TRIG_START2_SEL(i32 0)
  %62 = load i32, i32* @NISTC_AI_TRIG_START1_SYNC, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %14, align 4
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %107 [
    i32 131, label %67
    i32 129, label %67
    i32 132, label %73
  ]

67:                                               ; preds = %33, %33
  %68 = load i32, i32* @NISTC_AI_TRIG_START1_EDGE, align 4
  %69 = call i32 @NISTC_AI_TRIG_START1_SEL(i32 0)
  %70 = or i32 %68, %69
  %71 = load i32, i32* %14, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %14, align 4
  br label %107

73:                                               ; preds = %33
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @CR_CHAN(i32 %76)
  %78 = load i32, i32* @NI_AI_StartTrigger, align 4
  %79 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %80 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %79, i32 0, i32 3
  %81 = call i32 @ni_get_reg_value_roffs(i32 %77, i32 %78, i32* %80, i32 1)
  %82 = call i32 @NISTC_AI_TRIG_START1_SEL(i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %14, align 4
  %85 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CR_INVERT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %73
  %92 = load i32, i32* @NISTC_AI_TRIG_START1_POLARITY, align 4
  %93 = load i32, i32* %14, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %91, %73
  %96 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %97 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @CR_EDGE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32, i32* @NISTC_AI_TRIG_START1_EDGE, align 4
  %104 = load i32, i32* %14, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %102, %95
  br label %107

107:                                              ; preds = %33, %106, %67
  %108 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @NISTC_AI_TRIG_SEL_REG, align 4
  %111 = call i32 @ni_stc_writew(%struct.comedi_device* %108, i32 %109, i32 %110)
  %112 = load i32, i32* @NISTC_AI_MODE2_PRE_TRIGGER, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %10, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* @NISTC_AI_MODE2_SC_INIT_LOAD_SRC, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* @NISTC_AI_MODE2_SC_RELOAD_MODE, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %10, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %10, align 4
  %124 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @NISTC_AI_MODE2_REG, align 4
  %127 = call i32 @ni_stc_writew(%struct.comedi_device* %124, i32 %125, i32 %126)
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %142, label %132

132:                                              ; preds = %107
  %133 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %134 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %139 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137, %132, %107
  %143 = load i32, i32* @NISTC_AI_STOP_POLARITY, align 4
  %144 = call i32 @NISTC_AI_STOP_SEL(i32 31)
  %145 = or i32 %143, %144
  %146 = load i32, i32* @NISTC_AI_STOP_SYNC, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* %11, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %11, align 4
  br label %154

150:                                              ; preds = %137
  %151 = call i32 @NISTC_AI_STOP_SEL(i32 19)
  %152 = load i32, i32* %11, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %150, %142
  %155 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @NISTC_AI_START_STOP_REG, align 4
  %158 = call i32 @ni_stc_writew(%struct.comedi_device* %155, i32 %156, i32 %157)
  %159 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %160 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %159, i32 0, i32 1
  store i32 0, i32* %160, align 4
  %161 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %162 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  switch i32 %163, label %239 [
    i32 133, label %164
    i32 130, label %220
  ]

164:                                              ; preds = %154
  %165 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %166 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  %169 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %170 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %164
  %174 = load i32, i32* @num_adc_stages_611x, align 4
  %175 = load i32, i32* %12, align 4
  %176 = add i32 %175, %174
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %173, %164
  %178 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @NISTC_AI_SC_LOADA_REG, align 4
  %181 = call i32 @ni_stc_writel(%struct.comedi_device* %178, i32 %179, i32 %180)
  %182 = load i32, i32* @NISTC_AI_MODE1_START_STOP, align 4
  %183 = load i32, i32* @NISTC_AI_MODE1_RSVD, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @NISTC_AI_MODE1_TRIGGER_ONCE, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* %9, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %9, align 4
  %189 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @NISTC_AI_MODE1_REG, align 4
  %192 = call i32 @ni_stc_writew(%struct.comedi_device* %189, i32 %190, i32 %191)
  %193 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %194 = load i32, i32* @NISTC_AI_CMD1_SC_LOAD, align 4
  %195 = load i32, i32* @NISTC_AI_CMD1_REG, align 4
  %196 = call i32 @ni_stc_writew(%struct.comedi_device* %193, i32 %194, i32 %195)
  %197 = load i32, i32* %12, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %219

199:                                              ; preds = %177
  %200 = load i32, i32* @NISTC_AI_CMD2_END_ON_EOS, align 4
  %201 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %202 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  %205 = load i32, i32* @NISTC_INTA_ENA_AI_STOP, align 4
  %206 = load i32, i32* %13, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %13, align 4
  %208 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %209 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp sgt i32 %210, 1
  br i1 %211, label %212, label %218

212:                                              ; preds = %199
  %213 = load i32, i32* @NISTC_AI_STOP_POLARITY, align 4
  %214 = load i32, i32* @NISTC_AI_STOP_EDGE, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* %11, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %11, align 4
  br label %218

218:                                              ; preds = %212, %199
  br label %219

219:                                              ; preds = %218, %177
  br label %239

220:                                              ; preds = %154
  %221 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %222 = load i32, i32* @NISTC_AI_SC_LOADA_REG, align 4
  %223 = call i32 @ni_stc_writel(%struct.comedi_device* %221, i32 0, i32 %222)
  %224 = load i32, i32* @NISTC_AI_MODE1_START_STOP, align 4
  %225 = load i32, i32* @NISTC_AI_MODE1_RSVD, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* @NISTC_AI_MODE1_CONTINUOUS, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* %9, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %9, align 4
  %231 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* @NISTC_AI_MODE1_REG, align 4
  %234 = call i32 @ni_stc_writew(%struct.comedi_device* %231, i32 %232, i32 %233)
  %235 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %236 = load i32, i32* @NISTC_AI_CMD1_SC_LOAD, align 4
  %237 = load i32, i32* @NISTC_AI_CMD1_REG, align 4
  %238 = call i32 @ni_stc_writew(%struct.comedi_device* %235, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %154, %220, %219
  %240 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %241 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  switch i32 %242, label %342 [
    i32 128, label %243
    i32 132, label %278
  ]

243:                                              ; preds = %239
  %244 = load i32, i32* @NISTC_AI_START_EDGE, align 4
  %245 = load i32, i32* @NISTC_AI_START_SYNC, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* %11, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %11, align 4
  %249 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* @NISTC_AI_START_STOP_REG, align 4
  %252 = call i32 @ni_stc_writew(%struct.comedi_device* %249, i32 %250, i32 %251)
  %253 = load i32, i32* @NISTC_AI_MODE2_SI_INIT_LOAD_SRC, align 4
  %254 = xor i32 %253, -1
  %255 = load i32, i32* %10, align 4
  %256 = and i32 %255, %254
  store i32 %256, i32* %10, align 4
  %257 = call i32 @NISTC_AI_MODE2_SI_RELOAD_MODE(i32 0)
  %258 = load i32, i32* %10, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %10, align 4
  %260 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* @NISTC_AI_MODE2_REG, align 4
  %263 = call i32 @ni_stc_writew(%struct.comedi_device* %260, i32 %261, i32 %262)
  %264 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %265 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %266 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @CMDF_ROUND_NEAREST, align 4
  %269 = call i32 @ni_ns_to_timer(%struct.comedi_device* %264, i32 %267, i32 %268)
  store i32 %269, i32* %8, align 4
  %270 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %271 = load i32, i32* %8, align 4
  %272 = load i32, i32* @NISTC_AI_SI_LOADA_REG, align 4
  %273 = call i32 @ni_stc_writel(%struct.comedi_device* %270, i32 %271, i32 %272)
  %274 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %275 = load i32, i32* @NISTC_AI_CMD1_SI_LOAD, align 4
  %276 = load i32, i32* @NISTC_AI_CMD1_REG, align 4
  %277 = call i32 @ni_stc_writew(%struct.comedi_device* %274, i32 %275, i32 %276)
  br label %342

278:                                              ; preds = %239
  %279 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %280 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %279, i32 0, i32 5
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @CR_EDGE, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %278
  %286 = load i32, i32* @NISTC_AI_START_EDGE, align 4
  %287 = load i32, i32* %11, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %11, align 4
  br label %289

289:                                              ; preds = %285, %278
  %290 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %291 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @CR_INVERT, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %289
  %297 = load i32, i32* @NISTC_AI_START_POLARITY, align 4
  %298 = load i32, i32* %11, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %11, align 4
  br label %300

300:                                              ; preds = %296, %289
  %301 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %302 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %305 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %303, %306
  br i1 %307, label %322, label %308

308:                                              ; preds = %300
  %309 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %310 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @CR_EDGE, align 4
  %313 = xor i32 %312, -1
  %314 = and i32 %311, %313
  %315 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %316 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %315, i32 0, i32 7
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @CR_EDGE, align 4
  %319 = xor i32 %318, -1
  %320 = and i32 %317, %319
  %321 = icmp ne i32 %314, %320
  br i1 %321, label %322, label %326

322:                                              ; preds = %308, %300
  %323 = load i32, i32* @NISTC_AI_START_SYNC, align 4
  %324 = load i32, i32* %11, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %11, align 4
  br label %326

326:                                              ; preds = %322, %308
  %327 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %328 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @CR_CHAN(i32 %329)
  %331 = load i32, i32* @NI_AI_SampleClock, align 4
  %332 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %333 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %332, i32 0, i32 3
  %334 = call i32 @ni_get_reg_value_roffs(i32 %330, i32 %331, i32* %333, i32 1)
  %335 = call i32 @NISTC_AI_START_SEL(i32 %334)
  %336 = load i32, i32* %11, align 4
  %337 = or i32 %336, %335
  store i32 %337, i32* %11, align 4
  %338 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %339 = load i32, i32* %11, align 4
  %340 = load i32, i32* @NISTC_AI_START_STOP_REG, align 4
  %341 = call i32 @ni_stc_writew(%struct.comedi_device* %338, i32 %339, i32 %340)
  br label %342

342:                                              ; preds = %239, %326, %243
  %343 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %344 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %343, i32 0, i32 6
  %345 = load i32, i32* %344, align 4
  switch i32 %345, label %433 [
    i32 128, label %346
    i32 129, label %346
    i32 132, label %397
  ]

346:                                              ; preds = %342, %342
  %347 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %348 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %347, i32 0, i32 7
  %349 = load i32, i32* %348, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %356, label %351

351:                                              ; preds = %346
  %352 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %353 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %352, i32 0, i32 6
  %354 = load i32, i32* %353, align 4
  %355 = icmp eq i32 %354, 129
  br i1 %355, label %356, label %357

356:                                              ; preds = %351, %346
  store i32 1, i32* %8, align 4
  br label %364

357:                                              ; preds = %351
  %358 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %359 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %360 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %359, i32 0, i32 7
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @CMDF_ROUND_NEAREST, align 4
  %363 = call i32 @ni_ns_to_timer(%struct.comedi_device* %358, i32 %361, i32 %362)
  store i32 %363, i32* %8, align 4
  br label %364

364:                                              ; preds = %357, %356
  %365 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %366 = load i32, i32* @NISTC_AI_SI2_LOADA_REG, align 4
  %367 = call i32 @ni_stc_writew(%struct.comedi_device* %365, i32 1, i32 %366)
  %368 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %369 = load i32, i32* %8, align 4
  %370 = load i32, i32* @NISTC_AI_SI2_LOADB_REG, align 4
  %371 = call i32 @ni_stc_writew(%struct.comedi_device* %368, i32 %369, i32 %370)
  %372 = load i32, i32* @NISTC_AI_MODE2_SI2_INIT_LOAD_SRC, align 4
  %373 = xor i32 %372, -1
  %374 = load i32, i32* %10, align 4
  %375 = and i32 %374, %373
  store i32 %375, i32* %10, align 4
  %376 = load i32, i32* @NISTC_AI_MODE2_SI2_RELOAD_MODE, align 4
  %377 = load i32, i32* %10, align 4
  %378 = or i32 %377, %376
  store i32 %378, i32* %10, align 4
  %379 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %380 = load i32, i32* %10, align 4
  %381 = load i32, i32* @NISTC_AI_MODE2_REG, align 4
  %382 = call i32 @ni_stc_writew(%struct.comedi_device* %379, i32 %380, i32 %381)
  %383 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %384 = load i32, i32* @NISTC_AI_CMD1_SI2_LOAD, align 4
  %385 = load i32, i32* @NISTC_AI_CMD1_REG, align 4
  %386 = call i32 @ni_stc_writew(%struct.comedi_device* %383, i32 %384, i32 %385)
  %387 = load i32, i32* @NISTC_AI_MODE2_SI2_INIT_LOAD_SRC, align 4
  %388 = load i32, i32* %10, align 4
  %389 = or i32 %388, %387
  store i32 %389, i32* %10, align 4
  %390 = load i32, i32* @NISTC_AI_MODE2_SI2_RELOAD_MODE, align 4
  %391 = load i32, i32* %10, align 4
  %392 = or i32 %391, %390
  store i32 %392, i32* %10, align 4
  %393 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %394 = load i32, i32* %10, align 4
  %395 = load i32, i32* @NISTC_AI_MODE2_REG, align 4
  %396 = call i32 @ni_stc_writew(%struct.comedi_device* %393, i32 %394, i32 %395)
  br label %433

397:                                              ; preds = %342
  %398 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %399 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %398, i32 0, i32 7
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @CR_CHAN(i32 %400)
  %402 = load i32, i32* @NI_AI_ConvertClock, align 4
  %403 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %404 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %403, i32 0, i32 3
  %405 = call i32 @ni_get_reg_value_roffs(i32 %401, i32 %402, i32* %404, i32 1)
  %406 = call i32 @NISTC_AI_MODE1_CONVERT_SRC(i32 %405)
  %407 = load i32, i32* %9, align 4
  %408 = or i32 %407, %406
  store i32 %408, i32* %9, align 4
  %409 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %410 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %409, i32 0, i32 7
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* @CR_INVERT, align 4
  %413 = and i32 %411, %412
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %397
  %416 = load i32, i32* @NISTC_AI_MODE1_CONVERT_POLARITY, align 4
  %417 = load i32, i32* %9, align 4
  %418 = or i32 %417, %416
  store i32 %418, i32* %9, align 4
  br label %419

419:                                              ; preds = %415, %397
  %420 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %421 = load i32, i32* %9, align 4
  %422 = load i32, i32* @NISTC_AI_MODE1_REG, align 4
  %423 = call i32 @ni_stc_writew(%struct.comedi_device* %420, i32 %421, i32 %422)
  %424 = load i32, i32* @NISTC_AI_MODE2_SC_GATE_ENA, align 4
  %425 = load i32, i32* @NISTC_AI_MODE2_START_STOP_GATE_ENA, align 4
  %426 = or i32 %424, %425
  %427 = load i32, i32* %10, align 4
  %428 = or i32 %427, %426
  store i32 %428, i32* %10, align 4
  %429 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %430 = load i32, i32* %10, align 4
  %431 = load i32, i32* @NISTC_AI_MODE2_REG, align 4
  %432 = call i32 @ni_stc_writew(%struct.comedi_device* %429, i32 %430, i32 %431)
  br label %433

433:                                              ; preds = %342, %419, %364
  %434 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %435 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %498

438:                                              ; preds = %433
  %439 = load i32, i32* @NISTC_INTA_ENA_AI_ERR, align 4
  %440 = load i32, i32* @NISTC_INTA_ENA_AI_SC_TC, align 4
  %441 = or i32 %439, %440
  %442 = load i32, i32* %13, align 4
  %443 = or i32 %442, %441
  store i32 %443, i32* %13, align 4
  %444 = load i32, i32* @NISTC_INTA_ENA_AI_FIFO, align 4
  %445 = load i32, i32* %13, align 4
  %446 = or i32 %445, %444
  store i32 %446, i32* %13, align 4
  %447 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %448 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %447, i32 0, i32 8
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* @CMDF_WAKE_EOS, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %460, label %453

453:                                              ; preds = %438
  %454 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %455 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* @NISTC_AI_CMD2_END_ON_EOS, align 4
  %458 = and i32 %456, %457
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %453, %438
  %461 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %462 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %461, i32 0, i32 2
  store i32 134, i32* %462, align 8
  br label %466

463:                                              ; preds = %453
  %464 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %465 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %464, i32 0, i32 2
  store i32 136, i32* %465, align 8
  br label %466

466:                                              ; preds = %463, %460
  %467 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %468 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 8
  switch i32 %469, label %488 [
    i32 136, label %470
    i32 135, label %475
    i32 134, label %480
  ]

470:                                              ; preds = %466
  %471 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %472 = load i32, i32* @NISTC_AI_MODE3_FIFO_MODE_HF, align 4
  %473 = load i32, i32* @NISTC_AI_MODE3_REG, align 4
  %474 = call i32 @ni_stc_writew(%struct.comedi_device* %471, i32 %472, i32 %473)
  br label %489

475:                                              ; preds = %466
  %476 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %477 = load i32, i32* @NISTC_AI_MODE3_FIFO_MODE_NE, align 4
  %478 = load i32, i32* @NISTC_AI_MODE3_REG, align 4
  %479 = call i32 @ni_stc_writew(%struct.comedi_device* %476, i32 %477, i32 %478)
  br label %489

480:                                              ; preds = %466
  %481 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %482 = load i32, i32* @NISTC_AI_MODE3_FIFO_MODE_HF, align 4
  %483 = load i32, i32* @NISTC_AI_MODE3_REG, align 4
  %484 = call i32 @ni_stc_writew(%struct.comedi_device* %481, i32 %482, i32 %483)
  %485 = load i32, i32* @NISTC_INTA_ENA_AI_STOP, align 4
  %486 = load i32, i32* %13, align 4
  %487 = or i32 %486, %485
  store i32 %487, i32* %13, align 4
  br label %489

488:                                              ; preds = %466
  br label %489

489:                                              ; preds = %488, %480, %475, %470
  %490 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %491 = load i32, i32* @NISTC_INTA_ACK_AI_ALL, align 4
  %492 = load i32, i32* @NISTC_INTA_ACK_REG, align 4
  %493 = call i32 @ni_stc_writew(%struct.comedi_device* %490, i32 %491, i32 %492)
  %494 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %495 = load i32, i32* @NISTC_INTA_ENA_REG, align 4
  %496 = load i32, i32* %13, align 4
  %497 = call i32 @ni_set_bits(%struct.comedi_device* %494, i32 %495, i32 %496, i32 1)
  br label %502

498:                                              ; preds = %433
  %499 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %500 = load i32, i32* @NISTC_INTA_ENA_REG, align 4
  %501 = call i32 @ni_set_bits(%struct.comedi_device* %499, i32 %500, i32 -1, i32 0)
  br label %502

502:                                              ; preds = %498, %489
  %503 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %504 = load i32, i32* @NISTC_RESET_AI_CFG_END, align 4
  %505 = load i32, i32* @NISTC_RESET_REG, align 4
  %506 = call i32 @ni_stc_writew(%struct.comedi_device* %503, i32 %504, i32 %505)
  %507 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %508 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %507, i32 0, i32 4
  %509 = load i32, i32* %508, align 4
  switch i32 %509, label %532 [
    i32 128, label %510
    i32 132, label %521
  ]

510:                                              ; preds = %502
  %511 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %512 = load i32, i32* @NISTC_AI_CMD1_SI2_ARM, align 4
  %513 = load i32, i32* @NISTC_AI_CMD1_SI_ARM, align 4
  %514 = or i32 %512, %513
  %515 = load i32, i32* @NISTC_AI_CMD1_DIV_ARM, align 4
  %516 = or i32 %514, %515
  %517 = load i32, i32* @NISTC_AI_CMD1_SC_ARM, align 4
  %518 = or i32 %516, %517
  %519 = load i32, i32* @NISTC_AI_CMD1_REG, align 4
  %520 = call i32 @ni_stc_writew(%struct.comedi_device* %511, i32 %518, i32 %519)
  br label %532

521:                                              ; preds = %502
  %522 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %523 = load i32, i32* @NISTC_AI_CMD1_SI2_ARM, align 4
  %524 = load i32, i32* @NISTC_AI_CMD1_SI_ARM, align 4
  %525 = or i32 %523, %524
  %526 = load i32, i32* @NISTC_AI_CMD1_DIV_ARM, align 4
  %527 = or i32 %525, %526
  %528 = load i32, i32* @NISTC_AI_CMD1_SC_ARM, align 4
  %529 = or i32 %527, %528
  %530 = load i32, i32* @NISTC_AI_CMD1_REG, align 4
  %531 = call i32 @ni_stc_writew(%struct.comedi_device* %522, i32 %529, i32 %530)
  br label %532

532:                                              ; preds = %502, %521, %510
  %533 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %534 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 4
  %536 = icmp eq i32 %535, 129
  br i1 %536, label %537, label %550

537:                                              ; preds = %532
  %538 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %539 = load i32, i32* @NISTC_AI_CMD2_START1_PULSE, align 4
  %540 = load %struct.ni_private*, %struct.ni_private** %6, align 8
  %541 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %540, i32 0, i32 1
  %542 = load i32, i32* %541, align 4
  %543 = or i32 %539, %542
  %544 = load i32, i32* @NISTC_AI_CMD2_REG, align 4
  %545 = call i32 @ni_stc_writew(%struct.comedi_device* %538, i32 %543, i32 %544)
  %546 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %547 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %546, i32 0, i32 0
  %548 = load %struct.TYPE_2__*, %struct.TYPE_2__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %548, i32 0, i32 0
  store i32* null, i32** %549, align 8
  br label %567

550:                                              ; preds = %532
  %551 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %552 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = icmp eq i32 %553, 132
  br i1 %554, label %555, label %560

555:                                              ; preds = %550
  %556 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %557 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %556, i32 0, i32 0
  %558 = load %struct.TYPE_2__*, %struct.TYPE_2__** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %558, i32 0, i32 0
  store i32* null, i32** %559, align 8
  br label %566

560:                                              ; preds = %550
  %561 = load i32*, i32** @ni_ai_inttrig, align 8
  %562 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %563 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %562, i32 0, i32 0
  %564 = load %struct.TYPE_2__*, %struct.TYPE_2__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %564, i32 0, i32 0
  store i32* %561, i32** %565, align 8
  br label %566

566:                                              ; preds = %560, %555
  br label %567

567:                                              ; preds = %566, %537
  store i32 0, i32* %3, align 4
  br label %568

568:                                              ; preds = %567, %26
  %569 = load i32, i32* %3, align 4
  ret i32 %569
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ni_clear_ai_fifo(%struct.comedi_device*) #1

declare dso_local i32 @ni_load_channelgain_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @ni_stc_writew(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @NISTC_AI_TRIG_START2_SEL(i32) #1

declare dso_local i32 @NISTC_AI_TRIG_START1_SEL(i32) #1

declare dso_local i32 @ni_get_reg_value_roffs(i32, i32, i32*, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @NISTC_AI_STOP_SEL(i32) #1

declare dso_local i32 @ni_stc_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @NISTC_AI_MODE2_SI_RELOAD_MODE(i32) #1

declare dso_local i32 @ni_ns_to_timer(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @NISTC_AI_START_SEL(i32) #1

declare dso_local i32 @NISTC_AI_MODE1_CONVERT_SRC(i32) #1

declare dso_local i32 @ni_set_bits(%struct.comedi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
