; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_get_rs485_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_get_rs485_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.serial_rs485 = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"rs485-rts-delay\00", align 1
@SER_RS485_RX_DURING_TX = common dso_local global i32 0, align 4
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@SER_RS485_RTS_AFTER_SEND = common dso_local global i32 0, align 4
@SER_RS485_RTS_ON_SEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"rs485-rx-during-tx\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"linux,rs485-enabled-at-boot-time\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"rs485-rts-active-low\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_get_rs485_mode(%struct.device* %0, %struct.serial_rs485* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.serial_rs485*, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.serial_rs485* %1, %struct.serial_rs485** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %9 = call i32 @device_property_read_u32_array(%struct.device* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %8, i32 2)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %14 = load i8*, i8** %13, align 16
  %15 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %16 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %20 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %23 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %22, i32 0, i32 2
  store i8* null, i8** %23, align 8
  %24 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %25 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %24, i32 0, i32 1
  store i8* null, i8** %25, align 8
  br label %26

26:                                               ; preds = %21, %12
  %27 = load i32, i32* @SER_RS485_RX_DURING_TX, align 4
  %28 = load i32, i32* @SER_RS485_ENABLED, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %34 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %38 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %39 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = call i64 @device_property_read_bool(%struct.device* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %26
  %46 = load i32, i32* @SER_RS485_RX_DURING_TX, align 4
  %47 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %48 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %26
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = call i64 @device_property_read_bool(%struct.device* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* @SER_RS485_ENABLED, align 4
  %57 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %58 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %51
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = call i64 @device_property_read_bool(%struct.device* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %69 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %73 = load %struct.serial_rs485*, %struct.serial_rs485** %4, align 8
  %74 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %65, %61
  ret void
}

declare dso_local i32 @device_property_read_u32_array(%struct.device*, i8*, i8**, i32) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
