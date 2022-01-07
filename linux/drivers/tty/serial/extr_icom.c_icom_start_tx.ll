; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.uart_port = type { i32 }

@ICOM_PORT = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"START\00", align 1
@CMD_HOLD_XMIT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @icom_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icom_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ICOM_PORT, align 8
  %5 = call i32 @trace(%struct.TYPE_5__* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ICOM_PORT, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call zeroext i8 @readb(i32* %9)
  store i8 %10, i8* %3, align 1
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @CMD_HOLD_XMIT, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = load i8, i8* @CMD_HOLD_XMIT, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @CMD_HOLD_XMIT, align 1
  %23 = zext i8 %22 to i32
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  %26 = trunc i32 %25 to i8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ICOM_PORT, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @writeb(i8 zeroext %26, i32* %30)
  br label %32

32:                                               ; preds = %19, %1
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = call i32 @icom_write(%struct.uart_port* %33)
  ret void
}

declare dso_local i32 @trace(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @writeb(i8 zeroext, i32*) #1

declare dso_local i32 @icom_write(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
