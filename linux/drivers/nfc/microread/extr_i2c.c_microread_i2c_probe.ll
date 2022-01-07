; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_i2c.c_microread_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_i2c.c_microread_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.microread_i2c_phy = type { i32, %struct.i2c_client* }

@.str = private unnamed_addr constant [11 x i8] c"client %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@microread_i2c_irq_thread_fn = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@MICROREAD_I2C_DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to register IRQ handler\0A\00", align 1
@i2c_phy_ops = common dso_local global i32 0, align 4
@LLC_SHDLC_NAME = common dso_local global i32 0, align 4
@MICROREAD_I2C_FRAME_HEADROOM = common dso_local global i32 0, align 4
@MICROREAD_I2C_FRAME_TAILROOM = common dso_local global i32 0, align 4
@MICROREAD_I2C_LLC_MAX_PAYLOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @microread_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microread_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.microread_i2c_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.i2c_client* %10)
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.microread_i2c_phy* @devm_kzalloc(i32* %13, i32 16, i32 %14)
  store %struct.microread_i2c_phy* %15, %struct.microread_i2c_phy** %6, align 8
  %16 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %17 = icmp ne %struct.microread_i2c_phy* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %24 = call i32 @i2c_set_clientdata(%struct.i2c_client* %22, %struct.microread_i2c_phy* %23)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %27 = getelementptr inbounds %struct.microread_i2c_phy, %struct.microread_i2c_phy* %26, i32 0, i32 1
  store %struct.i2c_client* %25, %struct.i2c_client** %27, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @microread_i2c_irq_thread_fn, align 4
  %32 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %33 = load i32, i32* @IRQF_ONESHOT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MICROREAD_I2C_DRIVER_NAME, align 4
  %36 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %37 = call i32 @request_threaded_irq(i32 %30, i32* null, i32 %31, i32 %34, i32 %35, %struct.microread_i2c_phy* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %21
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 1
  %43 = call i32 @nfc_err(i32* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %68

45:                                               ; preds = %21
  %46 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %47 = load i32, i32* @LLC_SHDLC_NAME, align 4
  %48 = load i32, i32* @MICROREAD_I2C_FRAME_HEADROOM, align 4
  %49 = load i32, i32* @MICROREAD_I2C_FRAME_TAILROOM, align 4
  %50 = load i32, i32* @MICROREAD_I2C_LLC_MAX_PAYLOAD, align 4
  %51 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %52 = getelementptr inbounds %struct.microread_i2c_phy, %struct.microread_i2c_phy* %51, i32 0, i32 0
  %53 = call i32 @microread_probe(%struct.microread_i2c_phy* %46, i32* @i2c_phy_ops, i32 %47, i32 %48, i32 %49, i32 %50, i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %61

57:                                               ; preds = %45
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 1
  %60 = call i32 @nfc_info(i32* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %68

61:                                               ; preds = %56
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %66 = call i32 @free_irq(i32 %64, %struct.microread_i2c_phy* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %61, %57, %40, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.i2c_client*) #1

declare dso_local %struct.microread_i2c_phy* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.microread_i2c_phy*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.microread_i2c_phy*) #1

declare dso_local i32 @nfc_err(i32*, i8*) #1

declare dso_local i32 @microread_probe(%struct.microread_i2c_phy*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nfc_info(i32*, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.microread_i2c_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
