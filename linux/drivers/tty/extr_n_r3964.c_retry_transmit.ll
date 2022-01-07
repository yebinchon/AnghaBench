; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_retry_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_retry_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_info = type { i64, i32, i32, i64 }

@R3964_MAX_RETRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"transmission failed. Retry #%d\00", align 1
@STX = common dso_local global i32 0, align 4
@R3964_TX_REQUEST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@R3964_TO_QVZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"transmission failed after %d retries\00", align 1
@R3964_TX_FAIL = common dso_local global i32 0, align 4
@NAK = common dso_local global i32 0, align 4
@R3964_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r3964_info*)* @retry_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retry_transmit(%struct.r3964_info* %0) #0 {
  %2 = alloca %struct.r3964_info*, align 8
  store %struct.r3964_info* %0, %struct.r3964_info** %2, align 8
  %3 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %4 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @R3964_MAX_RETRIES, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %10 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @TRACE_PE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %14 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %16 = load i32, i32* @STX, align 4
  %17 = call i32 @put_char(%struct.r3964_info* %15, i32 %16)
  %18 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %19 = call i32 @flush(%struct.r3964_info* %18)
  %20 = load i32, i32* @R3964_TX_REQUEST, align 4
  %21 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %22 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %24 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %28 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %27, i32 0, i32 2
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* @R3964_TO_QVZ, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @mod_timer(i32* %28, i64 %31)
  br label %49

33:                                               ; preds = %1
  %34 = load i64, i64* @R3964_MAX_RETRIES, align 8
  %35 = call i32 @TRACE_PE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %37 = load i32, i32* @R3964_TX_FAIL, align 4
  %38 = call i32 @remove_from_tx_queue(%struct.r3964_info* %36, i32 %37)
  %39 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %40 = load i32, i32* @NAK, align 4
  %41 = call i32 @put_char(%struct.r3964_info* %39, i32 %40)
  %42 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %43 = call i32 @flush(%struct.r3964_info* %42)
  %44 = load i32, i32* @R3964_IDLE, align 4
  %45 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %46 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %48 = call i32 @trigger_transmit(%struct.r3964_info* %47)
  br label %49

49:                                               ; preds = %33, %8
  ret void
}

declare dso_local i32 @TRACE_PE(i8*, i64) #1

declare dso_local i32 @put_char(%struct.r3964_info*, i32) #1

declare dso_local i32 @flush(%struct.r3964_info*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @remove_from_tx_queue(%struct.r3964_info*, i32) #1

declare dso_local i32 @trigger_transmit(%struct.r3964_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
