; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ls1x.c_ls1x_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ls1x.c_ls1x_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@LS1X_MONTH_OFFSET = common dso_local global i32 0, align 4
@LS1X_DAY_OFFSET = common dso_local global i32 0, align 4
@LS1X_HOUR_OFFSET = common dso_local global i32 0, align 4
@LS1X_MIN_OFFSET = common dso_local global i32 0, align 4
@LS1X_SEC_OFFSET = common dso_local global i32 0, align 4
@SYS_TOYWRITE0 = common dso_local global i32 0, align 4
@SYS_COUNTER_CNTRL = common dso_local global i32 0, align 4
@SYS_CNTRL_TS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"set time timeout!\0A\00", align 1
@SYS_TOYWRITE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ls1x_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls1x_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load i32, i32* @ETIMEDOUT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @LS1X_MONTH_OFFSET, align 4
  %17 = shl i32 %15, %16
  %18 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LS1X_DAY_OFFSET, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %17, %22
  %24 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LS1X_HOUR_OFFSET, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %23, %28
  %30 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LS1X_MIN_OFFSET, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %29, %34
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LS1X_SEC_OFFSET, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %35, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @SYS_TOYWRITE0, align 4
  %45 = call i32 @writel(i64 %43, i32 %44)
  store i64 65536, i64* %8, align 8
  br label %46

46:                                               ; preds = %58, %2
  %47 = load i32, i32* @SYS_COUNTER_CNTRL, align 4
  %48 = call i32 @readl(i32 %47)
  %49 = load i32, i32* @SYS_CNTRL_TS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %52, %46
  %57 = phi i1 [ false, %46 ], [ %55, %52 ]
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = call i32 @usleep_range(i32 1000, i32 3000)
  br label %46

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %96

66:                                               ; preds = %60
  %67 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1900
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i32, i32* @SYS_TOYWRITE1, align 4
  %74 = call i32 @writel(i64 %72, i32 %73)
  store i64 65536, i64* %8, align 8
  br label %75

75:                                               ; preds = %87, %66
  %76 = load i32, i32* @SYS_COUNTER_CNTRL, align 4
  %77 = call i32 @readl(i32 %76)
  %78 = load i32, i32* @SYS_CNTRL_TS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %8, align 8
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %81, %75
  %86 = phi i1 [ false, %75 ], [ %84, %81 ]
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  %88 = call i32 @usleep_range(i32 1000, i32 3000)
  br label %75

89:                                               ; preds = %85
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %96

95:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %98

96:                                               ; preds = %92, %63
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %95
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
