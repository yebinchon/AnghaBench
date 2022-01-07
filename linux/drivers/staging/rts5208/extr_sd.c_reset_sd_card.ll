; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_reset_sd_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_reset_sd_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64*, i32, i32, i64*, i64, i64, %struct.sd_info }
%struct.sd_info = type { i32, i64 }

@SD_CARD = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@FPGA_PULL_CTL = common dso_local global i32 0, align 4
@FPGA_SD_PULL_CTL_BIT = common dso_local global i32 0, align 4
@RESET_MMC_FIRST = common dso_local global i32 0, align 4
@SD_NO_CARD = common dso_local global i32 0, align 4
@SD_CLK_DIVIDE_0 = common dso_local global i32 0, align 4
@REG_SD_BYTE_CNT_L = common dso_local global i32 0, align 4
@REG_SD_BYTE_CNT_H = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"sd_card->sd_type = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reset_sd_card(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.sd_info*, align 8
  %5 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %6 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %7 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %6, i32 0, i32 6
  store %struct.sd_info* %7, %struct.sd_info** %4, align 8
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = call i32 @sd_init_reg_addr(%struct.rtsx_chip* %8)
  %10 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %11 = call i32 @memset(%struct.sd_info* %10, i32 0, i32 16)
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %13 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %12, i32 0, i32 3
  %14 = load i64*, i64** %13, align 8
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %16 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @SD_CARD, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %14, i64 %20
  store i64 0, i64* %21, align 8
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %23 = load i64, i64* @SD_CARD, align 8
  %24 = call i32 @enable_card_clock(%struct.rtsx_chip* %22, i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @STATUS_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %29, i32* %2, align 4
  br label %204

30:                                               ; preds = %1
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %32 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %30
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %37 = call i64 @CHK_SDIO_EXIST(%struct.rtsx_chip* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %82

39:                                               ; preds = %35
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %41 = call i32 @CHK_SDIO_IGNORED(%struct.rtsx_chip* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %82, label %43

43:                                               ; preds = %39
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %45 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %50 = call i32 @sd_pull_ctl_enable(%struct.rtsx_chip* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @STATUS_SUCCESS, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %55, i32* %2, align 4
  br label %204

56:                                               ; preds = %48
  br label %69

57:                                               ; preds = %43
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %59 = load i32, i32* @FPGA_PULL_CTL, align 4
  %60 = load i32, i32* @FPGA_SD_PULL_CTL_BIT, align 4
  %61 = or i32 %60, 32
  %62 = call i32 @rtsx_write_register(%struct.rtsx_chip* %58, i32 %59, i32 %61, i32 0)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @STATUS_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %67, i32* %2, align 4
  br label %204

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %56
  %70 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %71 = load i64, i64* @SD_CARD, align 8
  %72 = call i32 @card_share_mode(%struct.rtsx_chip* %70, i64 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @STATUS_SUCCESS, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %77, i32* %2, align 4
  br label %204

78:                                               ; preds = %69
  %79 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %80 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %79, i32 0, i32 1
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %81, i32* %2, align 4
  br label %204

82:                                               ; preds = %39, %35, %30
  %83 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %84 = call i32 @sd_init_power(%struct.rtsx_chip* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @STATUS_SUCCESS, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %89, i32* %2, align 4
  br label %204

90:                                               ; preds = %82
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %92 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @RESET_MMC_FIRST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %90
  %98 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %99 = call i32 @reset_mmc(%struct.rtsx_chip* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @STATUS_SUCCESS, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %97
  %104 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %105 = load i32, i32* @SD_NO_CARD, align 4
  %106 = call i64 @sd_check_err_code(%struct.rtsx_chip* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %109, i32* %2, align 4
  br label %204

110:                                              ; preds = %103
  %111 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %112 = call i32 @reset_sd(%struct.rtsx_chip* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @STATUS_SUCCESS, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %117, i32* %2, align 4
  br label %204

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %97
  br label %150

120:                                              ; preds = %90
  %121 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %122 = call i32 @reset_sd(%struct.rtsx_chip* %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @STATUS_SUCCESS, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %120
  %127 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %128 = load i32, i32* @SD_NO_CARD, align 4
  %129 = call i64 @sd_check_err_code(%struct.rtsx_chip* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %132, i32* %2, align 4
  br label %204

133:                                              ; preds = %126
  %134 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %135 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %139, i32* %2, align 4
  br label %204

140:                                              ; preds = %133
  %141 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %142 = call i32 @reset_mmc(%struct.rtsx_chip* %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @STATUS_SUCCESS, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %147, i32* %2, align 4
  br label %204

148:                                              ; preds = %140
  br label %149

149:                                              ; preds = %148, %120
  br label %150

150:                                              ; preds = %149, %119
  %151 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %152 = load i32, i32* @SD_CLK_DIVIDE_0, align 4
  %153 = call i32 @sd_set_clock_divider(%struct.rtsx_chip* %151, i32 %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @STATUS_SUCCESS, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %158, i32* %2, align 4
  br label %204

159:                                              ; preds = %150
  %160 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %161 = load i32, i32* @REG_SD_BYTE_CNT_L, align 4
  %162 = call i32 @rtsx_write_register(%struct.rtsx_chip* %160, i32 %161, i32 255, i32 0)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* %5, align 4
  store i32 %166, i32* %2, align 4
  br label %204

167:                                              ; preds = %159
  %168 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %169 = load i32, i32* @REG_SD_BYTE_CNT_H, align 4
  %170 = call i32 @rtsx_write_register(%struct.rtsx_chip* %168, i32 %169, i32 255, i32 2)
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %167
  %174 = load i32, i32* %5, align 4
  store i32 %174, i32* %2, align 4
  br label %204

175:                                              ; preds = %167
  %176 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %177 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %180 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %179, i32 0, i32 3
  %181 = load i64*, i64** %180, align 8
  %182 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %183 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = load i64, i64* @SD_CARD, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds i64, i64* %181, i64 %187
  store i64 %178, i64* %188, align 8
  %189 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %190 = call i32 @sd_set_init_para(%struct.rtsx_chip* %189)
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* @STATUS_SUCCESS, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %175
  %195 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %195, i32* %2, align 4
  br label %204

196:                                              ; preds = %175
  %197 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %198 = call i32 @rtsx_dev(%struct.rtsx_chip* %197)
  %199 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %200 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @dev_dbg(i32 %198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %196, %194, %173, %165, %157, %146, %138, %131, %116, %108, %88, %78, %76, %66, %54, %28
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @sd_init_reg_addr(%struct.rtsx_chip*) #1

declare dso_local i32 @memset(%struct.sd_info*, i32, i32) #1

declare dso_local i32 @enable_card_clock(%struct.rtsx_chip*, i64) #1

declare dso_local i64 @CHK_SDIO_EXIST(%struct.rtsx_chip*) #1

declare dso_local i32 @CHK_SDIO_IGNORED(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_pull_ctl_enable(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @card_share_mode(%struct.rtsx_chip*, i64) #1

declare dso_local i32 @sd_init_power(%struct.rtsx_chip*) #1

declare dso_local i32 @reset_mmc(%struct.rtsx_chip*) #1

declare dso_local i64 @sd_check_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @reset_sd(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_set_clock_divider(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_set_init_para(%struct.rtsx_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
