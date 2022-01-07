; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_default_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_default_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { i32 }
%struct.pciserial_board = type { i32, i32, i32, i32 }
%struct.uart_8250_port = type { i32 }

@FL_BASE_BARS = common dso_local global i32 0, align 4
@FL_REGION_SZ_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial_private*, %struct.pciserial_board*, %struct.uart_8250_port*, i32)* @pci_default_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_default_setup(%struct.serial_private* %0, %struct.pciserial_board* %1, %struct.uart_8250_port* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.serial_private*, align 8
  %7 = alloca %struct.pciserial_board*, align 8
  %8 = alloca %struct.uart_8250_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.serial_private* %0, %struct.serial_private** %6, align 8
  store %struct.pciserial_board* %1, %struct.pciserial_board** %7, align 8
  store %struct.uart_8250_port* %2, %struct.uart_8250_port** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %14 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %17 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @FL_GET_BASE(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %21 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FL_BASE_BARS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %38

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %33 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load i32, i32* %11, align 4
  %37 = add i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %30, %26
  %39 = load %struct.serial_private*, %struct.serial_private** %6, align 8
  %40 = getelementptr inbounds %struct.serial_private, %struct.serial_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @pci_resource_len(i32 %41, i32 %42)
  %44 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %45 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub i32 %43, %46
  %48 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %49 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 3
  %52 = lshr i32 %47, %51
  store i32 %52, i32* %12, align 4
  %53 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %54 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @FL_REGION_SZ_CAP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %38
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp uge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  br label %73

64:                                               ; preds = %59, %38
  %65 = load %struct.serial_private*, %struct.serial_private** %6, align 8
  %66 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %70 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @setup_port(%struct.serial_private* %65, %struct.uart_8250_port* %66, i32 %67, i32 %68, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %64, %63
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @FL_GET_BASE(i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @setup_port(%struct.serial_private*, %struct.uart_8250_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
