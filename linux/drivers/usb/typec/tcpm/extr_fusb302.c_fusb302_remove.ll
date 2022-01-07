; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.fusb302_chip = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @fusb302_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.fusb302_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.fusb302_chip* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.fusb302_chip* %5, %struct.fusb302_chip** %3, align 8
  %6 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %7 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @disable_irq_wake(i32 %8)
  %10 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %11 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %14 = call i32 @free_irq(i32 %12, %struct.fusb302_chip* %13)
  %15 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %16 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %15, i32 0, i32 4
  %17 = call i32 @cancel_work_sync(i32* %16)
  %18 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %19 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %18, i32 0, i32 3
  %20 = call i32 @cancel_delayed_work_sync(i32* %19)
  %21 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %22 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tcpm_unregister_port(i32 %23)
  %25 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %26 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fwnode_handle_put(i32 %28)
  %30 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %31 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @destroy_workqueue(i32 %32)
  %34 = load %struct.fusb302_chip*, %struct.fusb302_chip** %3, align 8
  %35 = call i32 @fusb302_debugfs_exit(%struct.fusb302_chip* %34)
  ret i32 0
}

declare dso_local %struct.fusb302_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @free_irq(i32, %struct.fusb302_chip*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @tcpm_unregister_port(i32) #1

declare dso_local i32 @fwnode_handle_put(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @fusb302_debugfs_exit(%struct.fusb302_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
