; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ark3116.c_ark3116_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ark3116.c_ark3116_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }
%struct.ark3116_private = type { i32, i32, i64, i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"using %s mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"IrDA\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"RS232\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*)* @ark3116_port_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ark3116_port_probe(%struct.usb_serial_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.ark3116_private*, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  %6 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %7 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %6, i32 0, i32 1
  %8 = load %struct.usb_serial*, %struct.usb_serial** %7, align 8
  store %struct.usb_serial* %8, %struct.usb_serial** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ark3116_private* @kzalloc(i32 40, i32 %9)
  store %struct.ark3116_private* %10, %struct.ark3116_private** %5, align 8
  %11 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %12 = icmp ne %struct.ark3116_private* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %110

16:                                               ; preds = %1
  %17 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %18 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %17, i32 0, i32 6
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %21 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %20, i32 0, i32 5
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %24 = call i64 @is_irda(%struct.usb_serial* %23)
  %25 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %26 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %28 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %29 = call i32 @usb_set_serial_port_data(%struct.usb_serial_port* %27, %struct.ark3116_private* %28)
  %30 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %31 = load i32, i32* @UART_IER, align 4
  %32 = call i32 @ark3116_write_reg(%struct.usb_serial* %30, i32 %31, i32 0)
  %33 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %34 = load i32, i32* @UART_FCR, align 4
  %35 = call i32 @ark3116_write_reg(%struct.usb_serial* %33, i32 %34, i32 0)
  %36 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %37 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %39 = call i32 @ark3116_write_reg(%struct.usb_serial* %38, i32 8, i32 0)
  %40 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %41 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %43 = load i32, i32* @UART_MCR, align 4
  %44 = call i32 @ark3116_write_reg(%struct.usb_serial* %42, i32 %43, i32 0)
  %45 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %46 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %16
  %50 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %51 = call i32 @ark3116_write_reg(%struct.usb_serial* %50, i32 11, i32 0)
  br label %61

52:                                               ; preds = %16
  %53 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %54 = call i32 @ark3116_write_reg(%struct.usb_serial* %53, i32 11, i32 1)
  %55 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %56 = call i32 @ark3116_write_reg(%struct.usb_serial* %55, i32 12, i32 0)
  %57 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %58 = call i32 @ark3116_write_reg(%struct.usb_serial* %57, i32 13, i32 65)
  %59 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %60 = call i32 @ark3116_write_reg(%struct.usb_serial* %59, i32 10, i32 1)
  br label %61

61:                                               ; preds = %52, %49
  %62 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %63 = load i32, i32* @UART_LCR, align 4
  %64 = load i32, i32* @UART_LCR_DLAB, align 4
  %65 = call i32 @ark3116_write_reg(%struct.usb_serial* %62, i32 %63, i32 %64)
  %66 = call i32 @calc_divisor(i32 9600)
  %67 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %68 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %70 = load i32, i32* @UART_DLL, align 4
  %71 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %72 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 255
  %75 = call i32 @ark3116_write_reg(%struct.usb_serial* %69, i32 %70, i32 %74)
  %76 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %77 = load i32, i32* @UART_DLM, align 4
  %78 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %79 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = ashr i32 %80, 8
  %82 = and i32 %81, 255
  %83 = call i32 @ark3116_write_reg(%struct.usb_serial* %76, i32 %77, i32 %82)
  %84 = load i32, i32* @UART_LCR_WLEN8, align 4
  %85 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %86 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %88 = load i32, i32* @UART_LCR, align 4
  %89 = load i32, i32* @UART_LCR_WLEN8, align 4
  %90 = call i32 @ark3116_write_reg(%struct.usb_serial* %87, i32 %88, i32 %89)
  %91 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %92 = call i32 @ark3116_write_reg(%struct.usb_serial* %91, i32 14, i32 0)
  %93 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %94 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %61
  %98 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %99 = call i32 @ark3116_write_reg(%struct.usb_serial* %98, i32 9, i32 0)
  br label %100

100:                                              ; preds = %97, %61
  %101 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %102 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %101, i32 0, i32 0
  %103 = load %struct.ark3116_private*, %struct.ark3116_private** %5, align 8
  %104 = getelementptr inbounds %struct.ark3116_private, %struct.ark3116_private* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %109 = call i32 @dev_info(i32* %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %100, %13
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.ark3116_private* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @is_irda(%struct.usb_serial*) #1

declare dso_local i32 @usb_set_serial_port_data(%struct.usb_serial_port*, %struct.ark3116_private*) #1

declare dso_local i32 @ark3116_write_reg(%struct.usb_serial*, i32, i32) #1

declare dso_local i32 @calc_divisor(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
