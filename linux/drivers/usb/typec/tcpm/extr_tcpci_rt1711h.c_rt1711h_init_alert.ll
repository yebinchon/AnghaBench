; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci_rt1711h.c_rt1711h_init_alert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpci_rt1711h.c_rt1711h_init_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1711h_chip = type { i32 }
%struct.i2c_client = type { i32 }

@TCPC_ALERT_MASK = common dso_local global i32 0, align 4
@rt1711h_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt1711h_chip*, %struct.i2c_client*)* @rt1711h_init_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1711h_init_alert(%struct.rt1711h_chip* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt1711h_chip*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.rt1711h_chip* %0, %struct.rt1711h_chip** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %7 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %4, align 8
  %8 = load i32, i32* @TCPC_ALERT_MASK, align 4
  %9 = call i32 @rt1711h_write16(%struct.rt1711h_chip* %7, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %4, align 8
  %16 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @rt1711h_irq, align 4
  %22 = load i32, i32* @IRQF_ONESHOT, align 4
  %23 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %4, align 8
  %26 = getelementptr inbounds %struct.rt1711h_chip, %struct.rt1711h_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_name(i32 %27)
  %29 = load %struct.rt1711h_chip*, %struct.rt1711h_chip** %4, align 8
  %30 = call i32 @devm_request_threaded_irq(i32 %17, i32 %20, i32* null, i32 %21, i32 %24, i32 %28, %struct.rt1711h_chip* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %14
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %14
  %36 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @enable_irq_wake(i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %33, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @rt1711h_write16(%struct.rt1711h_chip*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i32, %struct.rt1711h_chip*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
