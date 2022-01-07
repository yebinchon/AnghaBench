; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_serdev_tty_port_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_serdev_tty_port_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { %struct.serdev_controller*, i32* }
%struct.serdev_controller = type { i32 }
%struct.serport = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serdev_tty_port_unregister(%struct.tty_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca %struct.serdev_controller*, align 8
  %5 = alloca %struct.serport*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %3, align 8
  %6 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %7 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %6, i32 0, i32 0
  %8 = load %struct.serdev_controller*, %struct.serdev_controller** %7, align 8
  store %struct.serdev_controller* %8, %struct.serdev_controller** %4, align 8
  %9 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %10 = call %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller* %9)
  store %struct.serport* %10, %struct.serport** %5, align 8
  %11 = load %struct.serport*, %struct.serport** %5, align 8
  %12 = icmp ne %struct.serport* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %18 = call i32 @serdev_controller_remove(%struct.serdev_controller* %17)
  %19 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %20 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %22 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %21, i32 0, i32 0
  store %struct.serdev_controller* null, %struct.serdev_controller** %22, align 8
  %23 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %24 = call i32 @serdev_controller_put(%struct.serdev_controller* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %16, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller*) #1

declare dso_local i32 @serdev_controller_remove(%struct.serdev_controller*) #1

declare dso_local i32 @serdev_controller_put(%struct.serdev_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
