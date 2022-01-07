; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_is_rf_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_is_rf_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trf7970a = type { i32 }

@TRF7970A_CHIP_STATUS_CTRL = common dso_local global i32 0, align 4
@TRF7970A_CHIP_STATUS_REC_ON = common dso_local global i32 0, align 4
@TRF7970A_CMD_TEST_EXT_RF = common dso_local global i32 0, align 4
@TRF7970A_RSSI_OSC_STATUS = common dso_local global i32 0, align 4
@TRF7970A_RSSI_OSC_STATUS_RSSI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trf7970a*, i32*)* @trf7970a_is_rf_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trf7970a_is_rf_field(%struct.trf7970a* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trf7970a*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.trf7970a* %0, %struct.trf7970a** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %9 = load i32, i32* @TRF7970A_CHIP_STATUS_CTRL, align 4
  %10 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %11 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TRF7970A_CHIP_STATUS_REC_ON, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @trf7970a_write(%struct.trf7970a* %8, i32 %9, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %58

20:                                               ; preds = %2
  %21 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %22 = load i32, i32* @TRF7970A_CMD_TEST_EXT_RF, align 4
  %23 = call i32 @trf7970a_cmd(%struct.trf7970a* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %58

28:                                               ; preds = %20
  %29 = call i32 @usleep_range(i32 50, i32 60)
  %30 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %31 = load i32, i32* @TRF7970A_RSSI_OSC_STATUS, align 4
  %32 = call i32 @trf7970a_read(%struct.trf7970a* %30, i32 %31, i32* %7)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %58

37:                                               ; preds = %28
  %38 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %39 = load i32, i32* @TRF7970A_CHIP_STATUS_CTRL, align 4
  %40 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %41 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @trf7970a_write(%struct.trf7970a* %38, i32 %39, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %58

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @TRF7970A_RSSI_OSC_STATUS_RSSI_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  store i32 1, i32* %54, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32*, i32** %5, align 8
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %55, %53
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %46, %35, %26, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @trf7970a_write(%struct.trf7970a*, i32, i32) #1

declare dso_local i32 @trf7970a_cmd(%struct.trf7970a*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @trf7970a_read(%struct.trf7970a*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
