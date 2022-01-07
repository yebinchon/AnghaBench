; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.pm8xxx_rtc = type { i32, i32, i32, %struct.pm8xxx_rtc_regs* }
%struct.pm8xxx_rtc_regs = type { i32, i64, i64, i64 }

@NUM_8_BIT_RTC_REGS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Seconds value to be written to RTC = %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Write to RTC Alarm control register failed\0A\00", align 1
@PM8xxx_RTC_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Write to RTC control register failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Write to RTC write data register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pm8xxx_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pm8xxx_rtc*, align 8
  %17 = alloca %struct.pm8xxx_rtc_regs*, align 8
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %19 = load i32, i32* @NUM_8_BIT_RTC_REGS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call %struct.pm8xxx_rtc* @dev_get_drvdata(%struct.device* %23)
  store %struct.pm8xxx_rtc* %24, %struct.pm8xxx_rtc** %16, align 8
  %25 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %16, align 8
  %26 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %25, i32 0, i32 3
  %27 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %26, align 8
  store %struct.pm8xxx_rtc_regs* %27, %struct.pm8xxx_rtc_regs** %17, align 8
  %28 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %16, align 8
  %29 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @EACCES, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %232

35:                                               ; preds = %2
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = call i32 @rtc_tm_to_time(%struct.rtc_time* %36, i64* %8)
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %54, %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @NUM_8_BIT_RTC_REGS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i64, i64* %8, align 8
  %47 = and i64 %46, 255
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %22, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load i64, i64* %8, align 8
  %53 = lshr i64 %52, 8
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %16, align 8
  %59 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %58, i32 0, i32 0
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %16, align 8
  %63 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %17, align 8
  %66 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @regmap_read(i32 %64, i64 %67, i32* %14)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  br label %226

72:                                               ; preds = %57
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %17, align 8
  %75 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %72
  store i32 1, i32* %12, align 4
  %80 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %17, align 8
  %81 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %14, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %14, align 4
  %86 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %16, align 8
  %87 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %17, align 8
  %90 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @regmap_write(i32 %88, i64 %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %79
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %226

99:                                               ; preds = %79
  br label %100

100:                                              ; preds = %99, %72
  %101 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %16, align 8
  %102 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %17, align 8
  %105 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @regmap_read(i32 %103, i64 %106, i32* %15)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  br label %226

111:                                              ; preds = %100
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @PM8xxx_RTC_ENABLE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %111
  store i32 1, i32* %13, align 4
  %117 = load i32, i32* @PM8xxx_RTC_ENABLE, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %15, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %15, align 4
  %121 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %16, align 8
  %122 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %17, align 8
  %125 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @regmap_write(i32 %123, i64 %126, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %116
  %132 = load %struct.device*, %struct.device** %4, align 8
  %133 = call i32 @dev_err(%struct.device* %132, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %226

134:                                              ; preds = %116
  br label %135

135:                                              ; preds = %134, %111
  %136 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %16, align 8
  %137 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %17, align 8
  %140 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @regmap_write(i32 %138, i64 %141, i32 0)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %135
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = call i32 @dev_err(%struct.device* %146, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %226

148:                                              ; preds = %135
  %149 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %16, align 8
  %150 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %17, align 8
  %153 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  %156 = getelementptr inbounds i32, i32* %22, i64 1
  %157 = mul nuw i64 4, %20
  %158 = sub i64 %157, 1
  %159 = trunc i64 %158 to i32
  %160 = call i32 @regmap_bulk_write(i32 %151, i64 %155, i32* %156, i32 %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %148
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = call i32 @dev_err(%struct.device* %164, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %226

166:                                              ; preds = %148
  %167 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %16, align 8
  %168 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %17, align 8
  %171 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i32, i32* %22, i64 0
  %174 = load i32, i32* %173, align 16
  %175 = call i32 @regmap_write(i32 %169, i64 %172, i32 %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %166
  %179 = load %struct.device*, %struct.device** %4, align 8
  %180 = call i32 @dev_err(%struct.device* %179, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %226

181:                                              ; preds = %166
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %202

184:                                              ; preds = %181
  %185 = load i32, i32* @PM8xxx_RTC_ENABLE, align 4
  %186 = load i32, i32* %15, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %15, align 4
  %188 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %16, align 8
  %189 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %17, align 8
  %192 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %15, align 4
  %195 = call i32 @regmap_write(i32 %190, i64 %193, i32 %194)
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %184
  %199 = load %struct.device*, %struct.device** %4, align 8
  %200 = call i32 @dev_err(%struct.device* %199, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %226

201:                                              ; preds = %184
  br label %202

202:                                              ; preds = %201, %181
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %225

205:                                              ; preds = %202
  %206 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %17, align 8
  %207 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %14, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %14, align 4
  %211 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %16, align 8
  %212 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %17, align 8
  %215 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* %14, align 4
  %218 = call i32 @regmap_write(i32 %213, i64 %216, i32 %217)
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %205
  %222 = load %struct.device*, %struct.device** %4, align 8
  %223 = call i32 @dev_err(%struct.device* %222, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %226

224:                                              ; preds = %205
  br label %225

225:                                              ; preds = %224, %202
  br label %226

226:                                              ; preds = %225, %221, %198, %178, %163, %145, %131, %110, %96, %71
  %227 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %16, align 8
  %228 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %227, i32 0, i32 0
  %229 = load i64, i64* %9, align 8
  %230 = call i32 @spin_unlock_irqrestore(i32* %228, i64 %229)
  %231 = load i32, i32* %6, align 4
  store i32 %231, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %232

232:                                              ; preds = %226, %32
  %233 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %233)
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.pm8xxx_rtc* @dev_get_drvdata(%struct.device*) #2

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @regmap_read(i32, i64, i32*) #2

declare dso_local i32 @regmap_write(i32, i64, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @regmap_bulk_write(i32, i64, i32*, i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
