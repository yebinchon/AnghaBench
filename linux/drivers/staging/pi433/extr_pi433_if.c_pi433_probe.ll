; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_pi433_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/pi433/extr_pi433_if.c_pi433_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32 }
%struct.pi433_device = type { i32, i32, i32, %struct.pi433_device*, i32, i32*, %struct.TYPE_5__*, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.spi_device* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"configuration of SPI interface failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"spi interface setup: mode 0x%2x, %d bits per word, %dhz max speed\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"found pi433 (ver. 0x%x)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unknown chip version: 0x%x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_MSG_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"setup of GPIOs failed\00", align 1
@standby = common dso_local global i32 0, align 4
@DATAMODUL_MODE_PACKET = common dso_local global i32 0, align 4
@MASK_PALEVEL_PA0 = common dso_local global i32 0, align 4
@MASK_PALEVEL_PA1 = common dso_local global i32 0, align 4
@MASK_PALEVEL_PA2 = common dso_local global i32 0, align 4
@fifty_ohm = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"get of minor number failed\00", align 1
@pi433_dev = common dso_local global i32 0, align 4
@pi433_class = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"pi433.%d\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"pi433: device register failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"created device for major %d, minor %d\0A\00", align 1
@pi433_tx_thread = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"pi433.%d_tx_task\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"start of send thread failed\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"allocation of cdev failed\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@pi433_fops = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"register of cdev failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @pi433_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pi433_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.pi433_device*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  store i32 8, i32* %9, align 4
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = call i32 @spi_setup(%struct.spi_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 2
  %17 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %305

19:                                               ; preds = %1
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 2
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = call i32 @spi_w8r8(%struct.spi_device* %32, i32 16)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %305

38:                                               ; preds = %19
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %45 [
    i32 36, label %40
  ]

40:                                               ; preds = %38
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 2
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %52

45:                                               ; preds = %38
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 2
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %305

52:                                               ; preds = %40
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.pi433_device* @kzalloc(i32 96, i32 %53)
  store %struct.pi433_device* %54, %struct.pi433_device** %4, align 8
  %55 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %56 = icmp ne %struct.pi433_device* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %305

60:                                               ; preds = %52
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %63 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %62, i32 0, i32 15
  store %struct.spi_device* %61, %struct.spi_device** %63, align 8
  %64 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %65 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %67 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %69 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  %70 = load i32, i32* @MAX_MSG_SIZE, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.pi433_device* @kmalloc(i32 %70, i32 %71)
  %73 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %74 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %73, i32 0, i32 3
  store %struct.pi433_device* %72, %struct.pi433_device** %74, align 8
  %75 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %76 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %75, i32 0, i32 3
  %77 = load %struct.pi433_device*, %struct.pi433_device** %76, align 8
  %78 = icmp ne %struct.pi433_device* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %60
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %301

82:                                               ; preds = %60
  %83 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %84 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %83, i32 0, i32 14
  %85 = call i32 @init_waitqueue_head(i32* %84)
  %86 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %87 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %86, i32 0, i32 13
  %88 = call i32 @init_waitqueue_head(i32* %87)
  %89 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %90 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %89, i32 0, i32 12
  %91 = call i32 @init_waitqueue_head(i32* %90)
  %92 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %93 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @INIT_KFIFO(i32 %94)
  %96 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %97 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %96, i32 0, i32 10
  %98 = call i32 @mutex_init(i32* %97)
  %99 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %100 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %99, i32 0, i32 9
  %101 = call i32 @mutex_init(i32* %100)
  %102 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %103 = call i32 @setup_gpio(%struct.pi433_device* %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %82
  %107 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %108 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %107, i32 0, i32 2
  %109 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %296

110:                                              ; preds = %82
  %111 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %112 = load i32, i32* @standby, align 4
  %113 = call i32 @rf69_set_mode(%struct.spi_device* %111, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %293

117:                                              ; preds = %110
  %118 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %119 = load i32, i32* @DATAMODUL_MODE_PACKET, align 4
  %120 = call i32 @rf69_set_data_mode(%struct.spi_device* %118, i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %293

124:                                              ; preds = %117
  %125 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %126 = load i32, i32* @MASK_PALEVEL_PA0, align 4
  %127 = call i32 @rf69_enable_amplifier(%struct.spi_device* %125, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %293

131:                                              ; preds = %124
  %132 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %133 = load i32, i32* @MASK_PALEVEL_PA1, align 4
  %134 = call i32 @rf69_disable_amplifier(%struct.spi_device* %132, i32 %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %293

138:                                              ; preds = %131
  %139 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %140 = load i32, i32* @MASK_PALEVEL_PA2, align 4
  %141 = call i32 @rf69_disable_amplifier(%struct.spi_device* %139, i32 %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %293

145:                                              ; preds = %138
  %146 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %147 = call i32 @rf69_set_output_power_level(%struct.spi_device* %146, i32 13)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %293

151:                                              ; preds = %145
  %152 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %153 = load i32, i32* @fifty_ohm, align 4
  %154 = call i32 @rf69_set_antenna_impedance(%struct.spi_device* %152, i32 %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %293

158:                                              ; preds = %151
  %159 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %160 = call i32 @pi433_get_minor(%struct.pi433_device* %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %165 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %164, i32 0, i32 2
  %166 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %165, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %293

167:                                              ; preds = %158
  %168 = load i32, i32* @pi433_dev, align 4
  %169 = call i32 @MAJOR(i32 %168)
  %170 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %171 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @MKDEV(i32 %169, i32 %172)
  %174 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %175 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* @pi433_class, align 4
  %177 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %178 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %177, i32 0, i32 2
  %179 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %180 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %183 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %184 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 8
  %186 = call i32* @device_create(i32 %176, i32* %178, i32 %181, %struct.pi433_device* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %185)
  %187 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %188 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %187, i32 0, i32 7
  store i32* %186, i32** %188, align 8
  %189 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %190 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %189, i32 0, i32 7
  %191 = load i32*, i32** %190, align 8
  %192 = call i64 @IS_ERR(i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %167
  %195 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %196 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %197 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %196, i32 0, i32 7
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @PTR_ERR(i32* %198)
  store i32 %199, i32* %5, align 4
  br label %290

200:                                              ; preds = %167
  %201 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %202 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %201, i32 0, i32 7
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* @pi433_dev, align 4
  %205 = call i32 @MAJOR(i32 %204)
  %206 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %207 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %206, i32 0, i32 8
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %203, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %205, i32 %208)
  br label %210

210:                                              ; preds = %200
  %211 = load i32, i32* @pi433_tx_thread, align 4
  %212 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %213 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %214 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 8
  %216 = call i32* @kthread_run(i32 %211, %struct.pi433_device* %212, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %215)
  %217 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %218 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %217, i32 0, i32 5
  store i32* %216, i32** %218, align 8
  %219 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %220 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %219, i32 0, i32 5
  %221 = load i32*, i32** %220, align 8
  %222 = call i64 @IS_ERR(i32* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %210
  %225 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %226 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %225, i32 0, i32 7
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %227, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %229 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %230 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %229, i32 0, i32 5
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @PTR_ERR(i32* %231)
  store i32 %232, i32* %5, align 4
  br label %284

233:                                              ; preds = %210
  %234 = call %struct.TYPE_5__* (...) @cdev_alloc()
  %235 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %236 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %235, i32 0, i32 6
  store %struct.TYPE_5__* %234, %struct.TYPE_5__** %236, align 8
  %237 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %238 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %237, i32 0, i32 6
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %238, align 8
  %240 = icmp ne %struct.TYPE_5__* %239, null
  br i1 %240, label %246, label %241

241:                                              ; preds = %233
  %242 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %243 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %242, i32 0, i32 7
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %244, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %279

246:                                              ; preds = %233
  %247 = load i32, i32* @THIS_MODULE, align 4
  %248 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %249 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %248, i32 0, i32 6
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  store i32 %247, i32* %251, align 4
  %252 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %253 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %252, i32 0, i32 6
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %253, align 8
  %255 = call i32 @cdev_init(%struct.TYPE_5__* %254, i32* @pi433_fops)
  %256 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %257 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %256, i32 0, i32 6
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %260 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @cdev_add(%struct.TYPE_5__* %258, i32 %261, i32 1)
  store i32 %262, i32* %5, align 4
  %263 = load i32, i32* %5, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %246
  %266 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %267 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %266, i32 0, i32 7
  %268 = load i32*, i32** %267, align 8
  %269 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %268, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %274

270:                                              ; preds = %246
  %271 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %272 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %273 = call i32 @spi_set_drvdata(%struct.spi_device* %271, %struct.pi433_device* %272)
  store i32 0, i32* %2, align 4
  br label %305

274:                                              ; preds = %265
  %275 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %276 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %275, i32 0, i32 6
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %276, align 8
  %278 = call i32 @cdev_del(%struct.TYPE_5__* %277)
  br label %279

279:                                              ; preds = %274, %241
  %280 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %281 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %280, i32 0, i32 5
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @kthread_stop(i32* %282)
  br label %284

284:                                              ; preds = %279, %224
  %285 = load i32, i32* @pi433_class, align 4
  %286 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %287 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @device_destroy(i32 %285, i32 %288)
  br label %290

290:                                              ; preds = %284, %194
  %291 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %292 = call i32 @pi433_free_minor(%struct.pi433_device* %291)
  br label %293

293:                                              ; preds = %290, %163, %157, %150, %144, %137, %130, %123, %116
  %294 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %295 = call i32 @free_gpio(%struct.pi433_device* %294)
  br label %296

296:                                              ; preds = %293, %106
  %297 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %298 = getelementptr inbounds %struct.pi433_device, %struct.pi433_device* %297, i32 0, i32 3
  %299 = load %struct.pi433_device*, %struct.pi433_device** %298, align 8
  %300 = call i32 @kfree(%struct.pi433_device* %299)
  br label %301

301:                                              ; preds = %296, %79
  %302 = load %struct.pi433_device*, %struct.pi433_device** %4, align 8
  %303 = call i32 @kfree(%struct.pi433_device* %302)
  %304 = load i32, i32* %5, align 4
  store i32 %304, i32* %2, align 4
  br label %305

305:                                              ; preds = %301, %270, %57, %45, %36, %14
  %306 = load i32, i32* %2, align 4
  ret i32 %306
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @spi_w8r8(%struct.spi_device*, i32) #1

declare dso_local %struct.pi433_device* @kzalloc(i32, i32) #1

declare dso_local %struct.pi433_device* @kmalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_KFIFO(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @setup_gpio(%struct.pi433_device*) #1

declare dso_local i32 @rf69_set_mode(%struct.spi_device*, i32) #1

declare dso_local i32 @rf69_set_data_mode(%struct.spi_device*, i32) #1

declare dso_local i32 @rf69_enable_amplifier(%struct.spi_device*, i32) #1

declare dso_local i32 @rf69_disable_amplifier(%struct.spi_device*, i32) #1

declare dso_local i32 @rf69_set_output_power_level(%struct.spi_device*, i32) #1

declare dso_local i32 @rf69_set_antenna_impedance(%struct.spi_device*, i32) #1

declare dso_local i32 @pi433_get_minor(%struct.pi433_device*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32* @device_create(i32, i32*, i32, %struct.pi433_device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @kthread_run(i32, %struct.pi433_device*, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @cdev_alloc(...) #1

declare dso_local i32 @cdev_init(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.pi433_device*) #1

declare dso_local i32 @cdev_del(%struct.TYPE_5__*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @pi433_free_minor(%struct.pi433_device*) #1

declare dso_local i32 @free_gpio(%struct.pi433_device*) #1

declare dso_local i32 @kfree(%struct.pi433_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
