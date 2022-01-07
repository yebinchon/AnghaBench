; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8* }
%struct.serial_state = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }

@IF_TBE = common dso_local global i8* null, align 8
@custom = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@UART_IER_THRI = common dso_local global i32 0, align 4
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serial_state*)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.serial_state* %0) #0 {
  %2 = alloca %struct.serial_state*, align 8
  store %struct.serial_state* %0, %struct.serial_state** %2, align 8
  %3 = load i8*, i8** @IF_TBE, align 8
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @custom, i32 0, i32 2), align 8
  %4 = call i32 (...) @mb()
  %5 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %6 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %11 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, 256
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @custom, i32 0, i32 0), align 8
  %14 = call i32 (...) @mb()
  %15 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %16 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %21 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  br label %124

22:                                               ; preds = %1
  %23 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %24 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %28 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %26, %30
  br i1 %31, label %48, label %32

32:                                               ; preds = %22
  %33 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %34 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %42 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %40, %32, %22
  %49 = load i32, i32* @UART_IER_THRI, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %52 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i8*, i8** @IF_TBE, align 8
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @custom, i32 0, i32 1), align 8
  %56 = call i32 (...) @mb()
  br label %124

57:                                               ; preds = %40
  %58 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %59 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %63 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %61, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, 256
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @custom, i32 0, i32 0), align 8
  %71 = call i32 (...) @mb()
  %72 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %73 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %77 = sub nsw i32 %76, 1
  %78 = and i32 %75, %77
  %79 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %80 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %83 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %88 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %92 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %96 = call i64 @CIRC_CNT(i32 %90, i32 %94, i32 %95)
  %97 = load i64, i64* @WAKEUP_CHARS, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %57
  %100 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %101 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = call i32 @tty_wakeup(%struct.TYPE_9__* %103)
  br label %105

105:                                              ; preds = %99, %57
  %106 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %107 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %111 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %109, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %105
  %116 = load i8*, i8** @IF_TBE, align 8
  store i8* %116, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @custom, i32 0, i32 1), align 8
  %117 = call i32 (...) @mb()
  %118 = load i32, i32* @UART_IER_THRI, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.serial_state*, %struct.serial_state** %2, align 8
  %121 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %9, %48, %115, %105
  ret void
}

declare dso_local i32 @mb(...) #1

declare dso_local i64 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @tty_wakeup(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
