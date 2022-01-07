; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_get_attr_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_get_attr_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.serial_struct = type { i64, i64 }
%struct.tty_port = type { i32 }

@HIGH_BITS_OFFSET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"0x%lX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @uart_get_attr_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_get_attr_port(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.serial_struct, align 8
  %8 = alloca %struct.tty_port*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.tty_port* @dev_get_drvdata(%struct.device* %10)
  store %struct.tty_port* %11, %struct.tty_port** %8, align 8
  %12 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %13 = call i32 @uart_get_info(%struct.tty_port* %12, %struct.serial_struct* %7)
  %14 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* @HIGH_BITS_OFFSET, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %7, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @HIGH_BITS_OFFSET, align 4
  %22 = zext i32 %21 to i64
  %23 = shl i64 %20, %22
  %24 = load i64, i64* %9, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %18, %3
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @snprintf(i8* %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %29)
  ret i32 %30
}

declare dso_local %struct.tty_port* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @uart_get_info(%struct.tty_port*, %struct.serial_struct*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
