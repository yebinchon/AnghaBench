; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_pre_handle_sdio_old.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_pre_handle_sdio_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32, i64, i64 }

@CARD_PULL_CTL5 = common dso_local global i32 0, align 4
@MS_INS_PU = common dso_local global i32 0, align 4
@SD_WP_PU = common dso_local global i32 0, align 4
@SD_CD_PU = common dso_local global i32 0, align 4
@SD_CMD_PU = common dso_local global i32 0, align 4
@FPGA_PULL_CTL = common dso_local global i32 0, align 4
@FPGA_SD_PULL_CTL_EN = common dso_local global i32 0, align 4
@CARD_SHARE_MODE = common dso_local global i32 0, align 4
@CARD_SHARE_48_SD = common dso_local global i32 0, align 4
@SDIO_CTRL = common dso_local global i32 0, align 4
@SDIO_BUS_CTRL = common dso_local global i32 0, align 4
@SDIO_CD_CTRL = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @rtsx_pre_handle_sdio_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_pre_handle_sdio_old(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %76

9:                                                ; preds = %1
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %11 = call i64 @CHK_SDIO_EXIST(%struct.rtsx_chip* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %76

13:                                               ; preds = %9
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %15 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %20 = load i32, i32* @CARD_PULL_CTL5, align 4
  %21 = load i32, i32* @MS_INS_PU, align 4
  %22 = load i32, i32* @SD_WP_PU, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SD_CD_PU, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SD_CMD_PU, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @rtsx_write_register(%struct.rtsx_chip* %19, i32 %20, i32 255, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %84

33:                                               ; preds = %18
  br label %44

34:                                               ; preds = %13
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %36 = load i32, i32* @FPGA_PULL_CTL, align 4
  %37 = load i32, i32* @FPGA_SD_PULL_CTL_EN, align 4
  %38 = call i32 @rtsx_write_register(%struct.rtsx_chip* %35, i32 %36, i32 255, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %84

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %33
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %46 = load i32, i32* @CARD_SHARE_MODE, align 4
  %47 = load i32, i32* @CARD_SHARE_48_SD, align 4
  %48 = call i32 @rtsx_write_register(%struct.rtsx_chip* %45, i32 %46, i32 255, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %84

53:                                               ; preds = %44
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %55 = call i32 @rtsx_write_register(%struct.rtsx_chip* %54, i32 65324, i32 1, i32 1)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %84

60:                                               ; preds = %53
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %62 = load i32, i32* @SDIO_CTRL, align 4
  %63 = load i32, i32* @SDIO_BUS_CTRL, align 4
  %64 = load i32, i32* @SDIO_CD_CTRL, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @rtsx_write_register(%struct.rtsx_chip* %61, i32 %62, i32 255, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %84

71:                                               ; preds = %60
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %73 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %75 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %82

76:                                               ; preds = %9, %1
  %77 = load i32, i32* @SD_CARD, align 4
  %78 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %79 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %69, %58, %51, %41, %31
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @CHK_SDIO_EXIST(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
