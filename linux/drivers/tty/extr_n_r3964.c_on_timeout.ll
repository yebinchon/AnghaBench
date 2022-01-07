; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_on_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_on_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_info = type { i32, i32 }
%struct.timer_list = type { i32 }

@tmr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"TX_REQUEST - timeout\00", align 1
@NAK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"WAIT_FOR_TX_ACK - timeout\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"WAIT_FOR_RX_BUF - timeout\00", align 1
@R3964_IDLE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"RECEIVING - timeout after %d chars\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"WAIT_FOR_RX_REPEAT - timeout\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"WAIT_FOR_BCC - timeout\00", align 1
@pInfo = common dso_local global %struct.r3964_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @on_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.r3964_info*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %5 = ptrtoint %struct.r3964_info* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @tmr, align 4
  %8 = call %struct.r3964_info* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.r3964_info* %8, %struct.r3964_info** %3, align 8
  %9 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %10 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %70 [
    i32 133, label %12
    i32 128, label %16
    i32 129, label %24
    i32 131, label %28
    i32 134, label %39
    i32 130, label %53
    i32 132, label %59
  ]

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %15 = call i32 @retry_transmit(%struct.r3964_info* %14)
  br label %70

16:                                               ; preds = %1
  %17 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %18 = load i32, i32* @NAK, align 4
  %19 = call i32 @put_char(%struct.r3964_info* %17, i32 %18)
  %20 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %21 = call i32 @flush(%struct.r3964_info* %20)
  %22 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %23 = call i32 @retry_transmit(%struct.r3964_info* %22)
  br label %70

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %27 = call i32 @retry_transmit(%struct.r3964_info* %26)
  br label %70

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %31 = load i32, i32* @NAK, align 4
  %32 = call i32 @put_char(%struct.r3964_info* %30, i32 %31)
  %33 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %34 = call i32 @flush(%struct.r3964_info* %33)
  %35 = load i8*, i8** @R3964_IDLE, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %38 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %70

39:                                               ; preds = %1
  %40 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %41 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %45 = load i32, i32* @NAK, align 4
  %46 = call i32 @put_char(%struct.r3964_info* %44, i32 %45)
  %47 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %48 = call i32 @flush(%struct.r3964_info* %47)
  %49 = load i8*, i8** @R3964_IDLE, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %52 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %70

53:                                               ; preds = %1
  %54 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i8*, i8** @R3964_IDLE, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %58 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %70

59:                                               ; preds = %1
  %60 = call i32 (i8*, ...) @TRACE_PE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %62 = load i32, i32* @NAK, align 4
  %63 = call i32 @put_char(%struct.r3964_info* %61, i32 %62)
  %64 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %65 = call i32 @flush(%struct.r3964_info* %64)
  %66 = load i8*, i8** @R3964_IDLE, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %69 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %1, %59, %53, %39, %28, %24, %16, %12
  ret void
}

declare dso_local %struct.r3964_info* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @TRACE_PE(i8*, ...) #1

declare dso_local i32 @retry_transmit(%struct.r3964_info*) #1

declare dso_local i32 @put_char(%struct.r3964_info*, i32) #1

declare dso_local i32 @flush(%struct.r3964_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
