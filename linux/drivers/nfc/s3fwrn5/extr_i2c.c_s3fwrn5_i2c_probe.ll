; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_i2c.c_s3fwrn5_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_i2c.c_s3fwrn5_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.s3fwrn5_i2c_phy = type { i32, i32, %struct.i2c_client*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S3FWRN5_MODE_COLD = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"s3fwrn5_en\00", align 1
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"s3fwrn5_fw_wake\00", align 1
@i2c_phy_ops = common dso_local global i32 0, align 4
@S3FWRN5_I2C_MAX_PAYLOAD = common dso_local global i32 0, align 4
@s3fwrn5_i2c_irq_thread_fn = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@S3FWRN5_I2C_DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @s3fwrn5_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fwrn5_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.s3fwrn5_i2c_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.s3fwrn5_i2c_phy* @devm_kzalloc(i32* %9, i32 32, i32 %10)
  store %struct.s3fwrn5_i2c_phy* %11, %struct.s3fwrn5_i2c_phy** %6, align 8
  %12 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %13 = icmp ne %struct.s3fwrn5_i2c_phy* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %104

17:                                               ; preds = %2
  %18 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %19 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %18, i32 0, i32 6
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load i32, i32* @S3FWRN5_MODE_COLD, align 4
  %22 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %23 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %25 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %28 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %27, i32 0, i32 2
  store %struct.i2c_client* %26, %struct.i2c_client** %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %31 = call i32 @i2c_set_clientdata(%struct.i2c_client* %29, %struct.s3fwrn5_i2c_phy* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = call i32 @s3fwrn5_i2c_parse_dt(%struct.i2c_client* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %17
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %104

38:                                               ; preds = %17
  %39 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %40 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %39, i32 0, i32 2
  %41 = load %struct.i2c_client*, %struct.i2c_client** %40, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 1
  %43 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %44 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %47 = call i32 @devm_gpio_request_one(i32* %42, i32 %45, i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %104

52:                                               ; preds = %38
  %53 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %54 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %53, i32 0, i32 2
  %55 = load %struct.i2c_client*, %struct.i2c_client** %54, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 1
  %57 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %58 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %61 = call i32 @devm_gpio_request_one(i32* %56, i32 %59, i32 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %104

66:                                               ; preds = %52
  %67 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %68 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %67, i32 0, i32 1
  %69 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %70 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %71 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %70, i32 0, i32 2
  %72 = load %struct.i2c_client*, %struct.i2c_client** %71, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 1
  %74 = load i32, i32* @S3FWRN5_I2C_MAX_PAYLOAD, align 4
  %75 = call i32 @s3fwrn5_probe(i32* %68, %struct.s3fwrn5_i2c_phy* %69, i32* %73, i32* @i2c_phy_ops, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %104

80:                                               ; preds = %66
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 1
  %83 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %84 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %83, i32 0, i32 2
  %85 = load %struct.i2c_client*, %struct.i2c_client** %84, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @s3fwrn5_i2c_irq_thread_fn, align 4
  %89 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %90 = load i32, i32* @IRQF_ONESHOT, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @S3FWRN5_I2C_DRIVER_NAME, align 4
  %93 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %94 = call i32 @devm_request_threaded_irq(i32* %82, i32 %87, i32* null, i32 %88, i32 %91, i32 %92, %struct.s3fwrn5_i2c_phy* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %80
  %98 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %6, align 8
  %99 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @s3fwrn5_remove(i32 %100)
  br label %102

102:                                              ; preds = %97, %80
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %78, %64, %50, %36, %14
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.s3fwrn5_i2c_phy* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.s3fwrn5_i2c_phy*) #1

declare dso_local i32 @s3fwrn5_i2c_parse_dt(%struct.i2c_client*) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local i32 @s3fwrn5_probe(i32*, %struct.s3fwrn5_i2c_phy*, i32*, i32*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.s3fwrn5_i2c_phy*) #1

declare dso_local i32 @s3fwrn5_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
