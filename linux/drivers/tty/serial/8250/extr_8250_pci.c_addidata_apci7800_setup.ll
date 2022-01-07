; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_addidata_apci7800_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_addidata_apci7800_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_private = type { i32 }
%struct.pciserial_board = type { i32, i32, i32, i32 }
%struct.uart_8250_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial_private*, %struct.pciserial_board*, %struct.uart_8250_port*, i32)* @addidata_apci7800_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addidata_apci7800_setup(%struct.serial_private* %0, %struct.pciserial_board* %1, %struct.uart_8250_port* %2, i32 %3) #0 {
  %5 = alloca %struct.serial_private*, align 8
  %6 = alloca %struct.pciserial_board*, align 8
  %7 = alloca %struct.uart_8250_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.serial_private* %0, %struct.serial_private** %5, align 8
  store %struct.pciserial_board* %1, %struct.pciserial_board** %6, align 8
  store %struct.uart_8250_port* %2, %struct.uart_8250_port** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %12 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %15 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @FL_GET_BASE(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %23 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = load i32, i32* %10, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %79

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 2
  %39 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %40 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %78

45:                                               ; preds = %31, %28
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 4
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 6
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 2
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %54, 4
  %56 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %57 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %77

62:                                               ; preds = %48, %45
  %63 = load i32, i32* %8, align 4
  %64 = icmp sge i32 %63, 6
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 3
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 6
  %70 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %71 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = load i32, i32* %10, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %65, %62
  br label %77

77:                                               ; preds = %76, %51
  br label %78

78:                                               ; preds = %77, %34
  br label %79

79:                                               ; preds = %78, %20
  %80 = load %struct.serial_private*, %struct.serial_private** %5, align 8
  %81 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.pciserial_board*, %struct.pciserial_board** %6, align 8
  %85 = getelementptr inbounds %struct.pciserial_board, %struct.pciserial_board* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @setup_port(%struct.serial_private* %80, %struct.uart_8250_port* %81, i32 %82, i32 %83, i32 %86)
  ret i32 %87
}

declare dso_local i32 @FL_GET_BASE(i32) #1

declare dso_local i32 @setup_port(%struct.serial_private*, %struct.uart_8250_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
