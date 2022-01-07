; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@OWL_UART_CTL = common dso_local global i32 0, align 4
@OWL_UART_CTL_TRFS_TX = common dso_local global i32 0, align 4
@OWL_UART_STAT = common dso_local global i32 0, align 4
@OWL_UART_STAT_RFEM = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@OWL_UART_STAT_RXER = common dso_local global i32 0, align 4
@OWL_UART_STAT_RXST = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@OWL_UART_RXDAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @owl_uart_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_uart_receive_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = load i32, i32* @OWL_UART_CTL, align 4
  %8 = call i32 @owl_uart_read(%struct.uart_port* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @OWL_UART_CTL_TRFS_TX, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @OWL_UART_CTL, align 4
  %16 = call i32 @owl_uart_write(%struct.uart_port* %13, i32 %14, i32 %15)
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = load i32, i32* @OWL_UART_STAT, align 4
  %19 = call i32 @owl_uart_read(%struct.uart_port* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %92, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @OWL_UART_STAT_RFEM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %96

26:                                               ; preds = %20
  %27 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %27, i8* %5, align 1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @OWL_UART_STAT_RXER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @OWL_UART_STAT_RXST, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @OWL_UART_STAT_RXST, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %43
  %64 = load i8, i8* @TTY_PARITY, align 1
  store i8 %64, i8* %5, align 1
  br label %65

65:                                               ; preds = %63, %43
  br label %72

66:                                               ; preds = %38
  %67 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %65
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = load i32, i32* @OWL_UART_RXDAT, align 4
  %75 = call i32 @owl_uart_read(%struct.uart_port* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, 255
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %78, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %72
  %85 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %4, align 4
  %90 = load i8, i8* %5, align 1
  %91 = call i32 @tty_insert_flip_char(i32* %88, i32 %89, i8 signext %90)
  br label %92

92:                                               ; preds = %84, %72
  %93 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %94 = load i32, i32* @OWL_UART_STAT, align 4
  %95 = call i32 @owl_uart_read(%struct.uart_port* %93, i32 %94)
  store i32 %95, i32* %3, align 4
  br label %20

96:                                               ; preds = %20
  %97 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 2
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %101 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @tty_flip_buffer_push(i32* %103)
  %105 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %106 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %105, i32 0, i32 2
  %107 = call i32 @spin_lock(i32* %106)
  ret void
}

declare dso_local i32 @owl_uart_read(%struct.uart_port*, i32) #1

declare dso_local i32 @owl_uart_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i32, i8 signext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
