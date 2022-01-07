; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trf7970a = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@TRF7970A_FIFO_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Filling FIFO - fifo_bytes: 0x%x\0A\00", align 1
@TRF7970A_FIFO_STATUS_OVERFLOW = common dso_local global i32 0, align 4
@TRF7970A_FIFO_SIZE = common dso_local global i32 0, align 4
@TRF7970A_WAIT_FOR_FIFO_DRAIN_TIMEOUT = common dso_local global i32 0, align 4
@TRF7970A_CMD_BIT_CONTINUOUS = common dso_local global i32 0, align 4
@TRF7970A_FIFO_IO_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trf7970a*)* @trf7970a_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trf7970a_fill_fifo(%struct.trf7970a* %0) #0 {
  %2 = alloca %struct.trf7970a*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.trf7970a* %0, %struct.trf7970a** %2, align 8
  %8 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %9 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %8, i32 0, i32 2
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %10, %struct.sk_buff** %3, align 8
  %11 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %12 = load i32, i32* @TRF7970A_FIFO_STATUS, align 4
  %13 = call i32 @trf7970a_read(%struct.trf7970a* %11, i32 %12, i32* %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @trf7970a_send_err_upstream(%struct.trf7970a* %17, i32 %18)
  br label %60

20:                                               ; preds = %1
  %21 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %22 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @TRF7970A_FIFO_STATUS_OVERFLOW, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @TRF7970A_FIFO_SIZE, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %20
  %36 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %37 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %36, i32 0, i32 0
  %38 = load i32, i32* @TRF7970A_WAIT_FOR_FIFO_DRAIN_TIMEOUT, align 4
  %39 = call i32 @msecs_to_jiffies(i32 %38)
  %40 = call i32 @schedule_delayed_work(i32* %37, i32 %39)
  br label %60

41:                                               ; preds = %20
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @min(i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @TRF7970A_CMD_BIT_CONTINUOUS, align 4
  %48 = load i32, i32* @TRF7970A_FIFO_IO_REGISTER, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @trf7970a_transmit(%struct.trf7970a* %50, %struct.sk_buff* %51, i32 %52, i32* %7, i32 4)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @trf7970a_send_err_upstream(%struct.trf7970a* %57, i32 %58)
  br label %60

60:                                               ; preds = %16, %35, %56, %41
  ret void
}

declare dso_local i32 @trf7970a_read(%struct.trf7970a*, i32, i32*) #1

declare dso_local i32 @trf7970a_send_err_upstream(%struct.trf7970a*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @trf7970a_transmit(%struct.trf7970a*, %struct.sk_buff*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
