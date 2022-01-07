; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_icom_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.uart_port = type { i32 }

@ICOM_PORT = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"GET_MODEM\00", align 1
@ICOM_DCD = common dso_local global i8 0, align 1
@TIOCM_CAR = common dso_local global i32 0, align 4
@ICOM_RI = common dso_local global i8 0, align 1
@TIOCM_RNG = common dso_local global i32 0, align 4
@ICOM_DSR = common dso_local global i8 0, align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@ICOM_CTS = common dso_local global i8 0, align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @icom_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icom_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ICOM_PORT, align 8
  %6 = call i32 @trace(%struct.TYPE_5__* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ICOM_PORT, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call zeroext i8 @readb(i32* %10)
  store i8 %11, i8* %3, align 1
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @ICOM_DCD, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @TIOCM_CAR, align 4
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  %23 = load i8, i8* %3, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @ICOM_RI, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @TIOCM_RNG, align 4
  br label %32

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = or i32 %22, %33
  %35 = load i8, i8* %3, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @ICOM_DSR, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @TIOCM_DSR, align 4
  br label %44

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = or i32 %34, %45
  %47 = load i8, i8* %3, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @ICOM_CTS, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @TIOCM_CTS, align 4
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = or i32 %46, %57
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @trace(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local zeroext i8 @readb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
