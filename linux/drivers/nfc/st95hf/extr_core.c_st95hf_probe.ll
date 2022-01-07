; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st95hf/extr_core.c_st95hf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }
%struct.spi_device = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.st95hf_context = type { i32, i64, %struct.TYPE_20__*, i32, i32, %struct.TYPE_18__*, i32, %struct.st95hf_spi_context }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.st95hf_spi_context = type { i32, i32, %struct.spi_device* }

@.str = private unnamed_addr constant [29 x i8] c"ST95HF driver probe called.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cmd_array = common dso_local global %struct.TYPE_17__* null, align 8
@CMD_ISO14443A_PROTOCOL_SELECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"st95hfvin\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to acquire regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to enable regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"enable-gpio\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"No valid enable gpio\0A\00", align 1
@GPIOF_DIR_OUT = common dso_local global i32 0, align 4
@GPIOF_INIT_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"enable_gpio\00", align 1
@st95hf_irq_handler = common dso_local global i32 0, align 4
@st95hf_irq_thread_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"st95hf\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"err: irq request for st95hf is failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"not a valid IRQ associated with ST95HF\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"err: spi_reset_sequence failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"err: por seq failed for st95hf\0A\00", align 1
@st95hf_nfc_digital_ops = common dso_local global i32 0, align 4
@ST95HF_SUPPORTED_PROT = common dso_local global i32 0, align 4
@ST95HF_CAPABILITIES = common dso_local global i32 0, align 4
@ST95HF_HEADROOM_LEN = common dso_local global i32 0, align 4
@ST95HF_TAILROOM_LEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"st95hf registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @st95hf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st95hf_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st95hf_context*, align 8
  %6 = alloca %struct.st95hf_spi_context*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 1
  %9 = call i32 @nfc_info(%struct.TYPE_19__* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.st95hf_context* @devm_kzalloc(%struct.TYPE_19__* %11, i32 64, i32 %12)
  store %struct.st95hf_context* %13, %struct.st95hf_context** %5, align 8
  %14 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %15 = icmp ne %struct.st95hf_context* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %233

19:                                               ; preds = %1
  %20 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %21 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %20, i32 0, i32 7
  store %struct.st95hf_spi_context* %21, %struct.st95hf_spi_context** %6, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %6, align 8
  %24 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %23, i32 0, i32 2
  store %struct.spi_device* %22, %struct.spi_device** %24, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** @cmd_array, align 8
  %26 = load i64, i64* @CMD_ISO14443A_PROTOCOL_SELECT, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %33 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 1
  %36 = call i64 @device_property_present(%struct.TYPE_19__* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %19
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 1
  %41 = call i64 @devm_regulator_get(%struct.TYPE_19__* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %43 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %45 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @IS_ERR(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %38
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 1
  %52 = call i32 @dev_err(%struct.TYPE_19__* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %54 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @PTR_ERR(i64 %55)
  store i32 %56, i32* %2, align 4
  br label %233

57:                                               ; preds = %38
  %58 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %59 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @regulator_enable(i64 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 1
  %67 = call i32 @dev_err(%struct.TYPE_19__* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %233

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %19
  %71 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %6, align 8
  %72 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %71, i32 0, i32 1
  %73 = call i32 @init_completion(i32* %72)
  %74 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %6, align 8
  %75 = getelementptr inbounds %struct.st95hf_spi_context, %struct.st95hf_spi_context* %74, i32 0, i32 0
  %76 = call i32 @mutex_init(i32* %75)
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %77, i32 0, i32 1
  %79 = load %struct.st95hf_spi_context*, %struct.st95hf_spi_context** %6, align 8
  %80 = call i32 @dev_set_drvdata(%struct.TYPE_19__* %78, %struct.st95hf_spi_context* %79)
  %81 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %82 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @of_get_named_gpio(i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %86 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %87 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %89 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @gpio_is_valid(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %70
  %94 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %95 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %94, i32 0, i32 1
  %96 = call i32 @dev_err(%struct.TYPE_19__* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %97 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %98 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %4, align 4
  br label %221

100:                                              ; preds = %70
  %101 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %102 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %101, i32 0, i32 1
  %103 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %104 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @GPIOF_DIR_OUT, align 4
  %107 = load i32, i32* @GPIOF_INIT_HIGH, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @devm_gpio_request_one(%struct.TYPE_19__* %102, i32 %105, i32 %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %221

113:                                              ; preds = %100
  %114 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %115 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %113
  %119 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %120 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %119, i32 0, i32 1
  %121 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %122 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @st95hf_irq_handler, align 4
  %125 = load i32, i32* @st95hf_irq_thread_handler, align 4
  %126 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %127 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %128 = bitcast %struct.st95hf_context* %127 to i8*
  %129 = call i64 @devm_request_threaded_irq(%struct.TYPE_19__* %120, i64 %123, i32 %124, i32 %125, i32 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %118
  %132 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %133 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %132, i32 0, i32 1
  %134 = call i32 @dev_err(%struct.TYPE_19__* %133, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %221

137:                                              ; preds = %118
  br label %144

138:                                              ; preds = %113
  %139 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %140 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %139, i32 0, i32 1
  %141 = call i32 @dev_err(%struct.TYPE_19__* %140, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %221

144:                                              ; preds = %137
  %145 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %146 = call i32 @st95hf_send_spi_reset_sequence(%struct.st95hf_context* %145)
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %151 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %150, i32 0, i32 1
  %152 = call i32 @dev_err(%struct.TYPE_19__* %151, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %221

153:                                              ; preds = %144
  %154 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %155 = call i32 @st95hf_por_sequence(%struct.st95hf_context* %154)
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %4, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %160 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %159, i32 0, i32 1
  %161 = call i32 @dev_err(%struct.TYPE_19__* %160, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %221

162:                                              ; preds = %153
  %163 = load i32, i32* @ST95HF_SUPPORTED_PROT, align 4
  %164 = load i32, i32* @ST95HF_CAPABILITIES, align 4
  %165 = load i32, i32* @ST95HF_HEADROOM_LEN, align 4
  %166 = load i32, i32* @ST95HF_TAILROOM_LEN, align 4
  %167 = call %struct.TYPE_20__* @nfc_digital_allocate_device(i32* @st95hf_nfc_digital_ops, i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %169 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %168, i32 0, i32 2
  store %struct.TYPE_20__* %167, %struct.TYPE_20__** %169, align 8
  %170 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %171 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %170, i32 0, i32 2
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %171, align 8
  %173 = icmp ne %struct.TYPE_20__* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %162
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %4, align 4
  br label %221

177:                                              ; preds = %162
  %178 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %179 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %178, i32 0, i32 2
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  %183 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %184 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %183, i32 0, i32 5
  store %struct.TYPE_18__* %182, %struct.TYPE_18__** %184, align 8
  %185 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %186 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %185, i32 0, i32 2
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %186, align 8
  %188 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %189 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %188, i32 0, i32 1
  %190 = call i32 @nfc_digital_set_parent_dev(%struct.TYPE_20__* %187, %struct.TYPE_19__* %189)
  %191 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %192 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %191, i32 0, i32 2
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %192, align 8
  %194 = call i32 @nfc_digital_register_device(%struct.TYPE_20__* %193)
  store i32 %194, i32* %4, align 4
  %195 = load i32, i32* %4, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %177
  %198 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %199 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %198, i32 0, i32 5
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = call i32 @dev_err(%struct.TYPE_19__* %201, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %216

203:                                              ; preds = %177
  %204 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %205 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %204, i32 0, i32 2
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %205, align 8
  %207 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %208 = call i32 @nfc_digital_set_drvdata(%struct.TYPE_20__* %206, %struct.st95hf_context* %207)
  %209 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %210 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %209, i32 0, i32 4
  %211 = call i32 @sema_init(i32* %210, i32 1)
  %212 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %213 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %212, i32 0, i32 3
  %214 = call i32 @mutex_init(i32* %213)
  %215 = load i32, i32* %4, align 4
  store i32 %215, i32* %2, align 4
  br label %233

216:                                              ; preds = %197
  %217 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %218 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %217, i32 0, i32 2
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %218, align 8
  %220 = call i32 @nfc_digital_free_device(%struct.TYPE_20__* %219)
  br label %221

221:                                              ; preds = %216, %174, %158, %149, %138, %131, %112, %93
  %222 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %223 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load %struct.st95hf_context*, %struct.st95hf_context** %5, align 8
  %228 = getelementptr inbounds %struct.st95hf_context, %struct.st95hf_context* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @regulator_disable(i64 %229)
  br label %231

231:                                              ; preds = %226, %221
  %232 = load i32, i32* %4, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %231, %203, %64, %49, %16
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i32 @nfc_info(%struct.TYPE_19__*, i8*) #1

declare dso_local %struct.st95hf_context* @devm_kzalloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @device_property_present(%struct.TYPE_19__*, i8*) #1

declare dso_local i64 @devm_regulator_get(%struct.TYPE_19__*, i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_19__*, %struct.st95hf_spi_context*) #1

declare dso_local i32 @of_get_named_gpio(i32, i8*, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_19__*, i32, i32, i8*) #1

declare dso_local i64 @devm_request_threaded_irq(%struct.TYPE_19__*, i64, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @st95hf_send_spi_reset_sequence(%struct.st95hf_context*) #1

declare dso_local i32 @st95hf_por_sequence(%struct.st95hf_context*) #1

declare dso_local %struct.TYPE_20__* @nfc_digital_allocate_device(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nfc_digital_set_parent_dev(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @nfc_digital_register_device(%struct.TYPE_20__*) #1

declare dso_local i32 @nfc_digital_set_drvdata(%struct.TYPE_20__*, %struct.st95hf_context*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @nfc_digital_free_device(%struct.TYPE_20__*) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
