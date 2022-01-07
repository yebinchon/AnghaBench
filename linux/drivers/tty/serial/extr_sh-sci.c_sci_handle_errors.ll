; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_handle_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_handle_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.sci_port = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i16 }

@SCxSR = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"overrun error\0A\00", align 1
@TTY_FRAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"frame error\0A\00", align 1
@TTY_PARITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"parity error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sci_handle_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_handle_errors(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca %struct.sci_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = load i32, i32* @SCxSR, align 4
  %9 = call zeroext i16 @serial_port_in(%struct.uart_port* %7, i32 %8)
  store i16 %9, i16* %4, align 2
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.tty_port* %13, %struct.tty_port** %5, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %14)
  store %struct.sci_port* %15, %struct.sci_port** %6, align 8
  %16 = load i16, i16* %4, align 2
  %17 = zext i16 %16 to i32
  %18 = load %struct.sci_port*, %struct.sci_port** %6, align 8
  %19 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %17, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %1
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %33 = load i32, i32* @TTY_OVERRUN, align 4
  %34 = call i64 @tty_insert_flip_char(%struct.tty_port* %32, i32 0, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %26
  %40 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_notice(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %1
  %45 = load i16, i16* %4, align 2
  %46 = zext i16 %45 to i32
  %47 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %48 = call zeroext i16 @SCxSR_FER(%struct.uart_port* %47)
  %49 = zext i16 %48 to i32
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %44
  %53 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %59 = load i32, i32* @TTY_FRAME, align 4
  %60 = call i64 @tty_insert_flip_char(%struct.tty_port* %58, i32 0, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %52
  %66 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_notice(i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %44
  %71 = load i16, i16* %4, align 2
  %72 = zext i16 %71 to i32
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = call zeroext i16 @SCxSR_PER(%struct.uart_port* %73)
  %75 = zext i16 %74 to i32
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %70
  %79 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %85 = load i32, i32* @TTY_PARITY, align 4
  %86 = call i64 @tty_insert_flip_char(%struct.tty_port* %84, i32 0, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %78
  %92 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %93 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_notice(i32 %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %91, %70
  %97 = load i32, i32* %3, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %101 = call i32 @tty_flip_buffer_push(%struct.tty_port* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local zeroext i16 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local i64 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @dev_notice(i32, i8*) #1

declare dso_local zeroext i16 @SCxSR_FER(%struct.uart_port*) #1

declare dso_local zeroext i16 @SCxSR_PER(%struct.uart_port*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
