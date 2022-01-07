; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vt8500_serial.c_handle_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vt8500_serial.c_handle_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@VT8500_URISR = common dso_local global i32 0, align 4
@RXOVER = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i8 0, align 1
@VT8500_URFIDX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@VT8500_RXFIFO = common dso_local global i64 0, align 8
@FER = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i8 0, align 1
@PER = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @handle_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.tty_port* %9, %struct.tty_port** %3, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = load i32, i32* @VT8500_URISR, align 4
  %12 = call i32 @vt8500_read(%struct.uart_port* %10, i32 %11)
  %13 = load i32, i32* @RXOVER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %23 = load i8, i8* @TTY_OVERRUN, align 1
  %24 = call i32 @tty_insert_flip_char(%struct.tty_port* %22, i32 0, i8 signext %23)
  br label %25

25:                                               ; preds = %16, %1
  br label %26

26:                                               ; preds = %86, %25
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = load i32, i32* @VT8500_URFIDX, align 4
  %29 = call i32 @vt8500_read(%struct.uart_port* %27, i32 %28)
  %30 = and i32 %29, 7936
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %87

32:                                               ; preds = %26
  %33 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %33, i8* %5, align 1
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VT8500_RXFIFO, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readw(i64 %38)
  %40 = and i32 %39, 1023
  store i32 %40, i32* %4, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @FER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %32
  %52 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load i8, i8* @TTY_FRAME, align 1
  store i8 %57, i8* %5, align 1
  br label %71

58:                                               ; preds = %32
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @PER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %65 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load i8, i8* @TTY_PARITY, align 1
  store i8 %69, i8* %5, align 1
  br label %70

70:                                               ; preds = %63, %58
  br label %71

71:                                               ; preds = %70, %51
  %72 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @uart_handle_sysrq_char(%struct.uart_port* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %71
  %82 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i8, i8* %5, align 1
  %85 = call i32 @tty_insert_flip_char(%struct.tty_port* %82, i32 %83, i8 signext %84)
  br label %86

86:                                               ; preds = %81, %71
  br label %26

87:                                               ; preds = %26
  %88 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 1
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %92 = call i32 @tty_flip_buffer_push(%struct.tty_port* %91)
  %93 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %94 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %93, i32 0, i32 1
  %95 = call i32 @spin_lock(i32* %94)
  ret void
}

declare dso_local i32 @vt8500_read(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i8 signext) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
