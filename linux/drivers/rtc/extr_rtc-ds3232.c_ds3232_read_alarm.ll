; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.ds3232 = type { i32 }

@DS3232_REG_SR = common dso_local global i32 0, align 4
@DS3232_REG_CR = common dso_local global i32 0, align 4
@DS3232_REG_ALARM1 = common dso_local global i32 0, align 4
@DS3232_REG_CR_A1IE = common dso_local global i32 0, align 4
@DS3232_REG_SR_A1F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds3232_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3232_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.ds3232*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.ds3232* @dev_get_drvdata(%struct.device* %10)
  store %struct.ds3232* %11, %struct.ds3232** %5, align 8
  %12 = load %struct.ds3232*, %struct.ds3232** %5, align 8
  %13 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DS3232_REG_SR, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %86

20:                                               ; preds = %2
  %21 = load %struct.ds3232*, %struct.ds3232** %5, align 8
  %22 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DS3232_REG_CR, align 4
  %25 = call i32 @regmap_read(i32 %23, i32 %24, i32* %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %86

29:                                               ; preds = %20
  %30 = load %struct.ds3232*, %struct.ds3232** %5, align 8
  %31 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DS3232_REG_ALARM1, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %35 = call i32 @regmap_bulk_read(i32 %32, i32 %33, i32* %34, i32 4)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %86

39:                                               ; preds = %29
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = and i32 %41, 127
  %43 = call i8* @bcd2bin(i32 %42)
  %44 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %45 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i8* %43, i8** %46, align 8
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 127
  %50 = call i8* @bcd2bin(i32 %49)
  %51 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 127
  %57 = call i8* @bcd2bin(i32 %56)
  %58 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %59 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 127
  %64 = call i8* @bcd2bin(i32 %63)
  %65 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %66 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @DS3232_REG_CR_A1IE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %76 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @DS3232_REG_SR_A1F, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %85 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %39, %38, %28, %19
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local %struct.ds3232* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
