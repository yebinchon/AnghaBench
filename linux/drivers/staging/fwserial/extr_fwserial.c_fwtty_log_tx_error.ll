; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_log_tx_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwtty_log_tx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"card busy\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"bad unit addr or write length\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"failed rx\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"missing ack\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"remote busy\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"failed tx: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwtty_port*, i32)* @fwtty_log_tx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwtty_log_tx_error(%struct.fwtty_port* %0, i32 %1) #0 {
  %3 = alloca %struct.fwtty_port*, align 8
  %4 = alloca i32, align 4
  store %struct.fwtty_port* %0, %struct.fwtty_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %21 [
    i32 128, label %6
    i32 132, label %9
    i32 130, label %12
    i32 129, label %15
    i32 131, label %18
  ]

6:                                                ; preds = %2
  %7 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %8 = call i32 (%struct.fwtty_port*, i8*, ...) @fwtty_err_ratelimited(%struct.fwtty_port* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %25

9:                                                ; preds = %2
  %10 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %11 = call i32 (%struct.fwtty_port*, i8*, ...) @fwtty_err_ratelimited(%struct.fwtty_port* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %14 = call i32 (%struct.fwtty_port*, i8*, ...) @fwtty_err_ratelimited(%struct.fwtty_port* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %17 = call i32 (%struct.fwtty_port*, i8*, ...) @fwtty_err_ratelimited(%struct.fwtty_port* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %20 = call i32 (%struct.fwtty_port*, i8*, ...) @fwtty_err_ratelimited(%struct.fwtty_port* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.fwtty_port*, %struct.fwtty_port** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (%struct.fwtty_port*, i8*, ...) @fwtty_err_ratelimited(%struct.fwtty_port* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @fwtty_err_ratelimited(%struct.fwtty_port*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
