; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_tg_config_framing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_tg_config_framing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trf7970a = type { i64, i64, i32, i64, i64, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"framing: %d\0A\00", align 1
@TRF7970A_CMD_TRANSMIT_NO_CRC = common dso_local global i8* null, align 8
@TRF7970A_ISO_CTRL_RX_CRC_N = common dso_local global i64 0, align 8
@TRF7970A_CMD_TRANSMIT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Unsupported Framing: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TRF7970A_ISO_CTRL = common dso_local global i32 0, align 4
@TRF7970A_MODULATOR_SYS_CLK_CTRL = common dso_local global i32 0, align 4
@TRF7970A_CHIP_STATUS_RF_ON = common dso_local global i64 0, align 8
@TRF7970A_CHIP_STATUS_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trf7970a*, i32)* @trf7970a_tg_config_framing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trf7970a_tg_config_framing(%struct.trf7970a* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trf7970a*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.trf7970a* %0, %struct.trf7970a** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %9 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %12 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %44 [
    i32 132, label %17
    i32 131, label %24
    i32 130, label %24
    i32 133, label %24
    i32 129, label %28
    i32 128, label %36
  ]

17:                                               ; preds = %2
  %18 = load i8*, i8** @TRF7970A_CMD_TRANSMIT_NO_CRC, align 8
  %19 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %20 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load i64, i64* @TRF7970A_ISO_CTRL_RX_CRC_N, align 8
  %22 = load i64, i64* %6, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %6, align 8
  br label %52

24:                                               ; preds = %2, %2, %2
  %25 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %26 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  br label %52

28:                                               ; preds = %2
  %29 = load i8*, i8** @TRF7970A_CMD_TRANSMIT, align 8
  %30 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %31 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = load i64, i64* @TRF7970A_ISO_CTRL_RX_CRC_N, align 8
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %6, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %6, align 8
  br label %52

36:                                               ; preds = %2
  %37 = load i8*, i8** @TRF7970A_CMD_TRANSMIT, align 8
  %38 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %39 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* @TRF7970A_ISO_CTRL_RX_CRC_N, align 8
  %41 = xor i64 %40, -1
  %42 = load i64, i64* %6, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %6, align 8
  br label %52

44:                                               ; preds = %2
  %45 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %46 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %112

52:                                               ; preds = %36, %28, %24, %17
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %55 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %58 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %52
  %62 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %63 = load i32, i32* @TRF7970A_ISO_CTRL, align 4
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @trf7970a_write(%struct.trf7970a* %62, i32 %63, i64 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %112

70:                                               ; preds = %61
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %73 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %75 = load i32, i32* @TRF7970A_MODULATOR_SYS_CLK_CTRL, align 4
  %76 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %77 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @trf7970a_write(%struct.trf7970a* %74, i32 %75, i64 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %112

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %52
  %86 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %87 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TRF7970A_CHIP_STATUS_RF_ON, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %85
  %93 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %94 = load i32, i32* @TRF7970A_CHIP_STATUS_CTRL, align 4
  %95 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %96 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TRF7970A_CHIP_STATUS_RF_ON, align 8
  %99 = or i64 %97, %98
  %100 = call i32 @trf7970a_write(%struct.trf7970a* %93, i32 %94, i64 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %112

105:                                              ; preds = %92
  %106 = load i64, i64* @TRF7970A_CHIP_STATUS_RF_ON, align 8
  %107 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %108 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = or i64 %109, %106
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %105, %85
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %103, %82, %68, %44
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @trf7970a_write(%struct.trf7970a*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
