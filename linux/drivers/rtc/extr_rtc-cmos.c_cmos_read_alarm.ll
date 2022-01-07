; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.cmos_rtc = type { i64, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@rtc_lock = common dso_local global i32 0, align 4
@RTC_SECONDS_ALARM = common dso_local global i64 0, align 8
@RTC_MINUTES_ALARM = common dso_local global i64 0, align 8
@RTC_HOURS_ALARM = common dso_local global i64 0, align 8
@RTC_CONTROL = common dso_local global i64 0, align 8
@RTC_DM_BINARY = common dso_local global i8 0, align 1
@RTC_ALWAYS_BCD = common dso_local global i64 0, align 8
@RTC_AIE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @cmos_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmos_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.cmos_rtc*, align 8
  %7 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.cmos_rtc* @dev_get_drvdata(%struct.device* %8)
  store %struct.cmos_rtc* %9, %struct.cmos_rtc** %6, align 8
  %10 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %11 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @is_valid_irq(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %218

18:                                               ; preds = %2
  %19 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %20 = load i64, i64* @RTC_SECONDS_ALARM, align 8
  %21 = call i32 @CMOS_READ(i64 %20)
  %22 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %23 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i64, i64* @RTC_MINUTES_ALARM, align 8
  %26 = call i32 @CMOS_READ(i64 %25)
  %27 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i64, i64* @RTC_HOURS_ALARM, align 8
  %31 = call i32 @CMOS_READ(i64 %30)
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %36 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %81

39:                                               ; preds = %18
  %40 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %41 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @CMOS_READ(i64 %42)
  %44 = and i32 %43, 63
  %45 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 4
  %48 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %39
  %54 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %55 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i32 -1, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %39
  %58 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %59 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %64 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @CMOS_READ(i64 %65)
  %67 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 8
  %70 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %62
  %76 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  store i32 -1, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %62
  br label %80

80:                                               ; preds = %79, %57
  br label %81

81:                                               ; preds = %80, %18
  %82 = load i64, i64* @RTC_CONTROL, align 8
  %83 = call i32 @CMOS_READ(i64 %82)
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %7, align 1
  %85 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %86 = load i8, i8* %7, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* @RTC_DM_BINARY, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load i64, i64* @RTC_ALWAYS_BCD, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %204

95:                                               ; preds = %92, %81
  %96 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %97 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %99, 96
  br i1 %100, label %101, label %110

101:                                              ; preds = %95
  %102 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %103 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @bcd2bin(i32 %105)
  %107 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %108 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  br label %114

110:                                              ; preds = %95
  %111 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %112 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 -1, i32* %113, align 8
  br label %114

114:                                              ; preds = %110, %101
  %115 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %116 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ult i32 %118, 96
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %122 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @bcd2bin(i32 %124)
  %126 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %127 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  br label %133

129:                                              ; preds = %114
  %130 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %131 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i32 -1, i32* %132, align 4
  br label %133

133:                                              ; preds = %129, %120
  %134 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %135 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ult i32 %137, 36
  br i1 %138, label %139, label %148

139:                                              ; preds = %133
  %140 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %141 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @bcd2bin(i32 %143)
  %145 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %146 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  store i32 %144, i32* %147, align 8
  br label %152

148:                                              ; preds = %133
  %149 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %150 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 2
  store i32 -1, i32* %151, align 8
  br label %152

152:                                              ; preds = %148, %139
  %153 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %154 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %203

157:                                              ; preds = %152
  %158 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %159 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = icmp ule i32 %161, 49
  br i1 %162, label %163, label %172

163:                                              ; preds = %157
  %164 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %165 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @bcd2bin(i32 %167)
  %169 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %170 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 3
  store i32 %168, i32* %171, align 4
  br label %176

172:                                              ; preds = %157
  %173 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %174 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 3
  store i32 -1, i32* %175, align 4
  br label %176

176:                                              ; preds = %172, %163
  %177 = load %struct.cmos_rtc*, %struct.cmos_rtc** %6, align 8
  %178 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %202

181:                                              ; preds = %176
  %182 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %183 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = icmp ule i32 %185, 18
  br i1 %186, label %187, label %197

187:                                              ; preds = %181
  %188 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %189 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @bcd2bin(i32 %191)
  %193 = sub nsw i32 %192, 1
  %194 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %195 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 4
  store i32 %193, i32* %196, align 8
  br label %201

197:                                              ; preds = %181
  %198 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %199 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 4
  store i32 -1, i32* %200, align 8
  br label %201

201:                                              ; preds = %197, %187
  br label %202

202:                                              ; preds = %201, %176
  br label %203

203:                                              ; preds = %202, %152
  br label %204

204:                                              ; preds = %203, %92
  %205 = load i8, i8* %7, align 1
  %206 = zext i8 %205 to i32
  %207 = load i8, i8* @RTC_AIE, align 1
  %208 = zext i8 %207 to i32
  %209 = and i32 %206, %208
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %215 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %217 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %216, i32 0, i32 1
  store i64 0, i64* %217, align 8
  store i32 0, i32* %3, align 4
  br label %218

218:                                              ; preds = %204, %15
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local %struct.cmos_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @is_valid_irq(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @CMOS_READ(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
