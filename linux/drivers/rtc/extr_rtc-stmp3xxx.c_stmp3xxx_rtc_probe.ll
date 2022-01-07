; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.stmp3xxx_rtc_data = type { i32, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to get resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@STMP3XXX_RTC_STAT = common dso_local global i64 0, align 8
@STMP3XXX_RTC_STAT_RTC_PRESENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"no device onboard\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@STMP3XXX_RTC_CTRL = common dso_local global i64 0, align 8
@STMP3XXX_RTC_CTRL_WATCHDOGEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Watchdog is running, skip resetting rtc\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"stmp_reset_block failed: %d\0A\00", align 1
@STMP3XXX_RTC_STAT_XTAL32000_PRESENT = common dso_local global i32 0, align 4
@STMP3XXX_RTC_STAT_XTAL32768_PRESENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"stmp,crystal-freq\00", align 1
@STMP3XXX_RTC_PERSISTENT0_XTAL32_FREQ = common dso_local global i32 0, align 4
@STMP3XXX_RTC_PERSISTENT0_XTAL32KHZ_PWRUP = common dso_local global i32 0, align 4
@STMP3XXX_RTC_PERSISTENT0_CLOCKSOURCE = common dso_local global i32 0, align 4
@STMP3XXX_RTC_PERSISTENT0_XTAL24MHZ_PWRUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [68 x i8] c"invalid crystal-freq specified in device-tree. Assuming no crystal\0A\00", align 1
@STMP3XXX_RTC_PERSISTENT0 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_SET = common dso_local global i64 0, align 8
@STMP3XXX_RTC_PERSISTENT0_ALARM_EN = common dso_local global i32 0, align 4
@STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE_EN = common dso_local global i32 0, align 4
@STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE = common dso_local global i32 0, align 4
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@STMP3XXX_RTC_CTRL_ONEMSEC_IRQ_EN = common dso_local global i32 0, align 4
@STMP3XXX_RTC_CTRL_ALARM_IRQ_EN = common dso_local global i32 0, align 4
@stmp3xxx_rtc_interrupt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"RTC alarm\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Cannot claim IRQ%d\0A\00", align 1
@stmp3xxx_rtc_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stmp3xxx_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmp3xxx_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stmp3xxx_rtc_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.stmp3xxx_rtc_data* @devm_kzalloc(%struct.TYPE_14__* %12, i32 24, i32 %13)
  store %struct.stmp3xxx_rtc_data* %14, %struct.stmp3xxx_rtc_data** %4, align 8
  %15 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %16 = icmp ne %struct.stmp3xxx_rtc_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %240

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %5, align 8
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = icmp ne %struct.resource* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %240

32:                                               ; preds = %20
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.resource*, %struct.resource** %5, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = call i32 @resource_size(%struct.resource* %38)
  %40 = call i64 @devm_ioremap(%struct.TYPE_14__* %34, i32 %37, i32 %39)
  %41 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %42 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %44 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %32
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %240

53:                                               ; preds = %32
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call i32 @platform_get_irq(%struct.platform_device* %54, i32 0)
  %56 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %57 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %59 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @STMP3XXX_RTC_STAT, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @readl(i64 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @STMP3XXX_RTC_STAT_RTC_PRESENT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %53
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %240

74:                                               ; preds = %53
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %77 = call i32 @platform_set_drvdata(%struct.platform_device* %75, %struct.stmp3xxx_rtc_data* %76)
  %78 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %79 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @STMP3XXX_RTC_CTRL, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readl(i64 %82)
  %84 = load i32, i32* @STMP3XXX_RTC_CTRL_WATCHDOGEN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @dev_info(%struct.TYPE_14__* %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %105

91:                                               ; preds = %74
  %92 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %93 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @stmp_reset_block(i64 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %2, align 4
  br label %240

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %87
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @STMP3XXX_RTC_STAT_XTAL32000_PRESENT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 32000, i32* %9, align 4
  br label %118

111:                                              ; preds = %105
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @STMP3XXX_RTC_STAT_XTAL32768_PRESENT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 32768, i32* %9, align 4
  br label %117

117:                                              ; preds = %116, %111
  br label %118

118:                                              ; preds = %117, %110
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @of_property_read_u32(i32 %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  %124 = load i32, i32* %9, align 4
  switch i32 %124, label %139 [
    i32 32000, label %125
    i32 32768, label %132
    i32 0, label %143
  ]

125:                                              ; preds = %118
  %126 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_XTAL32_FREQ, align 4
  %127 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_XTAL32KHZ_PWRUP, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_CLOCKSOURCE, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_XTAL24MHZ_PWRUP, align 4
  store i32 %131, i32* %8, align 4
  br label %148

132:                                              ; preds = %118
  %133 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_XTAL32KHZ_PWRUP, align 4
  %134 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_CLOCKSOURCE, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_XTAL24MHZ_PWRUP, align 4
  %137 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_XTAL32_FREQ, align 4
  %138 = or i32 %136, %137
  store i32 %138, i32* %8, align 4
  br label %148

139:                                              ; preds = %118
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dev_warn(%struct.TYPE_14__* %141, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  br label %143

143:                                              ; preds = %118, %139
  %144 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_XTAL24MHZ_PWRUP, align 4
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_XTAL32KHZ_PWRUP, align 4
  %146 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_CLOCKSOURCE, align 4
  %147 = or i32 %145, %146
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %143, %132, %125
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %151 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @STMP3XXX_RTC_PERSISTENT0, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writel(i32 %149, i64 %156)
  %158 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_ALARM_EN, align 4
  %159 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE_EN, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %162, %163
  %165 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %166 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @STMP3XXX_RTC_PERSISTENT0, align 8
  %169 = add nsw i64 %167, %168
  %170 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @writel(i32 %164, i64 %171)
  %173 = load i32, i32* @STMP3XXX_RTC_CTRL_ONEMSEC_IRQ_EN, align 4
  %174 = load i32, i32* @STMP3XXX_RTC_CTRL_ALARM_IRQ_EN, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %177 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @STMP3XXX_RTC_CTRL, align 8
  %180 = add nsw i64 %178, %179
  %181 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %182 = add nsw i64 %180, %181
  %183 = call i32 @writel(i32 %175, i64 %182)
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = call %struct.TYPE_13__* @devm_rtc_allocate_device(%struct.TYPE_14__* %185)
  %187 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %188 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %187, i32 0, i32 1
  store %struct.TYPE_13__* %186, %struct.TYPE_13__** %188, align 8
  %189 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %190 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %189, i32 0, i32 1
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  %192 = call i64 @IS_ERR(%struct.TYPE_13__* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %148
  %195 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %196 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %195, i32 0, i32 1
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %196, align 8
  %198 = call i32 @PTR_ERR(%struct.TYPE_13__* %197)
  store i32 %198, i32* %2, align 4
  br label %240

199:                                              ; preds = %148
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %203 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @stmp3xxx_rtc_interrupt, align 4
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i32 @devm_request_irq(%struct.TYPE_14__* %201, i32 %204, i32 %205, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_14__* %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %199
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %215 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %213, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* %10, align 4
  store i32 %218, i32* %2, align 4
  br label %240

219:                                              ; preds = %199
  %220 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %221 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %220, i32 0, i32 1
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  store i32* @stmp3xxx_rtc_ops, i32** %223, align 8
  %224 = load i32, i32* @U32_MAX, align 4
  %225 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %226 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %225, i32 0, i32 1
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  store i32 %224, i32* %228, align 8
  %229 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %230 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %229, i32 0, i32 1
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %230, align 8
  %232 = call i32 @rtc_register_device(%struct.TYPE_13__* %231)
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %219
  %236 = load i32, i32* %10, align 4
  store i32 %236, i32* %2, align 4
  br label %240

237:                                              ; preds = %219
  %238 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %239 = call i32 @stmp3xxx_wdt_register(%struct.platform_device* %238)
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %237, %235, %211, %194, %98, %68, %47, %26, %17
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local %struct.stmp3xxx_rtc_data* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i64 @devm_ioremap(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stmp3xxx_rtc_data*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @stmp_reset_block(i64) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local %struct.TYPE_13__* @devm_rtc_allocate_device(%struct.TYPE_14__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_13__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_13__*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_13__*) #1

declare dso_local i32 @stmp3xxx_wdt_register(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
