; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r9701.c_r9701_get_datetime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r9701.c_r9701_get_datetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8* }

@RSECCNT = common dso_local global i8 0, align 1
@RMINCNT = common dso_local global i8 0, align 1
@RHRCNT = common dso_local global i8 0, align 1
@RDAYCNT = common dso_local global i8 0, align 1
@RMONCNT = common dso_local global i8 0, align 1
@RYRCNT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @r9701_get_datetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r9701_get_datetime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x i8], align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %8 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %9 = load i8, i8* @RSECCNT, align 1
  store i8 %9, i8* %8, align 1
  %10 = getelementptr inbounds i8, i8* %8, i64 1
  %11 = load i8, i8* @RMINCNT, align 1
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds i8, i8* %10, i64 1
  %13 = load i8, i8* @RHRCNT, align 1
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds i8, i8* %12, i64 1
  %15 = load i8, i8* @RDAYCNT, align 1
  store i8 %15, i8* %14, align 1
  %16 = getelementptr inbounds i8, i8* %14, i64 1
  %17 = load i8, i8* @RMONCNT, align 1
  store i8 %17, i8* %16, align 1
  %18 = getelementptr inbounds i8, i8* %16, i64 1
  %19 = load i8, i8* @RYRCNT, align 1
  store i8 %19, i8* %18, align 1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %22 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i8* %22)
  %24 = call i32 @read_regs(%struct.device* %20, i8* %21, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %64

29:                                               ; preds = %2
  %30 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %31 = call i32 @memset(%struct.rtc_time* %30, i32 0, i32 48)
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = call i8* @bcd2bin(i8 zeroext %33)
  %35 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = call i8* @bcd2bin(i8 zeroext %38)
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = call i8* @bcd2bin(i8 zeroext %43)
  %45 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 3
  %48 = load i8, i8* %47, align 1
  %49 = call i8* @bcd2bin(i8 zeroext %48)
  %50 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 4
  %53 = load i8, i8* %52, align 1
  %54 = call i8* @bcd2bin(i8 zeroext %53)
  %55 = getelementptr i8, i8* %54, i64 -1
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 5
  %59 = load i8, i8* %58, align 1
  %60 = call i8* @bcd2bin(i8 zeroext %59)
  %61 = getelementptr i8, i8* %60, i64 100
  %62 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %29, %27
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @read_regs(%struct.device*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @memset(%struct.rtc_time*, i32, i32) #1

declare dso_local i8* @bcd2bin(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
