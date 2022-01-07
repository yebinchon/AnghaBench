; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sa1100.c_sa1100_mctrl_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sa1100.c_sa1100_mctrl_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100_port = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_12__*)* }

@TIOCM_RI = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1100_port*)* @sa1100_mctrl_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_mctrl_check(%struct.sa1100_port* %0) #0 {
  %2 = alloca %struct.sa1100_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sa1100_port* %0, %struct.sa1100_port** %2, align 8
  %5 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %6 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %9, align 8
  %11 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %12 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %11, i32 0, i32 1
  %13 = call i32 %10(%struct.TYPE_12__* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %16 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = xor i32 %14, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %81

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %25 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @TIOCM_RI, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %32 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %22
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @TIOCM_DSR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %44 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @TIOCM_CAR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %56 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %55, i32 0, i32 1
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @TIOCM_CAR, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @uart_handle_dcd_change(%struct.TYPE_12__* %56, i32 %59)
  br label %61

61:                                               ; preds = %54, %49
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @TIOCM_CTS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %68 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %67, i32 0, i32 1
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @TIOCM_CTS, align 4
  %71 = and i32 %69, %70
  %72 = call i32 @uart_handle_cts_change(%struct.TYPE_12__* %68, i32 %71)
  br label %73

73:                                               ; preds = %66, %61
  %74 = load %struct.sa1100_port*, %struct.sa1100_port** %2, align 8
  %75 = getelementptr inbounds %struct.sa1100_port, %struct.sa1100_port* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = call i32 @wake_up_interruptible(i32* %79)
  br label %81

81:                                               ; preds = %73, %21
  ret void
}

declare dso_local i32 @uart_handle_dcd_change(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
