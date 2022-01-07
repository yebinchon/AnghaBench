; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_getalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_getalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }
%struct.s3c_rtc = type { i64 }

@S3C2410_ALMSEC = common dso_local global i64 0, align 8
@S3C2410_ALMMIN = common dso_local global i64 0, align 8
@S3C2410_ALMHOUR = common dso_local global i64 0, align 8
@S3C2410_ALMMON = common dso_local global i64 0, align 8
@S3C2410_ALMDATE = common dso_local global i64 0, align 8
@S3C2410_ALMYEAR = common dso_local global i64 0, align 8
@S3C2410_RTCALM = common dso_local global i64 0, align 8
@S3C2410_RTCALM_ALMEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"read alarm %d, %ptR\0A\00", align 1
@S3C2410_RTCALM_SECEN = common dso_local global i32 0, align 4
@S3C2410_RTCALM_MINEN = common dso_local global i32 0, align 4
@S3C2410_RTCALM_HOUREN = common dso_local global i32 0, align 4
@S3C2410_RTCALM_DAYEN = common dso_local global i32 0, align 4
@S3C2410_RTCALM_MONEN = common dso_local global i32 0, align 4
@S3C2410_RTCALM_YEAREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @s3c_rtc_getalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_rtc_getalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
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
  %14 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %15 = call i32 @s3c_rtc_enable_clk(%struct.s3c_rtc* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %178

20:                                               ; preds = %2
  %21 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %22 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @S3C2410_ALMSEC, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i8* @readb(i64 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %31 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @S3C2410_ALMMIN, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i8* @readb(i64 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %40 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @S3C2410_ALMHOUR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i8* @readb(i64 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %49 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @S3C2410_ALMMON, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i8* @readb(i64 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %58 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @S3C2410_ALMDATE, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i8* @readb(i64 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %67 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @S3C2410_ALMYEAR, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i8* @readb(i64 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %76 = getelementptr inbounds %struct.s3c_rtc, %struct.s3c_rtc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @S3C2410_RTCALM, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i8* @readb(i64 %79)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %8, align 4
  %82 = load %struct.s3c_rtc*, %struct.s3c_rtc** %6, align 8
  %83 = call i32 @s3c_rtc_disable_clk(%struct.s3c_rtc* %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @S3C2410_RTCALM_ALMEN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %91 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %95 = call i32 @dev_dbg(%struct.device* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %93, %struct.rtc_time* %94)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @S3C2410_RTCALM_SECEN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %20
  %101 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @bcd2bin(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %107 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %100, %20
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @S3C2410_RTCALM_MINEN, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %115 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @bcd2bin(i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %120 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %113, %108
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @S3C2410_RTCALM_HOUREN, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %128 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @bcd2bin(i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %133 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %126, %121
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @S3C2410_RTCALM_DAYEN, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %141 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @bcd2bin(i32 %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %146 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %139, %134
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @S3C2410_RTCALM_MONEN, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %147
  %153 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %154 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @bcd2bin(i32 %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %159 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %161 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %152, %147
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @S3C2410_RTCALM_YEAREN, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %164
  %170 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %171 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @bcd2bin(i32 %172)
  %174 = ptrtoint i8* %173 to i32
  %175 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %176 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %169, %164
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %18
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.s3c_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @s3c_rtc_enable_clk(%struct.s3c_rtc*) #1

declare dso_local i8* @readb(i64) #1

declare dso_local i32 @s3c_rtc_disable_clk(%struct.s3c_rtc*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, %struct.rtc_time*) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
