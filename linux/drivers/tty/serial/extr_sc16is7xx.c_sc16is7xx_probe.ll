; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sc16is7xx.c_sc16is7xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sc16is7xx_devtype = type { i32, i64 }
%struct.regmap = type { i32 }
%struct.sched_param = type { i32 }
%struct.sc16is7xx_port = type { %struct.regmap*, %struct.regmap*, %struct.TYPE_10__, %struct.TYPE_8__*, %struct.regmap*, i32, i32, i32, %struct.sc16is7xx_devtype* }
%struct.TYPE_10__ = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.device*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i32*, i32, i32, i32, i32, %struct.device* }

@MAX_RT_PRIO = common dso_local global i32 0, align 4
@p = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error allocating port structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Clock frequency: %luHz\0A\00", align 1
@sc16is7xx_ist = common dso_local global i32 0, align 4
@kthread_worker_fn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"sc16is7xx\00", align 1
@SCHED_FIFO = common dso_local global i32 0, align 4
@SC16IS7XX_IOCONTROL_REG = common dso_local global i32 0, align 4
@SC16IS7XX_REG_SHIFT = common dso_local global i32 0, align 4
@SC16IS7XX_IOCONTROL_SRESET_BIT = common dso_local global i32 0, align 4
@PORT_SC16IS7XX = common dso_local global i32 0, align 4
@SC16IS7XX_FIFO_SIZE = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@UPF_LOW_LATENCY = common dso_local global i32 0, align 4
@UPIO_PORT = common dso_local global i32 0, align 4
@sc16is7xx_config_rs485 = common dso_local global i32 0, align 4
@sc16is7xx_ops = common dso_local global i32 0, align 4
@SC16IS7XX_MAX_DEVS = common dso_local global i64 0, align 8
@SC16IS7XX_IER_REG = common dso_local global i32 0, align 4
@SC16IS7XX_EFCR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_EFCR_RXDISABLE_BIT = common dso_local global i32 0, align 4
@SC16IS7XX_EFCR_TXDISABLE_BIT = common dso_local global i32 0, align 4
@sc16is7xx_tx_proc = common dso_local global i32 0, align 4
@sc16is7xx_reg_proc = common dso_local global i32 0, align 4
@sc16is7xx_uart = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_LCR_CONF_MODE_B = common dso_local global i32 0, align 4
@SC16IS7XX_EFR_REG = common dso_local global i32 0, align 4
@SC16IS7XX_EFR_ENABLE_BIT = common dso_local global i32 0, align 4
@sc16is7xx_irq = common dso_local global i32 0, align 4
@sc16is7xx_lines = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@sc16is7xx_gpio_direction_input = common dso_local global i32 0, align 4
@sc16is7xx_gpio_direction_output = common dso_local global i32 0, align 4
@sc16is7xx_gpio_get = common dso_local global i32 0, align 4
@sc16is7xx_gpio_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sc16is7xx_devtype*, %struct.regmap*, i32, i64)* @sc16is7xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc16is7xx_probe(%struct.device* %0, %struct.sc16is7xx_devtype* %1, %struct.regmap* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.sc16is7xx_devtype*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.sched_param, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sc16is7xx_port*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.sc16is7xx_devtype* %1, %struct.sc16is7xx_devtype** %8, align 8
  store %struct.regmap* %2, %struct.regmap** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %19 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %12, i32 0, i32 0
  %20 = load i32, i32* @MAX_RT_PRIO, align 4
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %19, align 4
  store i64 0, i64* %13, align 8
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = call i64* @dev_get_platdata(%struct.device* %22)
  store i64* %23, i64** %14, align 8
  store i64 0, i64* %15, align 8
  %24 = load %struct.regmap*, %struct.regmap** %9, align 8
  %25 = call i64 @IS_ERR(%struct.regmap* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load %struct.regmap*, %struct.regmap** %9, align 8
  %29 = call i32 @PTR_ERR(%struct.regmap* %28)
  store i32 %29, i32* %6, align 4
  br label %422

30:                                               ; preds = %5
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %33 = load i32, i32* @p, align 4
  %34 = load %struct.sc16is7xx_devtype*, %struct.sc16is7xx_devtype** %8, align 8
  %35 = getelementptr inbounds %struct.sc16is7xx_devtype, %struct.sc16is7xx_devtype* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @struct_size(%struct.sc16is7xx_port* %32, i32 %33, i32 %36)
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.sc16is7xx_port* @devm_kzalloc(%struct.device* %31, i32 %37, i32 %38)
  store %struct.sc16is7xx_port* %39, %struct.sc16is7xx_port** %18, align 8
  %40 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %41 = icmp ne %struct.sc16is7xx_port* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %30
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %422

47:                                               ; preds = %30
  %48 = load %struct.device*, %struct.device** %7, align 8
  %49 = call i32 @device_property_read_u32(%struct.device* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %15)
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = call %struct.regmap* @devm_clk_get(%struct.device* %50, i32* null)
  %52 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %53 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %52, i32 0, i32 0
  store %struct.regmap* %51, %struct.regmap** %53, align 8
  %54 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %55 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %54, i32 0, i32 0
  %56 = load %struct.regmap*, %struct.regmap** %55, align 8
  %57 = call i64 @IS_ERR(%struct.regmap* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %47
  %60 = load i64, i64* %15, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i64, i64* %15, align 8
  store i64 %63, i64* %13, align 8
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i64*, i64** %14, align 8
  %66 = icmp ne i64* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i64*, i64** %14, align 8
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i64, i64* %13, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @dev_dbg(%struct.device* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  br label %82

77:                                               ; preds = %70
  %78 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %79 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %78, i32 0, i32 0
  %80 = load %struct.regmap*, %struct.regmap** %79, align 8
  %81 = call i32 @PTR_ERR(%struct.regmap* %80)
  store i32 %81, i32* %6, align 4
  br label %422

82:                                               ; preds = %73
  br label %97

83:                                               ; preds = %47
  %84 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %85 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %84, i32 0, i32 0
  %86 = load %struct.regmap*, %struct.regmap** %85, align 8
  %87 = call i32 @clk_prepare_enable(%struct.regmap* %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %6, align 4
  br label %422

92:                                               ; preds = %83
  %93 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %94 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %93, i32 0, i32 0
  %95 = load %struct.regmap*, %struct.regmap** %94, align 8
  %96 = call i64 @clk_get_rate(%struct.regmap* %95)
  store i64 %96, i64* %13, align 8
  br label %97

97:                                               ; preds = %92, %82
  %98 = load %struct.regmap*, %struct.regmap** %9, align 8
  %99 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %100 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %99, i32 0, i32 4
  store %struct.regmap* %98, %struct.regmap** %100, align 8
  %101 = load %struct.sc16is7xx_devtype*, %struct.sc16is7xx_devtype** %8, align 8
  %102 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %103 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %102, i32 0, i32 8
  store %struct.sc16is7xx_devtype* %101, %struct.sc16is7xx_devtype** %103, align 8
  %104 = load %struct.device*, %struct.device** %7, align 8
  %105 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %106 = call i32 @dev_set_drvdata(%struct.device* %104, %struct.sc16is7xx_port* %105)
  %107 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %108 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %107, i32 0, i32 7
  %109 = call i32 @mutex_init(i32* %108)
  %110 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %111 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %110, i32 0, i32 5
  %112 = call i32 @kthread_init_worker(i32* %111)
  %113 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %114 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %113, i32 0, i32 6
  %115 = load i32, i32* @sc16is7xx_ist, align 4
  %116 = call i32 @kthread_init_work(i32* %114, i32 %115)
  %117 = load i32, i32* @kthread_worker_fn, align 4
  %118 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %119 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %118, i32 0, i32 5
  %120 = call %struct.regmap* @kthread_run(i32 %117, i32* %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %121 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %122 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %121, i32 0, i32 1
  store %struct.regmap* %120, %struct.regmap** %122, align 8
  %123 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %124 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %123, i32 0, i32 1
  %125 = load %struct.regmap*, %struct.regmap** %124, align 8
  %126 = call i64 @IS_ERR(%struct.regmap* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %97
  %129 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %130 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %129, i32 0, i32 1
  %131 = load %struct.regmap*, %struct.regmap** %130, align 8
  %132 = call i32 @PTR_ERR(%struct.regmap* %131)
  store i32 %132, i32* %17, align 4
  br label %409

133:                                              ; preds = %97
  %134 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %135 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %134, i32 0, i32 1
  %136 = load %struct.regmap*, %struct.regmap** %135, align 8
  %137 = load i32, i32* @SCHED_FIFO, align 4
  %138 = call i32 @sched_setscheduler(%struct.regmap* %136, i32 %137, %struct.sched_param* %12)
  %139 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %140 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %139, i32 0, i32 4
  %141 = load %struct.regmap*, %struct.regmap** %140, align 8
  %142 = load i32, i32* @SC16IS7XX_IOCONTROL_REG, align 4
  %143 = load i32, i32* @SC16IS7XX_REG_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* @SC16IS7XX_IOCONTROL_SRESET_BIT, align 4
  %146 = call i32 @regmap_write(%struct.regmap* %141, i32 %144, i32 %145)
  store i32 0, i32* %16, align 4
  br label %147

147:                                              ; preds = %360, %133
  %148 = load i32, i32* %16, align 4
  %149 = load %struct.sc16is7xx_devtype*, %struct.sc16is7xx_devtype** %8, align 8
  %150 = getelementptr inbounds %struct.sc16is7xx_devtype, %struct.sc16is7xx_devtype* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %363

153:                                              ; preds = %147
  %154 = load i32, i32* %16, align 4
  %155 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %156 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %155, i32 0, i32 3
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  store i32 %154, i32* %161, align 8
  %162 = load %struct.device*, %struct.device** %7, align 8
  %163 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %164 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %163, i32 0, i32 3
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 9
  store %struct.device* %162, %struct.device** %170, align 8
  %171 = load i32, i32* %10, align 4
  %172 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %173 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %172, i32 0, i32 3
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  store i32 %171, i32* %179, align 8
  %180 = load i32, i32* @PORT_SC16IS7XX, align 4
  %181 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %182 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %181, i32 0, i32 3
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = load i32, i32* %16, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 8
  store i32 %180, i32* %188, align 4
  %189 = load i32, i32* @SC16IS7XX_FIFO_SIZE, align 4
  %190 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %191 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %190, i32 0, i32 3
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 7
  store i32 %189, i32* %197, align 8
  %198 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %199 = load i32, i32* @UPF_LOW_LATENCY, align 4
  %200 = or i32 %198, %199
  %201 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %202 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %201, i32 0, i32 3
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  store i32 %200, i32* %208, align 4
  %209 = load i32, i32* @UPIO_PORT, align 4
  %210 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %211 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %210, i32 0, i32 3
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = load i32, i32* %16, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 6
  store i32 %209, i32* %217, align 4
  %218 = load i64, i64* %13, align 8
  %219 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %220 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %219, i32 0, i32 3
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = load i32, i32* %16, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 2
  store i64 %218, i64* %226, align 8
  %227 = load i32, i32* @sc16is7xx_config_rs485, align 4
  %228 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %229 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %228, i32 0, i32 3
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 5
  store i32 %227, i32* %235, align 8
  %236 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %237 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %236, i32 0, i32 3
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = load i32, i32* %16, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 4
  store i32* @sc16is7xx_ops, i32** %243, align 8
  %244 = call i64 (...) @sc16is7xx_alloc_line()
  %245 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %246 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %245, i32 0, i32 3
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %246, align 8
  %248 = load i32, i32* %16, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 3
  store i64 %244, i64* %252, align 8
  %253 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %254 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %253, i32 0, i32 3
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %254, align 8
  %256 = load i32, i32* %16, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @SC16IS7XX_MAX_DEVS, align 8
  %263 = icmp sge i64 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %153
  %265 = load i32, i32* @ENOMEM, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %17, align 4
  br label %376

267:                                              ; preds = %153
  %268 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %269 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %268, i32 0, i32 3
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  %271 = load i32, i32* %16, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 1
  %275 = load i32, i32* @SC16IS7XX_IER_REG, align 4
  %276 = call i32 @sc16is7xx_port_write(%struct.TYPE_9__* %274, i32 %275, i32 0)
  %277 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %278 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %277, i32 0, i32 3
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %278, align 8
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  %284 = load i32, i32* @SC16IS7XX_EFCR_REG, align 4
  %285 = load i32, i32* @SC16IS7XX_EFCR_RXDISABLE_BIT, align 4
  %286 = load i32, i32* @SC16IS7XX_EFCR_TXDISABLE_BIT, align 4
  %287 = or i32 %285, %286
  %288 = call i32 @sc16is7xx_port_write(%struct.TYPE_9__* %283, i32 %284, i32 %287)
  %289 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %290 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %289, i32 0, i32 3
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %290, align 8
  %292 = load i32, i32* %16, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 3
  %296 = load i32, i32* @sc16is7xx_tx_proc, align 4
  %297 = call i32 @kthread_init_work(i32* %295, i32 %296)
  %298 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %299 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %298, i32 0, i32 3
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %299, align 8
  %301 = load i32, i32* %16, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 2
  %305 = load i32, i32* @sc16is7xx_reg_proc, align 4
  %306 = call i32 @kthread_init_work(i32* %304, i32 %305)
  %307 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %308 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %307, i32 0, i32 3
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %308, align 8
  %310 = load i32, i32* %16, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 1
  %314 = call i32 @uart_add_one_port(i32* @sc16is7xx_uart, %struct.TYPE_9__* %313)
  %315 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %316 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %315, i32 0, i32 3
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %316, align 8
  %318 = load i32, i32* %16, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 1
  %322 = load i32, i32* @SC16IS7XX_LCR_REG, align 4
  %323 = load i32, i32* @SC16IS7XX_LCR_CONF_MODE_B, align 4
  %324 = call i32 @sc16is7xx_port_write(%struct.TYPE_9__* %321, i32 %322, i32 %323)
  %325 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %326 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %325, i32 0, i32 4
  %327 = load %struct.regmap*, %struct.regmap** %326, align 8
  %328 = call i32 @regcache_cache_bypass(%struct.regmap* %327, i32 1)
  %329 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %330 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %329, i32 0, i32 3
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %330, align 8
  %332 = load i32, i32* %16, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 1
  %336 = load i32, i32* @SC16IS7XX_EFR_REG, align 4
  %337 = load i32, i32* @SC16IS7XX_EFR_ENABLE_BIT, align 4
  %338 = call i32 @sc16is7xx_port_write(%struct.TYPE_9__* %335, i32 %336, i32 %337)
  %339 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %340 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %339, i32 0, i32 4
  %341 = load %struct.regmap*, %struct.regmap** %340, align 8
  %342 = call i32 @regcache_cache_bypass(%struct.regmap* %341, i32 0)
  %343 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %344 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %343, i32 0, i32 3
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %344, align 8
  %346 = load i32, i32* %16, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 1
  %350 = load i32, i32* @SC16IS7XX_LCR_REG, align 4
  %351 = call i32 @sc16is7xx_port_write(%struct.TYPE_9__* %349, i32 %350, i32 0)
  %352 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %353 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %352, i32 0, i32 3
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %353, align 8
  %355 = load i32, i32* %16, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 1
  %359 = call i32 @sc16is7xx_power(%struct.TYPE_9__* %358, i32 0)
  br label %360

360:                                              ; preds = %267
  %361 = load i32, i32* %16, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %16, align 4
  br label %147

363:                                              ; preds = %147
  %364 = load %struct.device*, %struct.device** %7, align 8
  %365 = load i32, i32* %10, align 4
  %366 = load i32, i32* @sc16is7xx_irq, align 4
  %367 = load i64, i64* %11, align 8
  %368 = load %struct.device*, %struct.device** %7, align 8
  %369 = call i32 @dev_name(%struct.device* %368)
  %370 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %371 = call i32 @devm_request_irq(%struct.device* %364, i32 %365, i32 %366, i64 %367, i32 %369, %struct.sc16is7xx_port* %370)
  store i32 %371, i32* %17, align 4
  %372 = load i32, i32* %17, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %375, label %374

374:                                              ; preds = %363
  store i32 0, i32* %6, align 4
  br label %422

375:                                              ; preds = %363
  br label %376

376:                                              ; preds = %375, %264
  %377 = load i32, i32* %16, align 4
  %378 = add nsw i32 %377, -1
  store i32 %378, i32* %16, align 4
  br label %379

379:                                              ; preds = %401, %376
  %380 = load i32, i32* %16, align 4
  %381 = icmp sge i32 %380, 0
  br i1 %381, label %382, label %404

382:                                              ; preds = %379
  %383 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %384 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %383, i32 0, i32 3
  %385 = load %struct.TYPE_8__*, %struct.TYPE_8__** %384, align 8
  %386 = load i32, i32* %16, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 1
  %390 = call i32 @uart_remove_one_port(i32* @sc16is7xx_uart, %struct.TYPE_9__* %389)
  %391 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %392 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %391, i32 0, i32 3
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %392, align 8
  %394 = load i32, i32* %16, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 3
  %399 = load i64, i64* %398, align 8
  %400 = call i32 @clear_bit(i64 %399, i32* @sc16is7xx_lines)
  br label %401

401:                                              ; preds = %382
  %402 = load i32, i32* %16, align 4
  %403 = add nsw i32 %402, -1
  store i32 %403, i32* %16, align 4
  br label %379

404:                                              ; preds = %379
  %405 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %406 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %405, i32 0, i32 1
  %407 = load %struct.regmap*, %struct.regmap** %406, align 8
  %408 = call i32 @kthread_stop(%struct.regmap* %407)
  br label %409

409:                                              ; preds = %404, %128
  %410 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %411 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %410, i32 0, i32 0
  %412 = load %struct.regmap*, %struct.regmap** %411, align 8
  %413 = call i64 @IS_ERR(%struct.regmap* %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %420, label %415

415:                                              ; preds = %409
  %416 = load %struct.sc16is7xx_port*, %struct.sc16is7xx_port** %18, align 8
  %417 = getelementptr inbounds %struct.sc16is7xx_port, %struct.sc16is7xx_port* %416, i32 0, i32 0
  %418 = load %struct.regmap*, %struct.regmap** %417, align 8
  %419 = call i32 @clk_disable_unprepare(%struct.regmap* %418)
  br label %420

420:                                              ; preds = %415, %409
  %421 = load i32, i32* %17, align 4
  store i32 %421, i32* %6, align 4
  br label %422

422:                                              ; preds = %420, %374, %90, %77, %42, %27
  %423 = load i32, i32* %6, align 4
  ret i32 %423
}

declare dso_local i64* @dev_get_platdata(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.sc16is7xx_port* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.sc16is7xx_port*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i64*) #1

declare dso_local %struct.regmap* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local i32 @clk_prepare_enable(%struct.regmap*) #1

declare dso_local i64 @clk_get_rate(%struct.regmap*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.sc16is7xx_port*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kthread_init_worker(i32*) #1

declare dso_local i32 @kthread_init_work(i32*, i32) #1

declare dso_local %struct.regmap* @kthread_run(i32, i32*, i8*) #1

declare dso_local i32 @sched_setscheduler(%struct.regmap*, i32, %struct.sched_param*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i64 @sc16is7xx_alloc_line(...) #1

declare dso_local i32 @sc16is7xx_port_write(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @regcache_cache_bypass(%struct.regmap*, i32) #1

declare dso_local i32 @sc16is7xx_power(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i64, i32, %struct.sc16is7xx_port*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @kthread_stop(%struct.regmap*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
