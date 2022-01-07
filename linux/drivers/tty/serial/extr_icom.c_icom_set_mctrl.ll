; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.uart_port = type { i32 }

@ICOM_PORT = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"SET_MODEM\00", align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"RAISE_RTS\00", align 1
@ICOM_RTS = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"LOWER_RTS\00", align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"RAISE_DTR\00", align 1
@ICOM_DTR = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"LOWER_DTR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @icom_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icom_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ICOM_PORT, align 8
  %7 = call i32 @trace(%struct.TYPE_5__* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ICOM_PORT, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call zeroext i8 @readb(i32* %11)
  store i8 %12, i8* %5, align 1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TIOCM_RTS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ICOM_PORT, align 8
  %19 = call i32 @trace(%struct.TYPE_5__* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %20 = load i8, i8* @ICOM_RTS, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %5, align 1
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ICOM_PORT, align 8
  %28 = call i32 @trace(%struct.TYPE_5__* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %29 = load i8, i8* @ICOM_RTS, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %30, -1
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %5, align 1
  br label %36

36:                                               ; preds = %26, %17
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @TIOCM_DTR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ICOM_PORT, align 8
  %43 = call i32 @trace(%struct.TYPE_5__* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %44 = load i8, i8* @ICOM_DTR, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %5, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %5, align 1
  br label %60

50:                                               ; preds = %36
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ICOM_PORT, align 8
  %52 = call i32 @trace(%struct.TYPE_5__* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %53 = load i8, i8* @ICOM_DTR, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %54, -1
  %56 = load i8, i8* %5, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %5, align 1
  br label %60

60:                                               ; preds = %50, %41
  %61 = load i8, i8* %5, align 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ICOM_PORT, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @writeb(i8 zeroext %61, i32* %65)
  ret void
}

declare dso_local i32 @trace(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @writeb(i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
