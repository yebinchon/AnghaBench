; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_i2c.c_create_i2c_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_i2c.c_create_i2c_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.TYPE_2__, %struct.i2c_algo_bit_data*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.i2c_algo_bit_data = type { i32, i32, %struct.via_port_cfg*, i32, i32, i32 (%struct.via_port_cfg*, i32)*, i32 (%struct.via_port_cfg*, i32)* }
%struct.via_port_cfg = type { i32 }
%struct.pci_dev = type { i32 }

@via_i2c_getsda = common dso_local global i32 0, align 4
@via_i2c_getscl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"viafb i2c io_port idx 0x%02x\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_algo_bit_data*, %struct.via_port_cfg*, %struct.pci_dev*)* @create_i2c_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_i2c_bus(%struct.i2c_adapter* %0, %struct.i2c_algo_bit_data* %1, %struct.via_port_cfg* %2, %struct.pci_dev* %3) #0 {
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_algo_bit_data*, align 8
  %7 = alloca %struct.via_port_cfg*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_algo_bit_data* %1, %struct.i2c_algo_bit_data** %6, align 8
  store %struct.via_port_cfg* %2, %struct.via_port_cfg** %7, align 8
  store %struct.pci_dev* %3, %struct.pci_dev** %8, align 8
  %9 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %10 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %9, i32 0, i32 6
  store i32 (%struct.via_port_cfg*, i32)* @via_i2c_setsda, i32 (%struct.via_port_cfg*, i32)** %10, align 8
  %11 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %12 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %11, i32 0, i32 5
  store i32 (%struct.via_port_cfg*, i32)* @via_i2c_setscl, i32 (%struct.via_port_cfg*, i32)** %12, align 8
  %13 = load i32, i32* @via_i2c_getsda, align 4
  %14 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %15 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @via_i2c_getscl, align 4
  %17 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %18 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %20 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %19, i32 0, i32 0
  store i32 10, i32* %20, align 8
  %21 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %22 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %21, i32 0, i32 1
  store i32 2, i32* %22, align 4
  %23 = load %struct.via_port_cfg*, %struct.via_port_cfg** %7, align 8
  %24 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %25 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %24, i32 0, i32 2
  store %struct.via_port_cfg* %23, %struct.via_port_cfg** %25, align 8
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.via_port_cfg*, %struct.via_port_cfg** %7, align 8
  %30 = getelementptr inbounds %struct.via_port_cfg, %struct.via_port_cfg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sprintf(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @I2C_CLASS_DDC, align 4
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %6, align 8
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %40, i32 0, i32 1
  store %struct.i2c_algo_bit_data* %39, %struct.i2c_algo_bit_data** %41, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %43 = icmp ne %struct.pci_dev* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %48 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  br label %54

50:                                               ; preds = %4
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.via_port_cfg*, %struct.via_port_cfg** %7, align 8
  %56 = call i32 @via_i2c_setsda(%struct.via_port_cfg* %55, i32 1)
  %57 = load %struct.via_port_cfg*, %struct.via_port_cfg** %7, align 8
  %58 = call i32 @via_i2c_setscl(%struct.via_port_cfg* %57, i32 1)
  %59 = call i32 @udelay(i32 20)
  %60 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %61 = call i32 @i2c_bit_add_bus(%struct.i2c_adapter* %60)
  ret i32 %61
}

declare dso_local i32 @via_i2c_setsda(%struct.via_port_cfg*, i32) #1

declare dso_local i32 @via_i2c_setscl(%struct.via_port_cfg*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
