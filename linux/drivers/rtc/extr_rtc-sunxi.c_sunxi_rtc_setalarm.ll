; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sunxi.c_sunxi_rtc_setalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sunxi.c_sunxi_rtc_setalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32 }
%struct.sunxi_rtc_dev = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Error in getting time\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Date to set in the past\0A\00", align 1
@SEC_IN_DAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Day must be in the range 0 - 255\0A\00", align 1
@SEC_IN_HOUR = common dso_local global i64 0, align 8
@SEC_IN_MIN = common dso_local global i64 0, align 8
@SUNXI_ALRM_DHMS = common dso_local global i64 0, align 8
@SUNXI_ALRM_IRQ_EN = common dso_local global i64 0, align 8
@SUNXI_ALRM_IRQ_EN_CNT_IRQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sunxi_rtc_setalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_rtc_setalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.sunxi_rtc_dev*, align 8
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca %struct.rtc_time, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.sunxi_rtc_dev* @dev_get_drvdata(%struct.device* %16)
  store %struct.sunxi_rtc_dev* %17, %struct.sunxi_rtc_dev** %6, align 8
  %18 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %19 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %18, i32 0, i32 1
  store %struct.rtc_time* %19, %struct.rtc_time** %7, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @sunxi_rtc_gettime(%struct.device* %20, %struct.rtc_time* %8)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %123

29:                                               ; preds = %2
  %30 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %31 = call i32 @rtc_tm_sub(%struct.rtc_time* %30, %struct.rtc_time* %8)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %123

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @SEC_IN_DAY, align 4
  %42 = mul nsw i32 255, %41
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %123

49:                                               ; preds = %39
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i32, i32* @SEC_IN_DAY, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %52, %54
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i32, i32* @SEC_IN_DAY, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %56, %58
  %60 = load i64, i64* %11, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @SEC_IN_HOUR, align 8
  %64 = udiv i64 %62, %63
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* @SEC_IN_HOUR, align 8
  %67 = mul i64 %65, %66
  %68 = load i64, i64* %11, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @SEC_IN_MIN, align 8
  %72 = udiv i64 %70, %71
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* @SEC_IN_MIN, align 8
  %75 = mul i64 %73, %74
  %76 = load i64, i64* %11, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %11, align 8
  %78 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %79 = call i32 @sunxi_rtc_setaie(i32 0, %struct.sunxi_rtc_dev* %78)
  %80 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %81 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SUNXI_ALRM_DHMS, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 0, i64 %84)
  %86 = call i32 @usleep_range(i32 100, i32 300)
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @SUNXI_ALRM_SET_SEC_VALUE(i64 %87)
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @SUNXI_ALRM_SET_MIN_VALUE(i64 %89)
  %91 = or i32 %88, %90
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @SUNXI_ALRM_SET_HOUR_VALUE(i64 %92)
  %94 = or i32 %91, %93
  %95 = load i64, i64* %12, align 8
  %96 = call i32 @SUNXI_ALRM_SET_DAY_VALUE(i64 %95)
  %97 = or i32 %94, %96
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %100 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SUNXI_ALRM_DHMS, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  %105 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %106 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SUNXI_ALRM_IRQ_EN, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 0, i64 %109)
  %111 = load i32, i32* @SUNXI_ALRM_IRQ_EN_CNT_IRQ_EN, align 4
  %112 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %113 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SUNXI_ALRM_IRQ_EN, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  %118 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %119 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %122 = call i32 @sunxi_rtc_setaie(i32 %120, %struct.sunxi_rtc_dev* %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %49, %44, %34, %24
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.sunxi_rtc_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sunxi_rtc_gettime(%struct.device*, %struct.rtc_time*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @rtc_tm_sub(%struct.rtc_time*, %struct.rtc_time*) #1

declare dso_local i32 @sunxi_rtc_setaie(i32, %struct.sunxi_rtc_dev*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @SUNXI_ALRM_SET_SEC_VALUE(i64) #1

declare dso_local i32 @SUNXI_ALRM_SET_MIN_VALUE(i64) #1

declare dso_local i32 @SUNXI_ALRM_SET_HOUR_VALUE(i64) #1

declare dso_local i32 @SUNXI_ALRM_SET_DAY_VALUE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
