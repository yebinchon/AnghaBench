; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_pull_ctl_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_pull_ctl_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_PULL_CTL1 = common dso_local global i32 0, align 4
@XD_D3_PD = common dso_local global i32 0, align 4
@SD_DAT7_PU = common dso_local global i32 0, align 4
@SD_CLK_NP = common dso_local global i32 0, align 4
@SD_D5_PU = common dso_local global i32 0, align 4
@CARD_PULL_CTL2 = common dso_local global i32 0, align 4
@SD_D6_PU = common dso_local global i32 0, align 4
@SD_D0_PU = common dso_local global i32 0, align 4
@SD_D1_PU = common dso_local global i32 0, align 4
@XD_D5_PD = common dso_local global i32 0, align 4
@CARD_PULL_CTL3 = common dso_local global i32 0, align 4
@SD_D4_PU = common dso_local global i32 0, align 4
@XD_CE_PD = common dso_local global i32 0, align 4
@XD_CLE_PD = common dso_local global i32 0, align 4
@XD_CD_PU = common dso_local global i32 0, align 4
@CARD_PULL_CTL4 = common dso_local global i32 0, align 4
@XD_RDY_PD = common dso_local global i32 0, align 4
@SD_D3_PU = common dso_local global i32 0, align 4
@SD_D2_PU = common dso_local global i32 0, align 4
@XD_ALE_PD = common dso_local global i32 0, align 4
@CARD_PULL_CTL5 = common dso_local global i32 0, align 4
@MS_INS_PU = common dso_local global i32 0, align 4
@SD_WP_PU = common dso_local global i32 0, align 4
@SD_CD_PU = common dso_local global i32 0, align 4
@SD_CMD_PU = common dso_local global i32 0, align 4
@CARD_PULL_CTL6 = common dso_local global i32 0, align 4
@MS_D5_PD = common dso_local global i32 0, align 4
@MS_D4_PD = common dso_local global i32 0, align 4
@QFN = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_pull_ctl_enable(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %5)
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %8 = call i64 @CHECK_PID(%struct.rtsx_chip* %7, i32 21000)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %73

10:                                               ; preds = %1
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %12 = load i32, i32* @WRITE_REG_CMD, align 4
  %13 = load i32, i32* @CARD_PULL_CTL1, align 4
  %14 = load i32, i32* @XD_D3_PD, align 4
  %15 = load i32, i32* @SD_DAT7_PU, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SD_CLK_NP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SD_D5_PU, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %11, i32 %12, i32 %13, i32 255, i32 %20)
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %23 = load i32, i32* @WRITE_REG_CMD, align 4
  %24 = load i32, i32* @CARD_PULL_CTL2, align 4
  %25 = load i32, i32* @SD_D6_PU, align 4
  %26 = load i32, i32* @SD_D0_PU, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SD_D1_PU, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @XD_D5_PD, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %22, i32 %23, i32 %24, i32 255, i32 %31)
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %34 = load i32, i32* @WRITE_REG_CMD, align 4
  %35 = load i32, i32* @CARD_PULL_CTL3, align 4
  %36 = load i32, i32* @SD_D4_PU, align 4
  %37 = load i32, i32* @XD_CE_PD, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @XD_CLE_PD, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @XD_CD_PU, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %33, i32 %34, i32 %35, i32 255, i32 %42)
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %45 = load i32, i32* @WRITE_REG_CMD, align 4
  %46 = load i32, i32* @CARD_PULL_CTL4, align 4
  %47 = load i32, i32* @XD_RDY_PD, align 4
  %48 = load i32, i32* @SD_D3_PU, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SD_D2_PU, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @XD_ALE_PD, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %44, i32 %45, i32 %46, i32 255, i32 %53)
  %55 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %56 = load i32, i32* @WRITE_REG_CMD, align 4
  %57 = load i32, i32* @CARD_PULL_CTL5, align 4
  %58 = load i32, i32* @MS_INS_PU, align 4
  %59 = load i32, i32* @SD_WP_PU, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SD_CD_PU, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SD_CMD_PU, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %55, i32 %56, i32 %57, i32 255, i32 %64)
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %67 = load i32, i32* @WRITE_REG_CMD, align 4
  %68 = load i32, i32* @CARD_PULL_CTL6, align 4
  %69 = load i32, i32* @MS_D5_PD, align 4
  %70 = load i32, i32* @MS_D4_PD, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %66, i32 %67, i32 %68, i32 255, i32 %71)
  br label %101

73:                                               ; preds = %1
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %75 = call i64 @CHECK_PID(%struct.rtsx_chip* %74, i32 21128)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %73
  %78 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %79 = load i32, i32* @QFN, align 4
  %80 = call i64 @CHECK_BARO_PKG(%struct.rtsx_chip* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %77
  %83 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %84 = load i32, i32* @WRITE_REG_CMD, align 4
  %85 = load i32, i32* @CARD_PULL_CTL1, align 4
  %86 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %83, i32 %84, i32 %85, i32 255, i32 168)
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %88 = load i32, i32* @WRITE_REG_CMD, align 4
  %89 = load i32, i32* @CARD_PULL_CTL2, align 4
  %90 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %87, i32 %88, i32 %89, i32 255, i32 90)
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %92 = load i32, i32* @WRITE_REG_CMD, align 4
  %93 = load i32, i32* @CARD_PULL_CTL3, align 4
  %94 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %91, i32 %92, i32 %93, i32 255, i32 149)
  %95 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %96 = load i32, i32* @WRITE_REG_CMD, align 4
  %97 = load i32, i32* @CARD_PULL_CTL4, align 4
  %98 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %95, i32 %96, i32 %97, i32 255, i32 170)
  br label %99

99:                                               ; preds = %82, %77
  br label %100

100:                                              ; preds = %99, %73
  br label %101

101:                                              ; preds = %100, %10
  %102 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %103 = load i32, i32* @SD_CARD, align 4
  %104 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %102, i32 %103, i32 100)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %108, i32* %2, align 4
  br label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i64 @CHECK_BARO_PKG(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
