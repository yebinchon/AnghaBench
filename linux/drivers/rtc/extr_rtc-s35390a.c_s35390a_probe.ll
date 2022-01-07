; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32, i64, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.s35390a = type { i32, %struct.i2c_client*, %struct.i2c_client** }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Address %02x unavailable\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"error resetting chip\0A\00", align 1
@S35390A_FLAG_24H = common dso_local global i8 0, align 1
@S35390A_FLAG_INT2 = common dso_local global i8 0, align 1
@S35390A_CMD_STATUS2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"error disabling alarm\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"error disabling test mode\0A\00", align 1
@s35390a_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@s35390a_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @s35390a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s35390a_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s35390a*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 3
  store %struct.device* %14, %struct.device** %12, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @I2C_FUNC_I2C, align 4
  %19 = call i32 @i2c_check_functionality(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %180

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %12, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.s35390a* @devm_kzalloc(%struct.device* %25, i32 24, i32 %26)
  store %struct.s35390a* %27, %struct.s35390a** %9, align 8
  %28 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %29 = icmp ne %struct.s35390a* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %180

33:                                               ; preds = %24
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %36 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %35, i32 0, i32 2
  %37 = load %struct.i2c_client**, %struct.i2c_client*** %36, align 8
  %38 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %37, i64 0
  store %struct.i2c_client* %34, %struct.i2c_client** %38, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %41 = call i32 @i2c_set_clientdata(%struct.i2c_client* %39, %struct.s35390a* %40)
  store i32 1, i32* %8, align 4
  br label %42

42:                                               ; preds = %90, %33
  %43 = load i32, i32* %8, align 4
  %44 = icmp ult i32 %43, 8
  br i1 %44, label %45, label %93

45:                                               ; preds = %42
  %46 = load %struct.device*, %struct.device** %12, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call %struct.i2c_client* @devm_i2c_new_dummy_device(%struct.device* %46, i32 %49, i64 %55)
  %57 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %58 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %57, i32 0, i32 2
  %59 = load %struct.i2c_client**, %struct.i2c_client*** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %59, i64 %61
  store %struct.i2c_client* %56, %struct.i2c_client** %62, align 8
  %63 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %64 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %63, i32 0, i32 2
  %65 = load %struct.i2c_client**, %struct.i2c_client*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %65, i64 %67
  %69 = load %struct.i2c_client*, %struct.i2c_client** %68, align 8
  %70 = call i64 @IS_ERR(%struct.i2c_client* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %45
  %73 = load %struct.device*, %struct.device** %12, align 8
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %82 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %81, i32 0, i32 2
  %83 = load %struct.i2c_client**, %struct.i2c_client*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %83, i64 %85
  %87 = load %struct.i2c_client*, %struct.i2c_client** %86, align 8
  %88 = call i32 @PTR_ERR(%struct.i2c_client* %87)
  store i32 %88, i32* %3, align 4
  br label %180

89:                                               ; preds = %45
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %42

93:                                               ; preds = %42
  %94 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %95 = call i32 @s35390a_read_status(%struct.s35390a* %94, i8* %11)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.device*, %struct.device** %12, align 8
  %100 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %180

102:                                              ; preds = %93
  %103 = load i8, i8* %11, align 1
  %104 = sext i8 %103 to i32
  %105 = load i8, i8* @S35390A_FLAG_24H, align 1
  %106 = sext i8 %105 to i32
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %111 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  br label %115

112:                                              ; preds = %102
  %113 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %114 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i8, i8* %11, align 1
  %117 = sext i8 %116 to i32
  %118 = load i8, i8* @S35390A_FLAG_INT2, align 1
  %119 = sext i8 %118 to i32
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %115
  store i8 0, i8* %10, align 1
  %123 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %124 = load i32, i32* @S35390A_CMD_STATUS2, align 4
  %125 = call i32 @s35390a_set_reg(%struct.s35390a* %123, i32 %124, i8* %10, i32 1)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load %struct.device*, %struct.device** %12, align 8
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %180

132:                                              ; preds = %122
  br label %143

133:                                              ; preds = %115
  %134 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %135 = call i32 @s35390a_disable_test_mode(%struct.s35390a* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.device*, %struct.device** %12, align 8
  %140 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %3, align 4
  br label %180

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %132
  %144 = load %struct.device*, %struct.device** %12, align 8
  %145 = call i32 @device_set_wakeup_capable(%struct.device* %144, i32 1)
  %146 = load %struct.device*, %struct.device** %12, align 8
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s35390a_driver, i32 0, i32 0, i32 0), align 4
  %148 = load i32, i32* @THIS_MODULE, align 4
  %149 = call %struct.i2c_client* @devm_rtc_device_register(%struct.device* %146, i32 %147, i32* @s35390a_rtc_ops, i32 %148)
  %150 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %151 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %150, i32 0, i32 1
  store %struct.i2c_client* %149, %struct.i2c_client** %151, align 8
  %152 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %153 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %152, i32 0, i32 1
  %154 = load %struct.i2c_client*, %struct.i2c_client** %153, align 8
  %155 = call i64 @IS_ERR(%struct.i2c_client* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %143
  %158 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %159 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %158, i32 0, i32 1
  %160 = load %struct.i2c_client*, %struct.i2c_client** %159, align 8
  %161 = call i32 @PTR_ERR(%struct.i2c_client* %160)
  store i32 %161, i32* %3, align 4
  br label %180

162:                                              ; preds = %143
  %163 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %164 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %163, i32 0, i32 1
  %165 = load %struct.i2c_client*, %struct.i2c_client** %164, align 8
  %166 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  %167 = load i8, i8* %11, align 1
  %168 = sext i8 %167 to i32
  %169 = load i8, i8* @S35390A_FLAG_INT2, align 1
  %170 = sext i8 %169 to i32
  %171 = and i32 %168, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %162
  %174 = load %struct.s35390a*, %struct.s35390a** %9, align 8
  %175 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %174, i32 0, i32 1
  %176 = load %struct.i2c_client*, %struct.i2c_client** %175, align 8
  %177 = load i32, i32* @RTC_AF, align 4
  %178 = call i32 @rtc_update_irq(%struct.i2c_client* %176, i32 1, i32 %177)
  br label %179

179:                                              ; preds = %173, %162
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %157, %138, %128, %98, %72, %30, %21
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.s35390a* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.s35390a*) #1

declare dso_local %struct.i2c_client* @devm_i2c_new_dummy_device(%struct.device*, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_client*) #1

declare dso_local i32 @s35390a_read_status(%struct.s35390a*, i8*) #1

declare dso_local i32 @s35390a_set_reg(%struct.s35390a*, i32, i8*, i32) #1

declare dso_local i32 @s35390a_disable_test_mode(%struct.s35390a*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.device*, i32) #1

declare dso_local %struct.i2c_client* @devm_rtc_device_register(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @rtc_update_irq(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
