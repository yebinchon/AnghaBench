; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_quatech_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_quatech_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }

@QPCR_TEST_FOR1 = common dso_local global i32 0, align 4
@QPCR_TEST_GET1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QPCR_TEST_FOR2 = common dso_local global i32 0, align 4
@QPCR_TEST_GET2 = common dso_local global i32 0, align 4
@QPCR_TEST_FOR3 = common dso_local global i32 0, align 4
@QPCR_TEST_GET3 = common dso_local global i32 0, align 4
@QPCR_TEST_FOR4 = common dso_local global i32 0, align 4
@QPCR_TEST_GET4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @pci_quatech_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_quatech_test(%struct.uart_8250_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %7 = call i32 @pci_quatech_rqopr(%struct.uart_8250_port* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @QPCR_TEST_FOR1, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @pci_quatech_wqopr(%struct.uart_8250_port* %8, i32 %11)
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %14 = call i32 @pci_quatech_rqopr(%struct.uart_8250_port* %13)
  %15 = and i32 %14, 192
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @QPCR_TEST_GET1, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %77

22:                                               ; preds = %1
  %23 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @QPCR_TEST_FOR1, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @QPCR_TEST_FOR2, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @pci_quatech_wqopr(%struct.uart_8250_port* %23, i32 %28)
  %30 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %31 = call i32 @pci_quatech_rqopr(%struct.uart_8250_port* %30)
  %32 = and i32 %31, 192
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @QPCR_TEST_GET2, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %77

39:                                               ; preds = %22
  %40 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @QPCR_TEST_FOR1, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @QPCR_TEST_FOR3, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @pci_quatech_wqopr(%struct.uart_8250_port* %40, i32 %45)
  %47 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %48 = call i32 @pci_quatech_rqopr(%struct.uart_8250_port* %47)
  %49 = and i32 %48, 192
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @QPCR_TEST_GET3, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %77

56:                                               ; preds = %39
  %57 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @QPCR_TEST_FOR1, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @QPCR_TEST_FOR4, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @pci_quatech_wqopr(%struct.uart_8250_port* %57, i32 %62)
  %64 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %65 = call i32 @pci_quatech_rqopr(%struct.uart_8250_port* %64)
  %66 = and i32 %65, 192
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @QPCR_TEST_GET4, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %77

73:                                               ; preds = %56
  %74 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @pci_quatech_wqopr(%struct.uart_8250_port* %74, i32 %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %70, %53, %36, %19
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @pci_quatech_rqopr(%struct.uart_8250_port*) #1

declare dso_local i32 @pci_quatech_wqopr(%struct.uart_8250_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
