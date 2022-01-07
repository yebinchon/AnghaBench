; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_fintek_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_fintek_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.serial_private = type { i32* }
%struct.uart_8250_port = type { i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @pci_fintek_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_fintek_init(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.serial_private*, align 8
  %10 = alloca %struct.uart_8250_port*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call %struct.serial_private* @pci_get_drvdata(%struct.pci_dev* %11)
  store %struct.serial_private* %12, %struct.serial_private** %9, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call i32 @pci_resource_flags(%struct.pci_dev* %13, i32 5)
  %15 = load i32, i32* @IORESOURCE_IO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = call i32 @pci_resource_flags(%struct.pci_dev* %19, i32 4)
  %21 = load i32, i32* @IORESOURCE_IO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = call i32 @pci_resource_flags(%struct.pci_dev* %25, i32 3)
  %27 = load i32, i32* @IORESOURCE_IO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24, %18, %1
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %130

33:                                               ; preds = %24
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %43 [
    i32 4356, label %37
    i32 4360, label %37
    i32 4370, label %42
  ]

37:                                               ; preds = %33, %33
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 255
  store i32 %41, i32* %5, align 4
  br label %46

42:                                               ; preds = %33
  store i32 12, i32* %5, align 4
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %130

46:                                               ; preds = %42, %37
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = call i32 @pci_resource_start(%struct.pci_dev* %47, i32 5)
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %51 = call i32 @pci_resource_start(%struct.pci_dev* %50, i32 4)
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = call i32 @pci_resource_start(%struct.pci_dev* %53, i32 3)
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 %54, i32* %55, align 4
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %125, %46
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %128

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 8, %61
  %63 = add nsw i32 64, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sdiv i32 %64, 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, -32
  %70 = load i32, i32* %6, align 4
  %71 = srem i32 %70, 4
  %72 = mul nsw i32 %71, 8
  %73 = add i32 %69, %72
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %4, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 0
  %78 = call i32 @pci_write_config_byte(%struct.pci_dev* %75, i32 %77, i32 1)
  %79 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 @pci_write_config_byte(%struct.pci_dev* %79, i32 %81, i32 51)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 4
  %86 = load i64, i64* %4, align 8
  %87 = and i64 %86, 255
  %88 = trunc i64 %87 to i32
  %89 = call i32 @pci_write_config_byte(%struct.pci_dev* %83, i32 %85, i32 %88)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 5
  %93 = load i64, i64* %4, align 8
  %94 = and i64 %93, 65280
  %95 = lshr i64 %94, 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @pci_write_config_byte(%struct.pci_dev* %90, i32 %92, i32 %96)
  %98 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 6
  %101 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @pci_write_config_byte(%struct.pci_dev* %98, i32 %100, i32 %103)
  %105 = load %struct.serial_private*, %struct.serial_private** %9, align 8
  %106 = icmp ne %struct.serial_private* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %60
  %108 = load %struct.serial_private*, %struct.serial_private** %9, align 8
  %109 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.uart_8250_port* @serial8250_get_port(i32 %114)
  store %struct.uart_8250_port* %115, %struct.uart_8250_port** %10, align 8
  %116 = load %struct.uart_8250_port*, %struct.uart_8250_port** %10, align 8
  %117 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %116, i32 0, i32 0
  %118 = call i32 @pci_fintek_rs485_config(i32* %117, i32* null)
  br label %124

119:                                              ; preds = %60
  %120 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 7
  %123 = call i32 @pci_write_config_byte(%struct.pci_dev* %120, i32 %122, i32 1)
  br label %124

124:                                              ; preds = %119, %107
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %56

128:                                              ; preds = %56
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %43, %30
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.serial_private* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local %struct.uart_8250_port* @serial8250_get_port(i32) #1

declare dso_local i32 @pci_fintek_rs485_config(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
