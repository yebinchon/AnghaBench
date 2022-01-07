; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_prepare_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_prepare_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i64, i32, %struct.ms_info }
%struct.ms_info = type { i64, %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@FPGA_PULL_CTL = common dso_local global i32 0, align 4
@FPGA_MS_PULL_CTL_BIT = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@MS_OUTPUT_EN = common dso_local global i32 0, align 4
@MS_CFG = common dso_local global i32 0, align 4
@SAMPLE_TIME_RISING = common dso_local global i32 0, align 4
@PUSH_TIME_DEFAULT = common dso_local global i32 0, align 4
@NO_EXTEND_TOGGLE = common dso_local global i32 0, align 4
@MS_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@SAMPLE_TIME_FALLING = common dso_local global i32 0, align 4
@MS_TRANS_CFG = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@NO_AUTO_READ_INT_REG = common dso_local global i32 0, align 4
@CARD_STOP = common dso_local global i32 0, align 4
@MS_STOP = common dso_local global i32 0, align 4
@MS_CLR_ERR = common dso_local global i32 0, align 4
@MS_OC_EVER = common dso_local global i32 0, align 4
@MS_OC_NOW = common dso_local global i32 0, align 4
@SD_MS_2LUN = common dso_local global i32 0, align 4
@SD_OC_EVER = common dso_local global i32 0, align 4
@SD_OC_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @ms_prepare_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_prepare_reset(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.ms_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %8 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %7, i32 0, i32 3
  store %struct.ms_info* %8, %struct.ms_info** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %10 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %12 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %14 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %16 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %19 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %21 = call i32 @ms_power_off_card3v3(%struct.rtsx_chip* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @STATUS_SUCCESS, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %26, i32* %2, align 4
  br label %166

27:                                               ; preds = %1
  %28 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %29 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call i32 @wait_timeout(i32 250)
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %36 = load i32, i32* @MS_CARD, align 4
  %37 = call i32 @enable_card_clock(%struct.rtsx_chip* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @STATUS_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %42, i32* %2, align 4
  br label %166

43:                                               ; preds = %34
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %45 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %50 = call i32 @ms_pull_ctl_enable(%struct.rtsx_chip* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @STATUS_SUCCESS, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %55, i32* %2, align 4
  br label %166

56:                                               ; preds = %48
  br label %68

57:                                               ; preds = %43
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %59 = load i32, i32* @FPGA_PULL_CTL, align 4
  %60 = load i32, i32* @FPGA_MS_PULL_CTL_BIT, align 4
  %61 = or i32 %60, 32
  %62 = call i32 @rtsx_write_register(%struct.rtsx_chip* %58, i32 %59, i32 %61, i32 0)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %166

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %56
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %70 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %68
  %74 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %75 = load i32, i32* @MS_CARD, align 4
  %76 = call i32 @card_power_on(%struct.rtsx_chip* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @STATUS_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %81, i32* %2, align 4
  br label %166

82:                                               ; preds = %73
  %83 = call i32 @wait_timeout(i32 150)
  br label %84

84:                                               ; preds = %82, %68
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %86 = load i32, i32* @CARD_OE, align 4
  %87 = load i32, i32* @MS_OUTPUT_EN, align 4
  %88 = load i32, i32* @MS_OUTPUT_EN, align 4
  %89 = call i32 @rtsx_write_register(%struct.rtsx_chip* %85, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %166

94:                                               ; preds = %84
  %95 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %96 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %94
  %100 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %101 = load i32, i32* @MS_CFG, align 4
  %102 = load i32, i32* @SAMPLE_TIME_RISING, align 4
  %103 = load i32, i32* @PUSH_TIME_DEFAULT, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @NO_EXTEND_TOGGLE, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @MS_BUS_WIDTH_1, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @rtsx_write_register(%struct.rtsx_chip* %100, i32 %101, i32 255, i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %166

114:                                              ; preds = %99
  br label %131

115:                                              ; preds = %94
  %116 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %117 = load i32, i32* @MS_CFG, align 4
  %118 = load i32, i32* @SAMPLE_TIME_FALLING, align 4
  %119 = load i32, i32* @PUSH_TIME_DEFAULT, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @NO_EXTEND_TOGGLE, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @MS_BUS_WIDTH_1, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @rtsx_write_register(%struct.rtsx_chip* %116, i32 %117, i32 255, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %115
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %166

130:                                              ; preds = %115
  br label %131

131:                                              ; preds = %130, %114
  %132 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %133 = load i32, i32* @MS_TRANS_CFG, align 4
  %134 = load i32, i32* @NO_WAIT_INT, align 4
  %135 = load i32, i32* @NO_AUTO_READ_INT_REG, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @rtsx_write_register(%struct.rtsx_chip* %132, i32 %133, i32 255, i32 %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %166

142:                                              ; preds = %131
  %143 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %144 = load i32, i32* @CARD_STOP, align 4
  %145 = load i32, i32* @MS_STOP, align 4
  %146 = load i32, i32* @MS_CLR_ERR, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @MS_STOP, align 4
  %149 = load i32, i32* @MS_CLR_ERR, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @rtsx_write_register(%struct.rtsx_chip* %143, i32 %144, i32 %147, i32 %150)
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %142
  %155 = load i32, i32* %5, align 4
  store i32 %155, i32* %2, align 4
  br label %166

156:                                              ; preds = %142
  %157 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %158 = call i32 @ms_set_init_para(%struct.rtsx_chip* %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @STATUS_SUCCESS, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %163, i32* %2, align 4
  br label %166

164:                                              ; preds = %156
  %165 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %164, %162, %154, %140, %128, %112, %92, %80, %65, %54, %41, %25
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @ms_power_off_card3v3(%struct.rtsx_chip*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @enable_card_clock(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_pull_ctl_enable(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @card_power_on(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @ms_set_init_para(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
