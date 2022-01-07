; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_rs485_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_rs485_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.serial_rs485, %struct.fintek_8250* }
%struct.serial_rs485 = type { i32, i32, i32, %struct.serial_rs485* }
%struct.fintek_8250 = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SER_RS485_RTS_ON_SEND = common dso_local global i32 0, align 4
@SER_RS485_RTS_AFTER_SEND = common dso_local global i32 0, align 4
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@RS485_URA = common dso_local global i64 0, align 8
@TXW4C_IRA = common dso_local global i64 0, align 8
@RXW4C_IRA = common dso_local global i64 0, align 8
@RTS_INVERT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@LDN = common dso_local global i32 0, align 4
@RS485 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_rs485*)* @fintek_8250_rs485_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fintek_8250_rs485_config(%struct.uart_port* %0, %struct.serial_rs485* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.serial_rs485*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fintek_8250*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.serial_rs485* %1, %struct.serial_rs485** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 1
  %10 = load %struct.fintek_8250*, %struct.fintek_8250** %9, align 8
  store %struct.fintek_8250* %10, %struct.fintek_8250** %7, align 8
  %11 = load %struct.fintek_8250*, %struct.fintek_8250** %7, align 8
  %12 = icmp ne %struct.fintek_8250* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %139

16:                                               ; preds = %2
  %17 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %18 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %26 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = icmp eq i32 %24, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %16
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %139

37:                                               ; preds = %16
  %38 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %39 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SER_RS485_ENABLED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %46 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %45, i32 0, i32 3
  %47 = load %struct.serial_rs485*, %struct.serial_rs485** %46, align 8
  %48 = call i32 @memset(%struct.serial_rs485* %47, i32 0, i32 8)
  %49 = load i64, i64* @RS485_URA, align 8
  %50 = load i64, i64* %6, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %6, align 8
  br label %55

52:                                               ; preds = %37
  %53 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %54 = call i32 @memset(%struct.serial_rs485* %53, i32 0, i32 24)
  br label %55

55:                                               ; preds = %52, %44
  %56 = load i32, i32* @SER_RS485_ENABLED, align 4
  %57 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SER_RS485_RTS_AFTER_SEND, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %62 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.fintek_8250*, %struct.fintek_8250** %7, align 8
  %66 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %55
  %70 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %71 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %73 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %55
  %75 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %76 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %81 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load i64, i64* @TXW4C_IRA, align 8
  %83 = load i64, i64* %6, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %6, align 8
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %87 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %92 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  %93 = load i64, i64* @RXW4C_IRA, align 8
  %94 = load i64, i64* %6, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %6, align 8
  br label %96

96:                                               ; preds = %90, %85
  %97 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %98 = getelementptr inbounds %struct.serial_rs485, %struct.serial_rs485* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @SER_RS485_RTS_ON_SEND, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i64, i64* @RTS_INVERT, align 8
  %105 = load i64, i64* %6, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %103, %96
  %108 = load %struct.fintek_8250*, %struct.fintek_8250** %7, align 8
  %109 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.fintek_8250*, %struct.fintek_8250** %7, align 8
  %112 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @fintek_8250_enter_key(i32 %110, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load i32, i32* @EBUSY, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %139

119:                                              ; preds = %107
  %120 = load %struct.fintek_8250*, %struct.fintek_8250** %7, align 8
  %121 = load i32, i32* @LDN, align 4
  %122 = load %struct.fintek_8250*, %struct.fintek_8250** %7, align 8
  %123 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @sio_write_reg(%struct.fintek_8250* %120, i32 %121, i64 %124)
  %126 = load %struct.fintek_8250*, %struct.fintek_8250** %7, align 8
  %127 = load i32, i32* @RS485, align 4
  %128 = load i64, i64* %6, align 8
  %129 = call i32 @sio_write_reg(%struct.fintek_8250* %126, i32 %127, i64 %128)
  %130 = load %struct.fintek_8250*, %struct.fintek_8250** %7, align 8
  %131 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @fintek_8250_exit_key(i32 %132)
  %134 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %135 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %134, i32 0, i32 0
  %136 = load %struct.serial_rs485*, %struct.serial_rs485** %5, align 8
  %137 = bitcast %struct.serial_rs485* %135 to i8*
  %138 = bitcast %struct.serial_rs485* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 24, i1 false)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %119, %116, %34, %13
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @memset(%struct.serial_rs485*, i32, i32) #1

declare dso_local i64 @fintek_8250_enter_key(i32, i32) #1

declare dso_local i32 @sio_write_reg(%struct.fintek_8250*, i32, i64) #1

declare dso_local i32 @fintek_8250_exit_key(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
