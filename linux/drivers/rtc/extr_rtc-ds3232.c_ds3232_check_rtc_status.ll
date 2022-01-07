; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_check_rtc_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_check_rtc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ds3232 = type { i32 }

@DS3232_REG_SR = common dso_local global i32 0, align 4
@DS3232_REG_SR_OSF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"oscillator discontinuity flagged, time unreliable\0A\00", align 1
@DS3232_REG_SR_A1F = common dso_local global i32 0, align 4
@DS3232_REG_SR_A2F = common dso_local global i32 0, align 4
@DS3232_REG_CR = common dso_local global i32 0, align 4
@DS3232_REG_CR_A1IE = common dso_local global i32 0, align 4
@DS3232_REG_CR_A2IE = common dso_local global i32 0, align 4
@DS3232_REG_CR_INTCN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ds3232_check_rtc_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3232_check_rtc_status(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ds3232*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ds3232* @dev_get_drvdata(%struct.device* %8)
  store %struct.ds3232* %9, %struct.ds3232** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.ds3232*, %struct.ds3232** %4, align 8
  %11 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DS3232_REG_SR, align 4
  %14 = call i32 @regmap_read(i32 %12, i32 %13, i32* %7)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %72

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @DS3232_REG_SR_OSF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @dev_warn(%struct.device* %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* @DS3232_REG_SR_OSF, align 4
  %29 = load i32, i32* @DS3232_REG_SR_A1F, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DS3232_REG_SR_A2F, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ds3232*, %struct.ds3232** %4, align 8
  %37 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DS3232_REG_SR, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @regmap_write(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %27
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %72

46:                                               ; preds = %27
  %47 = load %struct.ds3232*, %struct.ds3232** %4, align 8
  %48 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DS3232_REG_CR, align 4
  %51 = call i32 @regmap_read(i32 %49, i32 %50, i32* %6)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %72

56:                                               ; preds = %46
  %57 = load i32, i32* @DS3232_REG_CR_A1IE, align 4
  %58 = load i32, i32* @DS3232_REG_CR_A2IE, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @DS3232_REG_CR_INTCN, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.ds3232*, %struct.ds3232** %4, align 8
  %67 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DS3232_REG_CR, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @regmap_write(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %56, %54, %44, %17
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.ds3232* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
