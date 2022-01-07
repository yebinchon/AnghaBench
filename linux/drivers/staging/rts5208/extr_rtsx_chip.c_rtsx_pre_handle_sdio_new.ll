; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_pre_handle_sdio_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_pre_handle_sdio_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"chip->sdio_in_charge = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"chip->driver_first_load = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"sw_bypass_sd = %d\0A\00", align 1
@TLPTISTAT = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Chip inserted with SDIO!\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@FPGA_PULL_CTL = common dso_local global i32 0, align 4
@FPGA_SD_PULL_CTL_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @rtsx_pre_handle_sdio_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_pre_handle_sdio_new(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %14 = call i64 @CHECK_PID(%struct.rtsx_chip* %13, i32 21128)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %18 = call i32 @rtsx_read_register(%struct.rtsx_chip* %17, i32 65114, i32* %4)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %211

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %23
  br label %47

29:                                               ; preds = %12
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %31 = call i64 @CHECK_PID(%struct.rtsx_chip* %30, i32 21000)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %35 = call i32 @rtsx_read_register(%struct.rtsx_chip* %34, i32 65136, i32* %4)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %211

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 128
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %40
  br label %46

46:                                               ; preds = %45, %29
  br label %47

47:                                               ; preds = %46, %28
  br label %55

48:                                               ; preds = %1
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %50 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %48
  br label %55

55:                                               ; preds = %54, %47
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %57 = call i32 @rtsx_dev(%struct.rtsx_chip* %56)
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %59 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i32, i8*, ...) @dev_dbg(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %60)
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %63 = call i32 @rtsx_dev(%struct.rtsx_chip* %62)
  %64 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %65 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i32, i8*, ...) @dev_dbg(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  %68 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %69 = call i32 @rtsx_dev(%struct.rtsx_chip* %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (i32, i8*, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %195

74:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %76 = load i32, i32* @TLPTISTAT, align 4
  %77 = call i32 @rtsx_read_register(%struct.rtsx_chip* %75, i32 %76, i32* %4)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %211

82:                                               ; preds = %74
  store i32 8, i32* %7, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %127

87:                                               ; preds = %82
  %88 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %89 = call i64 @CHECK_PID(%struct.rtsx_chip* %88, i32 21128)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %93 = call i32 @rtsx_write_register(%struct.rtsx_chip* %92, i32 65114, i32 8, i32 0)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %211

98:                                               ; preds = %91
  br label %112

99:                                               ; preds = %87
  %100 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %101 = call i64 @CHECK_PID(%struct.rtsx_chip* %100, i32 21000)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %105 = call i32 @rtsx_write_register(%struct.rtsx_chip* %104, i32 65136, i32 128, i32 0)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %211

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %99
  br label %112

112:                                              ; preds = %111, %98
  %113 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %114 = load i32, i32* @TLPTISTAT, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @rtsx_write_register(%struct.rtsx_chip* %113, i32 %114, i32 255, i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %211

121:                                              ; preds = %112
  %122 = load i32, i32* @SD_CARD, align 4
  %123 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %124 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %194

127:                                              ; preds = %82
  %128 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %129 = call i32 @rtsx_dev(%struct.rtsx_chip* %128)
  %130 = call i32 (i32, i8*, ...) @dev_dbg(i32 %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %131 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %132 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %127
  %136 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %137 = call i32 @sd_pull_ctl_enable(%struct.rtsx_chip* %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @STATUS_SUCCESS, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %142, i32* %2, align 4
  br label %211

143:                                              ; preds = %135
  br label %155

144:                                              ; preds = %127
  %145 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %146 = load i32, i32* @FPGA_PULL_CTL, align 4
  %147 = load i32, i32* @FPGA_SD_PULL_CTL_BIT, align 4
  %148 = or i32 %147, 32
  %149 = call i32 @rtsx_write_register(%struct.rtsx_chip* %145, i32 %146, i32 %148, i32 0)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %2, align 4
  br label %211

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154, %143
  %156 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %157 = load i32, i32* @SD_CARD, align 4
  %158 = call i32 @card_share_mode(%struct.rtsx_chip* %156, i32 %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @STATUS_SUCCESS, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %163, i32* %2, align 4
  br label %211

164:                                              ; preds = %155
  %165 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %166 = call i64 @CHECK_PID(%struct.rtsx_chip* %165, i32 21128)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %170 = call i32 @rtsx_write_register(%struct.rtsx_chip* %169, i32 65114, i32 8, i32 8)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %2, align 4
  br label %211

175:                                              ; preds = %168
  br label %189

176:                                              ; preds = %164
  %177 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %178 = call i64 @CHECK_PID(%struct.rtsx_chip* %177, i32 21000)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %182 = call i32 @rtsx_write_register(%struct.rtsx_chip* %181, i32 65136, i32 128, i32 128)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %2, align 4
  br label %211

187:                                              ; preds = %180
  br label %188

188:                                              ; preds = %187, %176
  br label %189

189:                                              ; preds = %188, %175
  %190 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %191 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  %192 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %193 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %192, i32 0, i32 1
  store i32 1, i32* %193, align 4
  br label %194

194:                                              ; preds = %189, %121
  br label %209

195:                                              ; preds = %55
  %196 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %197 = load i32, i32* @TLPTISTAT, align 4
  %198 = call i32 @rtsx_write_register(%struct.rtsx_chip* %196, i32 %197, i32 8, i32 8)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = load i32, i32* %6, align 4
  store i32 %202, i32* %2, align 4
  br label %211

203:                                              ; preds = %195
  %204 = load i32, i32* @SD_CARD, align 4
  %205 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %206 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %203, %194
  %210 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %209, %201, %185, %173, %162, %152, %141, %119, %108, %96, %80, %38, %21
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i64 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @sd_pull_ctl_enable(%struct.rtsx_chip*) #1

declare dso_local i32 @card_share_mode(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
