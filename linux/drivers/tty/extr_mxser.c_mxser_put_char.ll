; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_put_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_mxser.c_mxser_put_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.mxser_port* }
%struct.mxser_port = type { i32, i32, i64, i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i8* }

@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i64 0, align 8
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8)* @mxser_put_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_put_char(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.mxser_port*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 2
  %10 = load %struct.mxser_port*, %struct.mxser_port** %9, align 8
  store %struct.mxser_port* %10, %struct.mxser_port** %6, align 8
  %11 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %12 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %11, i32 0, i32 7
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

17:                                               ; preds = %2
  %18 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %19 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp sge i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %114

25:                                               ; preds = %17
  %26 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %27 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %26, i32 0, i32 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i8, i8* %5, align 1
  %31 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %32 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %36 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  store i8 %30, i8* %40, align 1
  %41 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %44 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %48 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %52 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %51, i32 0, i32 4
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %113, label %59

59:                                               ; preds = %25
  %60 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %61 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %66 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PORT_16550A, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %64
  %71 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %72 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %71, i32 0, i32 6
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %70, %64, %59
  %78 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %79 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %78, i32 0, i32 4
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %83 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @UART_IER_THRI, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %89 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @UART_IER, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outb(i32 %87, i64 %92)
  %94 = load i32, i32* @UART_IER_THRI, align 4
  %95 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %96 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %100 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %103 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @UART_IER, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @outb(i32 %101, i64 %106)
  %108 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %109 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %108, i32 0, i32 4
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  br label %112

112:                                              ; preds = %77, %70
  br label %113

113:                                              ; preds = %112, %25
  store i32 1, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %24, %16
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
