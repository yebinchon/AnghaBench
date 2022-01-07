; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_sbs_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_sbs_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { i32 }
%struct.pciserial_board = type { i32, i32, i32 }
%struct.uart_8250_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial_private*, %struct.pciserial_board*, %struct.uart_8250_port*, i32)* @sbs_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbs_setup(%struct.serial_private* %0, %struct.pciserial_board* %1, %struct.uart_8250_port* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.serial_private*, align 8
  %7 = alloca %struct.pciserial_board*, align 8
  %8 = alloca %struct.uart_8250_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.serial_private* %0, %struct.serial_private** %6, align 8
  store %struct.pciserial_board* %1, %struct.pciserial_board** %7, align 8
  store %struct.uart_8250_port* %2, %struct.uart_8250_port** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %13 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %20 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = load i32, i32* %11, align 4
  %24 = add i32 %23, %22
  store i32 %24, i32* %11, align 4
  br label %39

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %31 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = add nsw i32 %33, 3072
  %35 = load i32, i32* %11, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %11, align 4
  br label %38

37:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %48

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %17
  %40 = load %struct.serial_private*, %struct.serial_private** %6, align 8
  %41 = load %struct.uart_8250_port*, %struct.uart_8250_port** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.pciserial_board*, %struct.pciserial_board** %7, align 8
  %45 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @setup_port(%struct.serial_private* %40, %struct.uart_8250_port* %41, i32 %42, i32 %43, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %39, %37
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @setup_port(%struct.serial_private*, %struct.uart_8250_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
