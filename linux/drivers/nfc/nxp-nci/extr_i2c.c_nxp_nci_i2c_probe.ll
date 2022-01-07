; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_i2c.c_nxp_nci_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_i2c.c_nxp_nci_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device, i32, i32 }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.nxp_nci_i2c_phy = type { i32, i8*, i8*, %struct.i2c_client* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Need I2C_FUNC_I2C\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@acpi_nxp_nci_gpios = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to get EN gpio\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Failed to get FW gpio\0A\00", align 1
@i2c_phy_ops = common dso_local global i32 0, align 4
@NXP_NCI_I2C_MAX_PAYLOAD = common dso_local global i32 0, align 4
@nxp_nci_i2c_irq_thread_fn = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@NXP_NCI_I2C_DRIVER_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Unable to register IRQ handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @nxp_nci_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_nci_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.nxp_nci_i2c_phy*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @I2C_FUNC_I2C, align 4
  %15 = call i32 @i2c_check_functionality(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 @nfc_err(%struct.device* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %114

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.nxp_nci_i2c_phy* @devm_kzalloc(%struct.device* %25, i32 32, i32 %26)
  store %struct.nxp_nci_i2c_phy* %27, %struct.nxp_nci_i2c_phy** %7, align 8
  %28 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %7, align 8
  %29 = icmp ne %struct.nxp_nci_i2c_phy* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %114

33:                                               ; preds = %23
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %7, align 8
  %36 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %35, i32 0, i32 3
  store %struct.i2c_client* %34, %struct.i2c_client** %36, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %7, align 8
  %39 = call i32 @i2c_set_clientdata(%struct.i2c_client* %37, %struct.nxp_nci_i2c_phy* %38)
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load i32, i32* @acpi_nxp_nci_gpios, align 4
  %42 = call i32 @devm_acpi_dev_add_driver_gpios(%struct.device* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %114

47:                                               ; preds = %33
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %50 = call i8* @devm_gpiod_get(%struct.device* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %7, align 8
  %52 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %7, align 8
  %54 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 @nfc_err(%struct.device* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %7, align 8
  %62 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %3, align 4
  br label %114

65:                                               ; preds = %47
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %68 = call i8* @devm_gpiod_get(%struct.device* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %7, align 8
  %70 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %7, align 8
  %72 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @IS_ERR(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %65
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = call i32 @nfc_err(%struct.device* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %79 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %7, align 8
  %80 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %3, align 4
  br label %114

83:                                               ; preds = %65
  %84 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %7, align 8
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i32, i32* @NXP_NCI_I2C_MAX_PAYLOAD, align 4
  %88 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %7, align 8
  %89 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %88, i32 0, i32 0
  %90 = call i32 @nxp_nci_probe(%struct.nxp_nci_i2c_phy* %84, %struct.device* %86, i32* @i2c_phy_ops, i32 %87, i32* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %114

95:                                               ; preds = %83
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @nxp_nci_i2c_irq_thread_fn, align 4
  %100 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %101 = load i32, i32* @IRQF_ONESHOT, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @NXP_NCI_I2C_DRIVER_NAME, align 4
  %104 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %7, align 8
  %105 = call i32 @request_threaded_irq(i32 %98, i32* null, i32 %99, i32 %102, i32 %103, %struct.nxp_nci_i2c_phy* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %95
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = call i32 @nfc_err(%struct.device* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %112

112:                                              ; preds = %108, %95
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %93, %76, %58, %45, %30, %17
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @nfc_err(%struct.device*, i8*) #1

declare dso_local %struct.nxp_nci_i2c_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.nxp_nci_i2c_phy*) #1

declare dso_local i32 @devm_acpi_dev_add_driver_gpios(%struct.device*, i32) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @nxp_nci_probe(%struct.nxp_nci_i2c_phy*, %struct.device*, i32*, i32, i32*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.nxp_nci_i2c_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
