; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rx_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rx_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@BBP4_BANDWIDTH = common dso_local global i32 0, align 4
@RFCSR31_RX_H20M = common dso_local global i32 0, align 4
@RFCSR22_BASEBAND_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rt2x00_dev*, i32, i64)* @rt2800_init_rx_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rt2800_init_rx_filter(%struct.rt2x00_dev* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 39, i32 7
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %13, align 8
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %20 = load i64, i64* %13, align 8
  %21 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %19, i32 24, i64 %20)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %23 = call i64 @rt2800_bbp_read(%struct.rt2x00_dev* %22, i32 4)
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* @BBP4_BANDWIDTH, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 2, %25
  %27 = call i32 @rt2x00_set_field8(i64* %8, i32 %24, i32 %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %28, i32 4, i32 %30)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %33 = call i64 @rt2800_rfcsr_read(%struct.rt2x00_dev* %32, i32 31)
  store i64 %33, i64* %9, align 8
  %34 = load i32, i32* @RFCSR31_RX_H20M, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @rt2x00_set_field8(i64* %9, i32 %34, i32 %35)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %37, i32 31, i64 %38)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %41 = call i64 @rt2800_rfcsr_read(%struct.rt2x00_dev* %40, i32 22)
  store i64 %41, i64* %9, align 8
  %42 = load i32, i32* @RFCSR22_BASEBAND_LOOPBACK, align 4
  %43 = call i32 @rt2x00_set_field8(i64* %9, i32 %42, i32 1)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %44, i32 22, i64 %45)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %48 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %47, i32 24, i32 0)
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %62, %3
  %50 = load i32, i32* %7, align 4
  %51 = icmp ult i32 %50, 100
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %54 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %53, i32 25, i32 144)
  %55 = call i32 @msleep(i32 1)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %57 = call i64 @rt2800_bbp_read(%struct.rt2x00_dev* %56, i32 55)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %65

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %49

65:                                               ; preds = %60, %49
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %67 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %66, i32 24, i32 6)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %99, %65
  %69 = load i32, i32* %7, align 4
  %70 = icmp ult i32 %69, 100
  br i1 %70, label %71, label %102

71:                                               ; preds = %68
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %73 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %72, i32 25, i32 144)
  %74 = call i32 @msleep(i32 1)
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %76 = call i64 @rt2800_bbp_read(%struct.rt2x00_dev* %75, i32 55)
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = sub nsw i64 %77, %78
  %80 = load i64, i64* %6, align 8
  %81 = icmp sle i64 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %71
  %83 = load i64, i64* %13, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load i64, i64* %6, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %12, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %12, align 8
  br label %95

94:                                               ; preds = %71
  br label %102

95:                                               ; preds = %82
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %96, i32 24, i64 %97)
  br label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %68

102:                                              ; preds = %94, %68
  %103 = load i64, i64* %12, align 8
  %104 = icmp ne i64 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %13, align 8
  %110 = sub nsw i64 %109, %108
  store i64 %110, i64* %13, align 8
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %111, i32 24, i64 %112)
  %114 = load i64, i64* %13, align 8
  ret i64 %114
}

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i64) #1

declare dso_local i64 @rt2800_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i64*, i32, i32) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
