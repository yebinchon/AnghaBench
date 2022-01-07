; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_setalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_setalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32 }
%struct.s3c_rtc = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"s3c_rtc_setalarm: %d, %ptR\0A\00", align 1
@S3C2410_RTCALM = common dso_local global i64 0, align 8
@S3C2410_RTCALM_ALMEN = common dso_local global i32 0, align 4
@S3C2410_RTCALM_SECEN = common dso_local global i32 0, align 4
@S3C2410_ALMSEC = common dso_local global i64 0, align 8
@S3C2410_RTCALM_MINEN = common dso_local global i32 0, align 4
@S3C2410_ALMMIN = common dso_local global i64 0, align 8
@S3C2410_RTCALM_HOUREN = common dso_local global i32 0, align 4
@S3C2410_ALMHOUR = common dso_local global i64 0, align 8
@S3C2410_RTCALM_MONEN = common dso_local global i32 0, align 4
@S3C2410_ALMMON = common dso_local global i64 0, align 8
@S3C2410_RTCALM_DAYEN = common dso_local global i32 0, align 4
@S3C2410_ALMDATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"setting S3C2410_RTCALM to %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @s3c_rtc_setalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_rtc_setalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.s3c_rtc*, align 8
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.s3c_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.s3c_rtc* %11, %struct.s3c_rtc** %6, align 8
  %12 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %12, i32 0, i32 1
  store %struct.rtc_time* %13, %struct.rtc_time** %7, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %16 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %19 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.rtc_time* %18)
  %20 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %21 = call i32 @s3c_rtc_enable_clk(%struct.s3c_rtc* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %179

26:                                               ; preds = %2
  %27 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %28 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @S3C2410_RTCALM, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readb(i64 %31)
  %33 = load i32, i32* @S3C2410_RTCALM_ALMEN, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %36 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @S3C2410_RTCALM, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writeb(i32 0, i64 %39)
  %41 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 60
  br i1 %44, label %45, label %64

45:                                               ; preds = %26
  %46 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load i32, i32* @S3C2410_RTCALM_SECEN, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bin2bcd(i32 %56)
  %58 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %59 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @S3C2410_ALMSEC, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writeb(i32 %57, i64 %62)
  br label %64

64:                                               ; preds = %50, %45, %26
  %65 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 60
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  %70 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load i32, i32* @S3C2410_RTCALM_MINEN, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %79 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bin2bcd(i32 %80)
  %82 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %83 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @S3C2410_ALMMIN, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writeb(i32 %81, i64 %86)
  br label %88

88:                                               ; preds = %74, %69, %64
  %89 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %90 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 24
  br i1 %92, label %93, label %112

93:                                               ; preds = %88
  %94 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %95 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load i32, i32* @S3C2410_RTCALM_HOUREN, align 4
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %103 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @bin2bcd(i32 %104)
  %106 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %107 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @S3C2410_ALMHOUR, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writeb(i32 %105, i64 %110)
  br label %112

112:                                              ; preds = %98, %93, %88
  %113 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %114 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %115, 12
  br i1 %116, label %117, label %137

117:                                              ; preds = %112
  %118 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %119 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %117
  %123 = load i32, i32* @S3C2410_RTCALM_MONEN, align 4
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %127 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  %130 = call i32 @bin2bcd(i32 %129)
  %131 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %132 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @S3C2410_ALMMON, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writeb(i32 %130, i64 %135)
  br label %137

137:                                              ; preds = %122, %117, %112
  %138 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %139 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = icmp sle i32 %140, 31
  br i1 %141, label %142, label %161

142:                                              ; preds = %137
  %143 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %144 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = icmp sge i32 %145, 1
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load i32, i32* @S3C2410_RTCALM_DAYEN, align 4
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %8, align 4
  %151 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %152 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @bin2bcd(i32 %153)
  %155 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %156 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @S3C2410_ALMDATE, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @writeb(i32 %154, i64 %159)
  br label %161

161:                                              ; preds = %147, %142, %137
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %167 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @S3C2410_RTCALM, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @writeb(i32 %165, i64 %170)
  %172 = load %struct.device*, %struct.device** %4, align 8
  %173 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %174 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @s3c_rtc_setaie(%struct.device* %172, i32 %175)
  %177 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %178 = call i32 @s3c_rtc_disable_clk(%struct.s3c_rtc* %177)
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %161, %24
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.s3c_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @s3c_rtc_enable_clk(%struct.s3c_rtc*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @s3c_rtc_setaie(%struct.device*, i32) #1

declare dso_local i32 @s3c_rtc_disable_clk(%struct.s3c_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
