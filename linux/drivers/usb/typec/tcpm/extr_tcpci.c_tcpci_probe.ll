; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci.c_tcpci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.tcpci_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tcpci_regmap_config = common dso_local global i32 0, align 4
@TCPC_ALERT_MASK = common dso_local global i32 0, align 4
@_tcpci_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tcpci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpci_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tcpci_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tcpci_chip* @devm_kzalloc(i32* %10, i32 8, i32 %11)
  store %struct.tcpci_chip* %12, %struct.tcpci_chip** %6, align 8
  %13 = load %struct.tcpci_chip*, %struct.tcpci_chip** %6, align 8
  %14 = icmp ne %struct.tcpci_chip* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %92

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %19, i32* @tcpci_regmap_config)
  %21 = load %struct.tcpci_chip*, %struct.tcpci_chip** %6, align 8
  %22 = getelementptr inbounds %struct.tcpci_chip, %struct.tcpci_chip* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.tcpci_chip*, %struct.tcpci_chip** %6, align 8
  %25 = getelementptr inbounds %struct.tcpci_chip, %struct.tcpci_chip* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load %struct.tcpci_chip*, %struct.tcpci_chip** %6, align 8
  %32 = getelementptr inbounds %struct.tcpci_chip, %struct.tcpci_chip* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %92

36:                                               ; preds = %18
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.tcpci_chip*, %struct.tcpci_chip** %6, align 8
  %39 = call i32 @i2c_set_clientdata(%struct.i2c_client* %37, %struct.tcpci_chip* %38)
  %40 = load %struct.tcpci_chip*, %struct.tcpci_chip** %6, align 8
  %41 = getelementptr inbounds %struct.tcpci_chip, %struct.tcpci_chip* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TCPC_ALERT_MASK, align 4
  %45 = call i32 @regmap_raw_write(i32 %43, i32 %44, i32* %8, i32 4)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %92

50:                                               ; preds = %36
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load %struct.tcpci_chip*, %struct.tcpci_chip** %6, align 8
  %54 = getelementptr inbounds %struct.tcpci_chip, %struct.tcpci_chip* %53, i32 0, i32 1
  %55 = call i32 @tcpci_register_port(i32* %52, %struct.TYPE_2__* %54)
  %56 = load %struct.tcpci_chip*, %struct.tcpci_chip** %6, align 8
  %57 = getelementptr inbounds %struct.tcpci_chip, %struct.tcpci_chip* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.tcpci_chip*, %struct.tcpci_chip** %6, align 8
  %59 = getelementptr inbounds %struct.tcpci_chip, %struct.tcpci_chip* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = load %struct.tcpci_chip*, %struct.tcpci_chip** %6, align 8
  %65 = getelementptr inbounds %struct.tcpci_chip, %struct.tcpci_chip* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %3, align 4
  br label %92

68:                                               ; preds = %50
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @_tcpci_irq, align 4
  %75 = load i32, i32* @IRQF_ONESHOT, align 4
  %76 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = call i32 @dev_name(i32* %79)
  %81 = load %struct.tcpci_chip*, %struct.tcpci_chip** %6, align 8
  %82 = call i32 @devm_request_threaded_irq(i32* %70, i32 %73, i32* null, i32 %74, i32 %77, i32 %80, %struct.tcpci_chip* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %68
  %86 = load %struct.tcpci_chip*, %struct.tcpci_chip** %6, align 8
  %87 = getelementptr inbounds %struct.tcpci_chip, %struct.tcpci_chip* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @tcpci_unregister_port(i32 %88)
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %92

91:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %85, %63, %48, %30, %15
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.tcpci_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tcpci_chip*) #1

declare dso_local i32 @regmap_raw_write(i32, i32, i32*, i32) #1

declare dso_local i32 @tcpci_register_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.tcpci_chip*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @tcpci_unregister_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
