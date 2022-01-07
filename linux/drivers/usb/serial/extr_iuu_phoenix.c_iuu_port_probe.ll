; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_iuu_phoenix.c_iuu_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_iuu_phoenix.c_iuu_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32 }
%struct.iuu_private = type { %struct.iuu_private*, %struct.iuu_private*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vcc_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @iuu_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iuu_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.iuu_private*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kzalloc(i32 24, i32 %6)
  %8 = bitcast i8* %7 to %struct.iuu_private*
  store %struct.iuu_private* %8, %struct.iuu_private** %4, align 8
  %9 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %10 = icmp ne %struct.iuu_private* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %75

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kzalloc(i32 256, i32 %15)
  %17 = bitcast i8* %16 to %struct.iuu_private*
  %18 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %19 = getelementptr inbounds %struct.iuu_private, %struct.iuu_private* %18, i32 0, i32 0
  store %struct.iuu_private* %17, %struct.iuu_private** %19, align 8
  %20 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %21 = getelementptr inbounds %struct.iuu_private, %struct.iuu_private* %20, i32 0, i32 0
  %22 = load %struct.iuu_private*, %struct.iuu_private** %21, align 8
  %23 = icmp ne %struct.iuu_private* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %26 = call i32 @kfree(%struct.iuu_private* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %75

29:                                               ; preds = %14
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 256, i32 %30)
  %32 = bitcast i8* %31 to %struct.iuu_private*
  %33 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %34 = getelementptr inbounds %struct.iuu_private, %struct.iuu_private* %33, i32 0, i32 1
  store %struct.iuu_private* %32, %struct.iuu_private** %34, align 8
  %35 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %36 = getelementptr inbounds %struct.iuu_private, %struct.iuu_private* %35, i32 0, i32 1
  %37 = load %struct.iuu_private*, %struct.iuu_private** %36, align 8
  %38 = icmp ne %struct.iuu_private* %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %29
  %40 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %41 = getelementptr inbounds %struct.iuu_private, %struct.iuu_private* %40, i32 0, i32 0
  %42 = load %struct.iuu_private*, %struct.iuu_private** %41, align 8
  %43 = call i32 @kfree(%struct.iuu_private* %42)
  %44 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %45 = call i32 @kfree(%struct.iuu_private* %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %75

48:                                               ; preds = %29
  %49 = load i32, i32* @vcc_default, align 4
  %50 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %51 = getelementptr inbounds %struct.iuu_private, %struct.iuu_private* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %53 = getelementptr inbounds %struct.iuu_private, %struct.iuu_private* %52, i32 0, i32 2
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %56 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %57 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %55, %struct.iuu_private* %56)
  %58 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %59 = call i32 @iuu_create_sysfs_attrs(%struct.usb_serial_port* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %48
  %63 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %64 = getelementptr inbounds %struct.iuu_private, %struct.iuu_private* %63, i32 0, i32 1
  %65 = load %struct.iuu_private*, %struct.iuu_private** %64, align 8
  %66 = call i32 @kfree(%struct.iuu_private* %65)
  %67 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %68 = getelementptr inbounds %struct.iuu_private, %struct.iuu_private* %67, i32 0, i32 0
  %69 = load %struct.iuu_private*, %struct.iuu_private** %68, align 8
  %70 = call i32 @kfree(%struct.iuu_private* %69)
  %71 = load %struct.iuu_private*, %struct.iuu_private** %4, align 8
  %72 = call i32 @kfree(%struct.iuu_private* %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %75

74:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %62, %39, %24, %11
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.iuu_private*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.iuu_private*) #1

declare dso_local i32 @iuu_create_sysfs_attrs(%struct.usb_serial_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
