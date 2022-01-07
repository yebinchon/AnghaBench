; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trf7970a = type { i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Initializing device - state: %d\0A\00", align 1
@TRF7970A_CMD_SOFT_INIT = common dso_local global i32 0, align 4
@TRF7970A_CMD_IDLE = common dso_local global i32 0, align 4
@TRF7970A_REG_IO_CTRL = common dso_local global i32 0, align 4
@TRF7970A_NFC_TARGET_LEVEL = common dso_local global i32 0, align 4
@TRF7970A_CHIP_STATUS_RF_ON = common dso_local global i32 0, align 4
@TRF7970A_MODULATOR_SYS_CLK_CTRL = common dso_local global i32 0, align 4
@TRF7970A_ADJUTABLE_FIFO_IRQ_LEVELS = common dso_local global i32 0, align 4
@TRF7970A_ADJUTABLE_FIFO_IRQ_LEVELS_WLH_96 = common dso_local global i32 0, align 4
@TRF7970A_ADJUTABLE_FIFO_IRQ_LEVELS_WLL_32 = common dso_local global i32 0, align 4
@TRF7970A_SPECIAL_FCN_REG1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Couldn't init device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trf7970a*)* @trf7970a_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trf7970a_init(%struct.trf7970a* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trf7970a*, align 8
  %4 = alloca i32, align 4
  store %struct.trf7970a* %0, %struct.trf7970a** %3, align 8
  %5 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %6 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %9 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %13 = load i32, i32* @TRF7970A_CMD_SOFT_INIT, align 4
  %14 = call i32 @trf7970a_cmd(%struct.trf7970a* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %83

18:                                               ; preds = %1
  %19 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %20 = load i32, i32* @TRF7970A_CMD_IDLE, align 4
  %21 = call i32 @trf7970a_cmd(%struct.trf7970a* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %83

25:                                               ; preds = %18
  %26 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %27 = load i32, i32* @TRF7970A_REG_IO_CTRL, align 4
  %28 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %29 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @TRF7970A_REG_IO_CTRL_VRS(i32 1)
  %32 = or i32 %30, %31
  %33 = call i32 @trf7970a_write(%struct.trf7970a* %26, i32 %27, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %83

37:                                               ; preds = %25
  %38 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %39 = load i32, i32* @TRF7970A_NFC_TARGET_LEVEL, align 4
  %40 = call i32 @trf7970a_write(%struct.trf7970a* %38, i32 %39, i32 0)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %83

44:                                               ; preds = %37
  %45 = call i32 @usleep_range(i32 1000, i32 2000)
  %46 = load i32, i32* @TRF7970A_CHIP_STATUS_RF_ON, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %49 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %53 = load i32, i32* @TRF7970A_MODULATOR_SYS_CLK_CTRL, align 4
  %54 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %55 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @trf7970a_write(%struct.trf7970a* %52, i32 %53, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  br label %83

61:                                               ; preds = %44
  %62 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %63 = load i32, i32* @TRF7970A_ADJUTABLE_FIFO_IRQ_LEVELS, align 4
  %64 = load i32, i32* @TRF7970A_ADJUTABLE_FIFO_IRQ_LEVELS_WLH_96, align 4
  %65 = load i32, i32* @TRF7970A_ADJUTABLE_FIFO_IRQ_LEVELS_WLL_32, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @trf7970a_write(%struct.trf7970a* %62, i32 %63, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %83

71:                                               ; preds = %61
  %72 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %73 = load i32, i32* @TRF7970A_SPECIAL_FCN_REG1, align 4
  %74 = call i32 @trf7970a_write(%struct.trf7970a* %72, i32 %73, i32 0)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %83

78:                                               ; preds = %71
  %79 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %80 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %82 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %81, i32 0, i32 3
  store i32 255, i32* %82, align 4
  store i32 0, i32* %2, align 4
  br label %90

83:                                               ; preds = %77, %70, %60, %43, %36, %24, %17
  %84 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %85 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %83, %78
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @trf7970a_cmd(%struct.trf7970a*, i32) #1

declare dso_local i32 @trf7970a_write(%struct.trf7970a*, i32, i32) #1

declare dso_local i32 @TRF7970A_REG_IO_CTRL_VRS(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
