; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_register_device_attr_serdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_port.c_tty_port_register_device_attr_serdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32 }
%struct.tty_driver = type { i32 }
%struct.device = type { i32 }
%struct.attribute_group = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @tty_port_register_device_attr_serdev(%struct.tty_port* %0, %struct.tty_driver* %1, i32 %2, %struct.device* %3, i8* %4, %struct.attribute_group** %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.tty_port*, align 8
  %9 = alloca %struct.tty_driver*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.attribute_group**, align 8
  %14 = alloca %struct.device*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %8, align 8
  store %struct.tty_driver* %1, %struct.tty_driver** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.device* %3, %struct.device** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.attribute_group** %5, %struct.attribute_group*** %13, align 8
  %15 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %16 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @tty_port_link_device(%struct.tty_port* %15, %struct.tty_driver* %16, i32 %17)
  %19 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %20 = load %struct.device*, %struct.device** %11, align 8
  %21 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.device* @serdev_tty_port_register(%struct.tty_port* %19, %struct.device* %20, %struct.tty_driver* %21, i32 %22)
  store %struct.device* %23, %struct.device** %14, align 8
  %24 = load %struct.device*, %struct.device** %14, align 8
  %25 = call i32 @PTR_ERR(%struct.device* %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %30, %struct.device** %7, align 8
  br label %38

31:                                               ; preds = %6
  %32 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.device*, %struct.device** %11, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.attribute_group**, %struct.attribute_group*** %13, align 8
  %37 = call %struct.device* @tty_register_device_attr(%struct.tty_driver* %32, i32 %33, %struct.device* %34, i8* %35, %struct.attribute_group** %36)
  store %struct.device* %37, %struct.device** %7, align 8
  br label %38

38:                                               ; preds = %31, %29
  %39 = load %struct.device*, %struct.device** %7, align 8
  ret %struct.device* %39
}

declare dso_local i32 @tty_port_link_device(%struct.tty_port*, %struct.tty_driver*, i32) #1

declare dso_local %struct.device* @serdev_tty_port_register(%struct.tty_port*, %struct.device*, %struct.tty_driver*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local %struct.device* @tty_register_device_attr(%struct.tty_driver*, i32, %struct.device*, i8*, %struct.attribute_group**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
