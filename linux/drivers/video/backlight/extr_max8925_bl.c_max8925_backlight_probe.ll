; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_max8925_bl.c_max8925_backlight_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_max8925_bl.c_max8925_backlight_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.max8925_backlight_pdata*, i32 }
%struct.max8925_backlight_pdata = type { i64, i64, i64 }
%struct.max8925_chip = type { i32 }
%struct.max8925_backlight_data = type { i32, i64, %struct.max8925_chip*, i32 }
%struct.backlight_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.backlight_properties = type { i8*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"No REG resource for mode control!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"No REG resource for control!\0A\00", align 1
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@MAX_BRIGHTNESS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"max8925-backlight\00", align 1
@max8925_backlight_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8925_backlight_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_backlight_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8925_chip*, align 8
  %5 = alloca %struct.max8925_backlight_pdata*, align 8
  %6 = alloca %struct.max8925_backlight_data*, align 8
  %7 = alloca %struct.backlight_device*, align 8
  %8 = alloca %struct.backlight_properties, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.max8925_chip* @dev_get_drvdata(i32 %15)
  store %struct.max8925_chip* %16, %struct.max8925_chip** %4, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.max8925_backlight_data* @devm_kzalloc(%struct.TYPE_7__* %18, i32 32, i32 %19)
  store %struct.max8925_backlight_data* %20, %struct.max8925_backlight_data** %6, align 8
  %21 = load %struct.max8925_backlight_data*, %struct.max8925_backlight_data** %6, align 8
  %22 = icmp eq %struct.max8925_backlight_data* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %161

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load i32, i32* @IORESOURCE_REG, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %9, align 8
  %30 = load %struct.resource*, %struct.resource** %9, align 8
  %31 = icmp ne %struct.resource* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_err(%struct.TYPE_7__* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %161

38:                                               ; preds = %26
  %39 = load %struct.resource*, %struct.resource** %9, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.max8925_backlight_data*, %struct.max8925_backlight_data** %6, align 8
  %43 = getelementptr inbounds %struct.max8925_backlight_data, %struct.max8925_backlight_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load i32, i32* @IORESOURCE_REG, align 4
  %46 = call %struct.resource* @platform_get_resource(%struct.platform_device* %44, i32 %45, i32 1)
  store %struct.resource* %46, %struct.resource** %9, align 8
  %47 = load %struct.resource*, %struct.resource** %9, align 8
  %48 = icmp ne %struct.resource* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %38
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(%struct.TYPE_7__* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %161

55:                                               ; preds = %38
  %56 = load %struct.resource*, %struct.resource** %9, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.max8925_backlight_data*, %struct.max8925_backlight_data** %6, align 8
  %60 = getelementptr inbounds %struct.max8925_backlight_data, %struct.max8925_backlight_data* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %62 = load %struct.max8925_backlight_data*, %struct.max8925_backlight_data** %6, align 8
  %63 = getelementptr inbounds %struct.max8925_backlight_data, %struct.max8925_backlight_data* %62, i32 0, i32 2
  store %struct.max8925_chip* %61, %struct.max8925_chip** %63, align 8
  %64 = load %struct.max8925_backlight_data*, %struct.max8925_backlight_data** %6, align 8
  %65 = getelementptr inbounds %struct.max8925_backlight_data, %struct.max8925_backlight_data* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = call i32 @memset(%struct.backlight_properties* %8, i32 0, i32 16)
  %67 = load i32, i32* @BACKLIGHT_RAW, align 4
  %68 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 1
  store i32 %67, i32* %68, align 8
  %69 = load i8*, i8** @MAX_BRIGHTNESS, align 8
  %70 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 0
  store i8* %69, i8** %70, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.max8925_backlight_data*, %struct.max8925_backlight_data** %6, align 8
  %76 = call %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_7__* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* %74, %struct.max8925_backlight_data* %75, i32* @max8925_backlight_ops, %struct.backlight_properties* %8)
  store %struct.backlight_device* %76, %struct.backlight_device** %7, align 8
  %77 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %78 = call i64 @IS_ERR(%struct.backlight_device* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %55
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_err(%struct.TYPE_7__* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %85 = call i32 @PTR_ERR(%struct.backlight_device* %84)
  store i32 %85, i32* %2, align 4
  br label %161

86:                                               ; preds = %55
  %87 = load i8*, i8** @MAX_BRIGHTNESS, align 8
  %88 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %89 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %93 = call i32 @platform_set_drvdata(%struct.platform_device* %91, %struct.backlight_device* %92)
  store i8 0, i8* %10, align 1
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.max8925_backlight_pdata*, %struct.max8925_backlight_pdata** %96, align 8
  %98 = icmp ne %struct.max8925_backlight_pdata* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %86
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = call i32 @max8925_backlight_dt_init(%struct.platform_device* %100)
  br label %102

102:                                              ; preds = %99, %86
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load %struct.max8925_backlight_pdata*, %struct.max8925_backlight_pdata** %105, align 8
  store %struct.max8925_backlight_pdata* %106, %struct.max8925_backlight_pdata** %5, align 8
  %107 = load %struct.max8925_backlight_pdata*, %struct.max8925_backlight_pdata** %5, align 8
  %108 = icmp ne %struct.max8925_backlight_pdata* %107, null
  br i1 %108, label %109, label %145

109:                                              ; preds = %102
  %110 = load %struct.max8925_backlight_pdata*, %struct.max8925_backlight_pdata** %5, align 8
  %111 = getelementptr inbounds %struct.max8925_backlight_pdata, %struct.max8925_backlight_pdata* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i8, i8* %10, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %116, 128
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %10, align 1
  br label %119

119:                                              ; preds = %114, %109
  %120 = load %struct.max8925_backlight_pdata*, %struct.max8925_backlight_pdata** %5, align 8
  %121 = getelementptr inbounds %struct.max8925_backlight_pdata, %struct.max8925_backlight_pdata* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load %struct.max8925_backlight_pdata*, %struct.max8925_backlight_pdata** %5, align 8
  %126 = getelementptr inbounds %struct.max8925_backlight_pdata, %struct.max8925_backlight_pdata* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @LWX_FREQ(i64 %127)
  %129 = shl i32 %128, 4
  %130 = load i8, i8* %10, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %131, %129
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %10, align 1
  br label %134

134:                                              ; preds = %124, %119
  %135 = load %struct.max8925_backlight_pdata*, %struct.max8925_backlight_pdata** %5, align 8
  %136 = getelementptr inbounds %struct.max8925_backlight_pdata, %struct.max8925_backlight_pdata* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i8, i8* %10, align 1
  %141 = zext i8 %140 to i32
  %142 = or i32 %141, 2
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %10, align 1
  br label %144

144:                                              ; preds = %139, %134
  br label %145

145:                                              ; preds = %144, %102
  %146 = load %struct.max8925_chip*, %struct.max8925_chip** %4, align 8
  %147 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.max8925_backlight_data*, %struct.max8925_backlight_data** %6, align 8
  %150 = getelementptr inbounds %struct.max8925_backlight_data, %struct.max8925_backlight_data* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i8, i8* %10, align 1
  %153 = call i32 @max8925_set_bits(i32 %148, i32 %151, i32 254, i8 zeroext %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %145
  %157 = load i32, i32* %11, align 4
  store i32 %157, i32* %2, align 4
  br label %161

158:                                              ; preds = %145
  %159 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %160 = call i32 @backlight_update_status(%struct.backlight_device* %159)
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %158, %156, %80, %49, %32, %23
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.max8925_chip* @dev_get_drvdata(i32) #1

declare dso_local %struct.max8925_backlight_data* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_7__*, i8*, %struct.TYPE_7__*, %struct.max8925_backlight_data*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @max8925_backlight_dt_init(%struct.platform_device*) #1

declare dso_local i32 @LWX_FREQ(i64) #1

declare dso_local i32 @max8925_set_bits(i32, i32, i32, i8 zeroext) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
