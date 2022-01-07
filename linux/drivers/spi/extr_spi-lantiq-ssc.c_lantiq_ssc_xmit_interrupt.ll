; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_xmit_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_xmit_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lantiq_ssc_spi = type { i32, i32, i64, i64, i64, i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lantiq_ssc_xmit_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lantiq_ssc_xmit_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lantiq_ssc_spi*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.lantiq_ssc_spi*
  store %struct.lantiq_ssc_spi* %8, %struct.lantiq_ssc_spi** %6, align 8
  %9 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %10 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %2
  %14 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %15 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %20 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %25 = call i32 @rx_fifo_read_full_duplex(%struct.lantiq_ssc_spi* %24)
  br label %26

26:                                               ; preds = %23, %18, %13
  %27 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %28 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %33 = call i32 @tx_fifo_write(%struct.lantiq_ssc_spi* %32)
  br label %40

34:                                               ; preds = %26
  %35 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %36 = call i32 @tx_fifo_level(%struct.lantiq_ssc_spi* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %68

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %31
  br label %66

41:                                               ; preds = %2
  %42 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %43 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %48 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %53 = call i32 @rx_fifo_read_half_duplex(%struct.lantiq_ssc_spi* %52)
  %54 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %55 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %60 = call i32 @rx_request(%struct.lantiq_ssc_spi* %59)
  br label %62

61:                                               ; preds = %51
  br label %68

62:                                               ; preds = %58
  br label %64

63:                                               ; preds = %46
  br label %68

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %41
  br label %66

66:                                               ; preds = %65, %40
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %76

68:                                               ; preds = %63, %61, %38
  %69 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %70 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %6, align 8
  %73 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %72, i32 0, i32 0
  %74 = call i32 @queue_work(i32 %71, i32* %73)
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %68, %66
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @rx_fifo_read_full_duplex(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @tx_fifo_write(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @tx_fifo_level(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @rx_fifo_read_half_duplex(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @rx_request(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
