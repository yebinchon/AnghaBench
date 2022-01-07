; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_serial.c_parport_serial_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_serial.c_parport_serial_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.parport_serial_private = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @parport_serial_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_serial_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.parport_serial_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.parport_serial_private* @devm_kzalloc(i32* %10, i32 16, i32 %11)
  store %struct.parport_serial_private* %12, %struct.parport_serial_private** %6, align 8
  %13 = load %struct.parport_serial_private*, %struct.parport_serial_private** %6, align 8
  %14 = icmp ne %struct.parport_serial_private* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = load %struct.parport_serial_private*, %struct.parport_serial_private** %6, align 8
  %21 = call i32 @pci_set_drvdata(%struct.pci_dev* %19, %struct.parport_serial_private* %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pcim_enable_device(%struct.pci_dev* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %64

28:                                               ; preds = %18
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %31 = call i32 @parport_register(%struct.pci_dev* %29, %struct.pci_device_id* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %64

36:                                               ; preds = %28
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %39 = call i32 @serial_register(%struct.pci_dev* %37, %struct.pci_device_id* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.parport_serial_private*, %struct.parport_serial_private** %6, align 8
  %46 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.parport_serial_private*, %struct.parport_serial_private** %6, align 8
  %51 = getelementptr inbounds %struct.parport_serial_private, %struct.parport_serial_private* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @parport_pc_unregister_port(i32 %56)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %61, %34, %26, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.parport_serial_private* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.parport_serial_private*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @parport_register(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @serial_register(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @parport_pc_unregister_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
