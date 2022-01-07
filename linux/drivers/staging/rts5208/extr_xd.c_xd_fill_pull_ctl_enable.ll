; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_fill_pull_ctl_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_fill_pull_ctl_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_PULL_CTL1 = common dso_local global i32 0, align 4
@XD_D3_PD = common dso_local global i32 0, align 4
@XD_D2_PD = common dso_local global i32 0, align 4
@XD_D1_PD = common dso_local global i32 0, align 4
@XD_D0_PD = common dso_local global i32 0, align 4
@CARD_PULL_CTL2 = common dso_local global i32 0, align 4
@XD_D7_PD = common dso_local global i32 0, align 4
@XD_D6_PD = common dso_local global i32 0, align 4
@XD_D5_PD = common dso_local global i32 0, align 4
@XD_D4_PD = common dso_local global i32 0, align 4
@CARD_PULL_CTL3 = common dso_local global i32 0, align 4
@XD_WP_PD = common dso_local global i32 0, align 4
@XD_CE_PU = common dso_local global i32 0, align 4
@XD_CLE_PD = common dso_local global i32 0, align 4
@XD_CD_PU = common dso_local global i32 0, align 4
@CARD_PULL_CTL4 = common dso_local global i32 0, align 4
@XD_RDY_PU = common dso_local global i32 0, align 4
@XD_WE_PU = common dso_local global i32 0, align 4
@XD_RE_PU = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*)* @xd_fill_pull_ctl_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xd_fill_pull_ctl_enable(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %3 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %4 = call i64 @CHECK_PID(%struct.rtsx_chip* %3, i32 21000)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %69

6:                                                ; preds = %1
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %8 = load i32, i32* @WRITE_REG_CMD, align 4
  %9 = load i32, i32* @CARD_PULL_CTL1, align 4
  %10 = load i32, i32* @XD_D3_PD, align 4
  %11 = load i32, i32* @XD_D2_PD, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @XD_D1_PD, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @XD_D0_PD, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %7, i32 %8, i32 %9, i32 255, i32 %16)
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %19 = load i32, i32* @WRITE_REG_CMD, align 4
  %20 = load i32, i32* @CARD_PULL_CTL2, align 4
  %21 = load i32, i32* @XD_D7_PD, align 4
  %22 = load i32, i32* @XD_D6_PD, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @XD_D5_PD, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @XD_D4_PD, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %18, i32 %19, i32 %20, i32 255, i32 %27)
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %30 = load i32, i32* @WRITE_REG_CMD, align 4
  %31 = load i32, i32* @CARD_PULL_CTL3, align 4
  %32 = load i32, i32* @XD_WP_PD, align 4
  %33 = load i32, i32* @XD_CE_PU, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @XD_CLE_PD, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @XD_CD_PU, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %29, i32 %30, i32 %31, i32 255, i32 %38)
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %41 = load i32, i32* @WRITE_REG_CMD, align 4
  %42 = load i32, i32* @CARD_PULL_CTL4, align 4
  %43 = load i32, i32* @XD_RDY_PU, align 4
  %44 = load i32, i32* @XD_WE_PU, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @XD_RE_PU, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @XD_ALE_PD, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %40, i32 %41, i32 %42, i32 255, i32 %49)
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %52 = load i32, i32* @WRITE_REG_CMD, align 4
  %53 = load i32, i32* @CARD_PULL_CTL5, align 4
  %54 = load i32, i32* @MS_INS_PU, align 4
  %55 = load i32, i32* @SD_WP_PD, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SD_CD_PU, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SD_CMD_PD, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %51, i32 %52, i32 %53, i32 255, i32 %60)
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %63 = load i32, i32* @WRITE_REG_CMD, align 4
  %64 = load i32, i32* @CARD_PULL_CTL6, align 4
  %65 = load i32, i32* @MS_D5_PD, align 4
  %66 = load i32, i32* @MS_D4_PD, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %62, i32 %63, i32 %64, i32 255, i32 %67)
  br label %97

69:                                               ; preds = %1
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %71 = call i64 @CHECK_PID(%struct.rtsx_chip* %70, i32 21128)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %75 = load i32, i32* @QFN, align 4
  %76 = call i64 @CHECK_BARO_PKG(%struct.rtsx_chip* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %73
  %79 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %80 = load i32, i32* @WRITE_REG_CMD, align 4
  %81 = load i32, i32* @CARD_PULL_CTL1, align 4
  %82 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %79, i32 %80, i32 %81, i32 255, i32 85)
  %83 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %84 = load i32, i32* @WRITE_REG_CMD, align 4
  %85 = load i32, i32* @CARD_PULL_CTL2, align 4
  %86 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %83, i32 %84, i32 %85, i32 255, i32 85)
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %88 = load i32, i32* @WRITE_REG_CMD, align 4
  %89 = load i32, i32* @CARD_PULL_CTL3, align 4
  %90 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %87, i32 %88, i32 %89, i32 255, i32 83)
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %92 = load i32, i32* @WRITE_REG_CMD, align 4
  %93 = load i32, i32* @CARD_PULL_CTL4, align 4
  %94 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %91, i32 %92, i32 %93, i32 255, i32 169)
  br label %95

95:                                               ; preds = %78, %73
  br label %96

96:                                               ; preds = %95, %69
  br label %97

97:                                               ; preds = %96, %6
  ret void
}

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i64 @CHECK_BARO_PKG(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
