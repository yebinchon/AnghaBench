; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_exar.c_default_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_exar.c_default_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exar8250 = type { i64, %struct.exar8250_board* }
%struct.exar8250_board = type { i32 }
%struct.pci_dev = type { i32 }
%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i32, i64, i32 }

@UPIO_MEM = common dso_local global i32 0, align 4
@UART_EXAR_DVID = common dso_local global i64 0, align 8
@PORT_XR17V35X = common dso_local global i32 0, align 4
@xr17v35x_get_divisor = common dso_local global i32 0, align 4
@xr17v35x_set_divisor = common dso_local global i32 0, align 4
@PORT_XR17D15X = common dso_local global i32 0, align 4
@exar_pm = common dso_local global i32 0, align 4
@exar_shutdown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exar8250*, %struct.pci_dev*, i32, i32, %struct.uart_8250_port*)* @default_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_setup(%struct.exar8250* %0, %struct.pci_dev* %1, i32 %2, i32 %3, %struct.uart_8250_port* %4) #0 {
  %6 = alloca %struct.exar8250*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uart_8250_port*, align 8
  %11 = alloca %struct.exar8250_board*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.exar8250* %0, %struct.exar8250** %6, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.uart_8250_port* %4, %struct.uart_8250_port** %10, align 8
  %14 = load %struct.exar8250*, %struct.exar8250** %6, align 8
  %15 = getelementptr inbounds %struct.exar8250, %struct.exar8250* %14, i32 0, i32 1
  %16 = load %struct.exar8250_board*, %struct.exar8250_board** %15, align 8
  store %struct.exar8250_board* %16, %struct.exar8250_board** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @UPIO_MEM, align 4
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %10, align 8
  %19 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 8
  store i32 %17, i32* %20, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i64 @pci_resource_start(%struct.pci_dev* %21, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load %struct.uart_8250_port*, %struct.uart_8250_port** %10, align 8
  %28 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 7
  store i64 %26, i64* %29, align 8
  %30 = load %struct.exar8250*, %struct.exar8250** %6, align 8
  %31 = getelementptr inbounds %struct.exar8250, %struct.exar8250* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.uart_8250_port*, %struct.uart_8250_port** %10, align 8
  %37 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  store i64 %35, i64* %38, align 8
  %39 = load %struct.exar8250_board*, %struct.exar8250_board** %11, align 8
  %40 = getelementptr inbounds %struct.exar8250_board, %struct.exar8250_board* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.uart_8250_port*, %struct.uart_8250_port** %10, align 8
  %43 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 6
  store i32 %41, i32* %44, align 8
  %45 = load %struct.uart_8250_port*, %struct.uart_8250_port** %10, align 8
  %46 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @UART_EXAR_DVID, align 8
  %50 = add nsw i64 %48, %49
  %51 = call zeroext i8 @readb(i64 %50)
  store i8 %51, i8* %13, align 1
  %52 = load i8, i8* %13, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 130
  br i1 %54, label %63, label %55

55:                                               ; preds = %5
  %56 = load i8, i8* %13, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 132
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i8, i8* %13, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 136
  br i1 %62, label %63, label %76

63:                                               ; preds = %59, %55, %5
  %64 = load i32, i32* @PORT_XR17V35X, align 4
  %65 = load %struct.uart_8250_port*, %struct.uart_8250_port** %10, align 8
  %66 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @xr17v35x_get_divisor, align 4
  %69 = load %struct.uart_8250_port*, %struct.uart_8250_port** %10, align 8
  %70 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @xr17v35x_set_divisor, align 4
  %73 = load %struct.uart_8250_port*, %struct.uart_8250_port** %10, align 8
  %74 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 4
  br label %81

76:                                               ; preds = %59
  %77 = load i32, i32* @PORT_XR17D15X, align 4
  %78 = load %struct.uart_8250_port*, %struct.uart_8250_port** %10, align 8
  %79 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %63
  %82 = load i32, i32* @exar_pm, align 4
  %83 = load %struct.uart_8250_port*, %struct.uart_8250_port** %10, align 8
  %84 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @exar_shutdown, align 4
  %87 = load %struct.uart_8250_port*, %struct.uart_8250_port** %10, align 8
  %88 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  ret i32 0
}

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local zeroext i8 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
