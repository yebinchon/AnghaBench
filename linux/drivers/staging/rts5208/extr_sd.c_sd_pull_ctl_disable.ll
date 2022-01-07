; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_pull_ctl_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_pull_ctl_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@CARD_PULL_CTL1 = common dso_local global i32 0, align 4
@XD_D3_PD = common dso_local global i32 0, align 4
@SD_D7_PD = common dso_local global i32 0, align 4
@SD_CLK_PD = common dso_local global i32 0, align 4
@SD_D5_PD = common dso_local global i32 0, align 4
@CARD_PULL_CTL2 = common dso_local global i32 0, align 4
@SD_D6_PD = common dso_local global i32 0, align 4
@SD_D0_PD = common dso_local global i32 0, align 4
@SD_D1_PD = common dso_local global i32 0, align 4
@XD_D5_PD = common dso_local global i32 0, align 4
@CARD_PULL_CTL3 = common dso_local global i32 0, align 4
@SD_D4_PD = common dso_local global i32 0, align 4
@XD_CE_PD = common dso_local global i32 0, align 4
@XD_CLE_PD = common dso_local global i32 0, align 4
@XD_CD_PU = common dso_local global i32 0, align 4
@CARD_PULL_CTL4 = common dso_local global i32 0, align 4
@XD_RDY_PD = common dso_local global i32 0, align 4
@SD_D3_PD = common dso_local global i32 0, align 4
@SD_D2_PD = common dso_local global i32 0, align 4
@XD_ALE_PD = common dso_local global i32 0, align 4
@CARD_PULL_CTL5 = common dso_local global i32 0, align 4
@MS_INS_PU = common dso_local global i32 0, align 4
@SD_WP_PD = common dso_local global i32 0, align 4
@SD_CD_PU = common dso_local global i32 0, align 4
@SD_CMD_PD = common dso_local global i32 0, align 4
@CARD_PULL_CTL6 = common dso_local global i32 0, align 4
@MS_D5_PD = common dso_local global i32 0, align 4
@MS_D4_PD = common dso_local global i32 0, align 4
@QFN = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_pull_ctl_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_pull_ctl_disable(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = call i64 @CHECK_PID(%struct.rtsx_chip* %5, i32 21000)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %95

8:                                                ; preds = %1
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %10 = load i32, i32* @CARD_PULL_CTL1, align 4
  %11 = load i32, i32* @XD_D3_PD, align 4
  %12 = load i32, i32* @SD_D7_PD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SD_CLK_PD, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SD_D5_PD, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @rtsx_write_register(%struct.rtsx_chip* %9, i32 %10, i32 255, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %8
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %141

23:                                               ; preds = %8
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %25 = load i32, i32* @CARD_PULL_CTL2, align 4
  %26 = load i32, i32* @SD_D6_PD, align 4
  %27 = load i32, i32* @SD_D0_PD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SD_D1_PD, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @XD_D5_PD, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @rtsx_write_register(%struct.rtsx_chip* %24, i32 %25, i32 255, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %141

38:                                               ; preds = %23
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %40 = load i32, i32* @CARD_PULL_CTL3, align 4
  %41 = load i32, i32* @SD_D4_PD, align 4
  %42 = load i32, i32* @XD_CE_PD, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @XD_CLE_PD, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @XD_CD_PU, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @rtsx_write_register(%struct.rtsx_chip* %39, i32 %40, i32 255, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %141

53:                                               ; preds = %38
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %55 = load i32, i32* @CARD_PULL_CTL4, align 4
  %56 = load i32, i32* @XD_RDY_PD, align 4
  %57 = load i32, i32* @SD_D3_PD, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SD_D2_PD, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @XD_ALE_PD, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @rtsx_write_register(%struct.rtsx_chip* %54, i32 %55, i32 255, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %141

68:                                               ; preds = %53
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %70 = load i32, i32* @CARD_PULL_CTL5, align 4
  %71 = load i32, i32* @MS_INS_PU, align 4
  %72 = load i32, i32* @SD_WP_PD, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SD_CD_PU, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @SD_CMD_PD, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @rtsx_write_register(%struct.rtsx_chip* %69, i32 %70, i32 255, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %141

83:                                               ; preds = %68
  %84 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %85 = load i32, i32* @CARD_PULL_CTL6, align 4
  %86 = load i32, i32* @MS_D5_PD, align 4
  %87 = load i32, i32* @MS_D4_PD, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @rtsx_write_register(%struct.rtsx_chip* %84, i32 %85, i32 255, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %141

94:                                               ; preds = %83
  br label %139

95:                                               ; preds = %1
  %96 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %97 = call i64 @CHECK_PID(%struct.rtsx_chip* %96, i32 21128)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %138

99:                                               ; preds = %95
  %100 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %101 = load i32, i32* @QFN, align 4
  %102 = call i64 @CHECK_BARO_PKG(%struct.rtsx_chip* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %99
  %105 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %106 = load i32, i32* @CARD_PULL_CTL1, align 4
  %107 = call i32 @rtsx_write_register(%struct.rtsx_chip* %105, i32 %106, i32 255, i32 85)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %141

112:                                              ; preds = %104
  %113 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %114 = load i32, i32* @CARD_PULL_CTL2, align 4
  %115 = call i32 @rtsx_write_register(%struct.rtsx_chip* %113, i32 %114, i32 255, i32 85)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %141

120:                                              ; preds = %112
  %121 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %122 = load i32, i32* @CARD_PULL_CTL3, align 4
  %123 = call i32 @rtsx_write_register(%struct.rtsx_chip* %121, i32 %122, i32 255, i32 75)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* %2, align 4
  br label %141

128:                                              ; preds = %120
  %129 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %130 = load i32, i32* @CARD_PULL_CTL4, align 4
  %131 = call i32 @rtsx_write_register(%struct.rtsx_chip* %129, i32 %130, i32 255, i32 105)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %2, align 4
  br label %141

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %99
  br label %138

138:                                              ; preds = %137, %95
  br label %139

139:                                              ; preds = %138, %94
  %140 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %134, %126, %118, %110, %92, %81, %66, %51, %36, %21
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i64 @CHECK_BARO_PKG(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
