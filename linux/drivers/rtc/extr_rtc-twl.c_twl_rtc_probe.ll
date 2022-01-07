; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.twl_rtc = type { i64, i32*, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"no DT info\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TWL_4030 = common dso_local global i64 0, align 8
@twl4030_rtc_reg_map = common dso_local global i64 0, align 8
@TWL_6030 = common dso_local global i64 0, align 8
@twl6030_rtc_reg_map = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"TWL Class not supported.\0A\00", align 1
@REG_RTC_STATUS_REG = common dso_local global i32 0, align 4
@BIT_RTC_STATUS_REG_POWER_UP_M = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Power up reset detected.\0A\00", align 1
@BIT_RTC_STATUS_REG_ALARM_M = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Pending Alarm interrupt detected.\0A\00", align 1
@TWL6030_RTC_INT_MASK = common dso_local global i32 0, align 4
@REG_INT_MSK_LINE_A = common dso_local global i32 0, align 4
@REG_INT_MSK_STS_A = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Enabling TWL-RTC\0A\00", align 1
@BIT_RTC_CTRL_REG_STOP_RTC_M = common dso_local global i32 0, align 4
@REG_RTC_CTRL_REG = common dso_local global i32 0, align 4
@REG_RTC_INTERRUPTS_REG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"unable to disable interrupt\0A\00", align 1
@twl_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"can't register RTC device, err %ld\0A\00", align 1
@twl_rtc_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"IRQ is not free.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.twl_rtc*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call i32 @platform_get_irq(%struct.platform_device* %15, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %205

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %205

30:                                               ; preds = %25
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.twl_rtc* @devm_kzalloc(%struct.TYPE_12__* %32, i32 32, i32 %33)
  store %struct.twl_rtc* %34, %struct.twl_rtc** %4, align 8
  %35 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %36 = icmp ne %struct.twl_rtc* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %205

40:                                               ; preds = %30
  %41 = call i64 (...) @twl_class_is_4030()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i64, i64* @TWL_4030, align 8
  %45 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %46 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* @twl4030_rtc_reg_map, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %50 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  br label %69

51:                                               ; preds = %40
  %52 = call i64 (...) @twl_class_is_6030()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i64, i64* @TWL_6030, align 8
  %56 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %57 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* @twl6030_rtc_reg_map, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %61 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  br label %68

62:                                               ; preds = %51
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %205

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %43
  %70 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %71 = load i32, i32* @REG_RTC_STATUS_REG, align 4
  %72 = call i32 @twl_rtc_read_u8(%struct.twl_rtc* %70, i32* %8, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %205

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @BIT_RTC_STATUS_REG_POWER_UP_M, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_warn(%struct.TYPE_12__* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @BIT_RTC_STATUS_REG_ALARM_M, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_warn(%struct.TYPE_12__* %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %86
  %96 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @REG_RTC_STATUS_REG, align 4
  %99 = call i32 @twl_rtc_write_u8(%struct.twl_rtc* %96, i32 %97, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %205

104:                                              ; preds = %95
  %105 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %106 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TWL_6030, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load i32, i32* @TWL6030_RTC_INT_MASK, align 4
  %112 = load i32, i32* @REG_INT_MSK_LINE_A, align 4
  %113 = call i32 @twl6030_interrupt_unmask(i32 %111, i32 %112)
  %114 = load i32, i32* @TWL6030_RTC_INT_MASK, align 4
  %115 = load i32, i32* @REG_INT_MSK_STS_A, align 4
  %116 = call i32 @twl6030_interrupt_unmask(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %110, %104
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i32 @dev_info(%struct.TYPE_12__* %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %122 = load i32, i32* @BIT_RTC_CTRL_REG_STOP_RTC_M, align 4
  %123 = load i32, i32* @REG_RTC_CTRL_REG, align 4
  %124 = call i32 @twl_rtc_write_u8(%struct.twl_rtc* %121, i32 %122, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %205

129:                                              ; preds = %117
  %130 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %131 = load i32, i32* @REG_RTC_INTERRUPTS_REG, align 4
  %132 = call i32 @twl_rtc_write_u8(%struct.twl_rtc* %130, i32 0, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @dev_warn(%struct.TYPE_12__* %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %135, %129
  %140 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %141 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %142 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %141, i32 0, i32 2
  %143 = load i32, i32* @REG_RTC_INTERRUPTS_REG, align 4
  %144 = call i32 @twl_rtc_read_u8(%struct.twl_rtc* %140, i32* %142, i32 %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %2, align 4
  br label %205

149:                                              ; preds = %139
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %152 = call i32 @platform_set_drvdata(%struct.platform_device* %150, %struct.twl_rtc* %151)
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 @device_init_wakeup(%struct.TYPE_12__* %154, i32 1)
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @THIS_MODULE, align 4
  %162 = call %struct.TYPE_11__* @devm_rtc_device_register(%struct.TYPE_12__* %157, i32 %160, i32* @twl_rtc_ops, i32 %161)
  %163 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %164 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %163, i32 0, i32 3
  store %struct.TYPE_11__* %162, %struct.TYPE_11__** %164, align 8
  %165 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %166 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %165, i32 0, i32 3
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = call i64 @IS_ERR(%struct.TYPE_11__* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %149
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %174 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %173, i32 0, i32 3
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = call i32 @PTR_ERR(%struct.TYPE_11__* %175)
  %177 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %172, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %176)
  %178 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %179 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %178, i32 0, i32 3
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = call i32 @PTR_ERR(%struct.TYPE_11__* %180)
  store i32 %181, i32* %2, align 4
  br label %205

182:                                              ; preds = %149
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @twl_rtc_interrupt, align 4
  %187 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %188 = load i32, i32* @IRQF_ONESHOT, align 4
  %189 = or i32 %187, %188
  %190 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %191 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %190, i32 0, i32 3
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = call i32 @dev_name(i32* %193)
  %195 = load %struct.twl_rtc*, %struct.twl_rtc** %4, align 8
  %196 = call i32 @devm_request_threaded_irq(%struct.TYPE_12__* %184, i32 %185, i32* null, i32 %186, i32 %189, i32 %194, %struct.twl_rtc* %195)
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %182
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %201, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %203 = load i32, i32* %6, align 4
  store i32 %203, i32* %2, align 4
  br label %205

204:                                              ; preds = %182
  store i32 0, i32* %2, align 4
  br label %205

205:                                              ; preds = %204, %199, %170, %147, %127, %102, %75, %62, %37, %28, %19
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.twl_rtc* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @twl_class_is_4030(...) #1

declare dso_local i64 @twl_class_is_6030(...) #1

declare dso_local i32 @twl_rtc_read_u8(%struct.twl_rtc*, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @twl_rtc_write_u8(%struct.twl_rtc*, i32, i32) #1

declare dso_local i32 @twl6030_interrupt_unmask(i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.twl_rtc*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_11__* @devm_rtc_device_register(%struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_12__*, i32, i32*, i32, i32, i32, %struct.twl_rtc*) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
