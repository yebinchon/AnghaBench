; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_in_config_framing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_in_config_framing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trf7970a = type { i64, i32, i64, i64, i64, i64, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"framing: %d\0A\00", align 1
@TRF7970A_CMD_TRANSMIT_NO_CRC = common dso_local global i8* null, align 8
@TRF7970A_ISO_CTRL_RX_CRC_N = common dso_local global i64 0, align 8
@TRF7970A_CMD_TRANSMIT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Unsupported Framing: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TRF7970A_CHIP_STATUS_RF_ON = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@TRF7970A_ISO_CTRL = common dso_local global i32 0, align 4
@TRF7970A_MODULATOR_SYS_CLK_CTRL = common dso_local global i32 0, align 4
@TRF7970A_CHIP_STATUS_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trf7970a*, i32)* @trf7970a_in_config_framing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trf7970a_in_config_framing(%struct.trf7970a* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trf7970a*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.trf7970a* %0, %struct.trf7970a** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %10 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %13 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %40 [
    i32 137, label %18
    i32 136, label %18
    i32 135, label %25
    i32 133, label %25
    i32 132, label %25
    i32 131, label %25
    i32 130, label %25
    i32 128, label %25
    i32 140, label %25
    i32 139, label %25
    i32 138, label %25
    i32 129, label %25
    i32 134, label %33
  ]

18:                                               ; preds = %2, %2
  %19 = load i8*, i8** @TRF7970A_CMD_TRANSMIT_NO_CRC, align 8
  %20 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %21 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %20, i32 0, i32 7
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* @TRF7970A_ISO_CTRL_RX_CRC_N, align 8
  %23 = load i64, i64* %6, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %6, align 8
  br label %48

25:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %26 = load i8*, i8** @TRF7970A_CMD_TRANSMIT, align 8
  %27 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %28 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* @TRF7970A_ISO_CTRL_RX_CRC_N, align 8
  %30 = xor i64 %29, -1
  %31 = load i64, i64* %6, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %6, align 8
  br label %48

33:                                               ; preds = %2
  %34 = load i8*, i8** @TRF7970A_CMD_TRANSMIT, align 8
  %35 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %36 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* @TRF7970A_ISO_CTRL_RX_CRC_N, align 8
  %38 = load i64, i64* %6, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %6, align 8
  br label %48

40:                                               ; preds = %2
  %41 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %42 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %137

48:                                               ; preds = %33, %25, %18
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %51 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %53 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TRF7970A_CHIP_STATUS_RF_ON, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %48
  %59 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %60 = call i32 @trf7970a_is_rf_field(%struct.trf7970a* %59, i32* %7)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %137

65:                                               ; preds = %58
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %137

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %48
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %75 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %72
  %79 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %80 = load i32, i32* @TRF7970A_ISO_CTRL, align 4
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @trf7970a_write(%struct.trf7970a* %79, i32 %80, i64 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %137

87:                                               ; preds = %78
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %90 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %92 = load i32, i32* @TRF7970A_MODULATOR_SYS_CLK_CTRL, align 4
  %93 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %94 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @trf7970a_write(%struct.trf7970a* %91, i32 %92, i64 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %87
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %137

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101, %72
  %103 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %104 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TRF7970A_CHIP_STATUS_RF_ON, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %136, label %109

109:                                              ; preds = %102
  %110 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %111 = load i32, i32* @TRF7970A_CHIP_STATUS_CTRL, align 4
  %112 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %113 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TRF7970A_CHIP_STATUS_RF_ON, align 8
  %116 = or i64 %114, %115
  %117 = call i32 @trf7970a_write(%struct.trf7970a* %110, i32 %111, i64 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %109
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %137

122:                                              ; preds = %109
  %123 = load i64, i64* @TRF7970A_CHIP_STATUS_RF_ON, align 8
  %124 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %125 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = or i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %129 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.trf7970a*, %struct.trf7970a** %4, align 8
  %132 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 1000
  %135 = call i32 @usleep_range(i64 %130, i64 %134)
  br label %136

136:                                              ; preds = %122, %102
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %120, %99, %85, %68, %63, %40
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @trf7970a_is_rf_field(%struct.trf7970a*, i32*) #1

declare dso_local i32 @trf7970a_write(%struct.trf7970a*, i32, i64) #1

declare dso_local i32 @usleep_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
