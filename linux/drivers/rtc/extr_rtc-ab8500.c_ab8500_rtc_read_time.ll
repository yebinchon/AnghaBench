; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab8500.c_ab8500_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab8500.c_ab8500_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ab8500_rtc_time_regs = common dso_local global i32* null, align 8
@AB8500_RTC = common dso_local global i32 0, align 4
@AB8500_RTC_READ_REQ_REG = common dso_local global i32 0, align 4
@RTC_READ_REQUEST = common dso_local global i8 0, align 1
@COUNTS_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ab8500_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @HZ, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = load i32*, i32** @ab8500_rtc_time_regs, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* @AB8500_RTC, align 4
  %25 = load i32, i32* @AB8500_RTC_READ_REQ_REG, align 4
  %26 = load i8, i8* @RTC_READ_REQUEST, align 1
  %27 = call i32 @abx500_set_register_interruptible(%struct.device* %23, i32 %24, i32 %25, i8 zeroext %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %118

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %55, %32
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @time_before(i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load i32, i32* @AB8500_RTC, align 4
  %41 = load i32, i32* @AB8500_RTC_READ_REQ_REG, align 4
  %42 = call i32 @abx500_get_register_interruptible(%struct.device* %39, i32 %40, i32 %41, i8* %13)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %118

47:                                               ; preds = %38
  %48 = load i8, i8* %13, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @RTC_READ_REQUEST, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %57

55:                                               ; preds = %47
  %56 = call i32 @usleep_range(i32 1000, i32 5000)
  br label %33

57:                                               ; preds = %54, %33
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %81, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** @ab8500_rtc_time_regs, align 8
  %61 = call i32 @ARRAY_SIZE(i32* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* @AB8500_RTC, align 4
  %66 = load i32*, i32** @ab8500_rtc_time_regs, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @abx500_get_register_interruptible(%struct.device* %64, i32 %65, i32 %70, i8* %13)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %118

76:                                               ; preds = %63
  %77 = load i8, i8* %13, align 1
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %22, i64 %79
  store i8 %77, i8* %80, align 1
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %58

84:                                               ; preds = %58
  %85 = getelementptr inbounds i8, i8* %22, i64 0
  %86 = load i8, i8* %85, align 16
  %87 = zext i8 %86 to i32
  %88 = shl i32 %87, 16
  %89 = getelementptr inbounds i8, i8* %22, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 8
  %93 = or i32 %88, %92
  %94 = getelementptr inbounds i8, i8* %22, i64 2
  %95 = load i8, i8* %94, align 2
  %96 = zext i8 %95 to i32
  %97 = or i32 %93, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %9, align 8
  %99 = getelementptr inbounds i8, i8* %22, i64 3
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = shl i32 %101, 8
  %103 = getelementptr inbounds i8, i8* %22, i64 4
  %104 = load i8, i8* %103, align 4
  %105 = zext i8 %104 to i32
  %106 = or i32 %102, %105
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* @COUNTS_PER_SEC, align 8
  %110 = udiv i64 %108, %109
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %9, align 8
  %113 = mul i64 %112, 60
  %114 = add i64 %111, %113
  store i64 %114, i64* %10, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %117 = call i32 @rtc_time_to_tm(i64 %115, %struct.rtc_time* %116)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %118

118:                                              ; preds = %84, %74, %45, %30
  %119 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @abx500_set_register_interruptible(%struct.device*, i32, i32, i8 zeroext) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @abx500_get_register_interruptible(%struct.device*, i32, i32, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
