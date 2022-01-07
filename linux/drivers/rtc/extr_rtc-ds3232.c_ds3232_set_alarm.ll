; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ds3232 = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DS3232_REG_CR = common dso_local global i32 0, align 4
@DS3232_REG_CR_A1IE = common dso_local global i32 0, align 4
@DS3232_REG_CR_A2IE = common dso_local global i32 0, align 4
@DS3232_REG_SR = common dso_local global i32 0, align 4
@DS3232_REG_SR_A1F = common dso_local global i32 0, align 4
@DS3232_REG_SR_A2F = common dso_local global i32 0, align 4
@DS3232_REG_ALARM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds3232_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3232_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.ds3232*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.ds3232* @dev_get_drvdata(%struct.device* %11)
  store %struct.ds3232* %12, %struct.ds3232** %6, align 8
  %13 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %14 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %122

20:                                               ; preds = %2
  %21 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bin2bcd(i32 %24)
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %25, i32* %26, align 16
  %27 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bin2bcd(i32 %30)
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bin2bcd(i32 %36)
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %37, i32* %38, align 8
  %39 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bin2bcd(i32 %42)
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %43, i32* %44, align 4
  %45 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %46 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DS3232_REG_CR, align 4
  %49 = call i32 @regmap_read(i32 %47, i32 %48, i32* %7)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %20
  br label %120

53:                                               ; preds = %20
  %54 = load i32, i32* @DS3232_REG_CR_A1IE, align 4
  %55 = load i32, i32* @DS3232_REG_CR_A2IE, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %61 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DS3232_REG_CR, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @regmap_write(i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %120

69:                                               ; preds = %53
  %70 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %71 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @DS3232_REG_SR, align 4
  %74 = call i32 @regmap_read(i32 %72, i32 %73, i32* %8)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %120

78:                                               ; preds = %69
  %79 = load i32, i32* @DS3232_REG_SR_A1F, align 4
  %80 = load i32, i32* @DS3232_REG_SR_A2F, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %86 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @DS3232_REG_SR, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @regmap_write(i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %78
  br label %120

94:                                               ; preds = %78
  %95 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %96 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @DS3232_REG_ALARM1, align 4
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %100 = call i32 @regmap_bulk_write(i32 %97, i32 %98, i32* %99, i32 4)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %120

104:                                              ; preds = %94
  %105 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %106 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load i32, i32* @DS3232_REG_CR_A1IE, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %114 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DS3232_REG_CR, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @regmap_write(i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %109, %104
  br label %120

120:                                              ; preds = %119, %103, %93, %77, %68, %52
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %17
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.ds3232* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
