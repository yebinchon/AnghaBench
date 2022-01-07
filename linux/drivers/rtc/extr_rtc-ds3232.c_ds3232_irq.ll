; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds3232.c_ds3232_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ds3232 = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.mutex }
%struct.mutex = type { i32 }

@DS3232_REG_SR = common dso_local global i32 0, align 4
@DS3232_REG_SR_A1F = common dso_local global i32 0, align 4
@DS3232_REG_CR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Read Control Register error %d\0A\00", align 1
@DS3232_REG_CR_A1IE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Write Control Register error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Write Status Register error %d\0A\00", align 1
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ds3232_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3232_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ds3232*, align 8
  %7 = alloca %struct.mutex*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.device*
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.ds3232* @dev_get_drvdata(%struct.device* %13)
  store %struct.ds3232* %14, %struct.ds3232** %6, align 8
  %15 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %16 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.mutex* %18, %struct.mutex** %7, align 8
  %19 = load %struct.mutex*, %struct.mutex** %7, align 8
  %20 = call i32 @mutex_lock(%struct.mutex* %19)
  %21 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %22 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DS3232_REG_SR, align 4
  %25 = call i32 @regmap_read(i32 %23, i32 %24, i32* %9)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %96

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @DS3232_REG_SR_A1F, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %95

34:                                               ; preds = %29
  %35 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %36 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DS3232_REG_CR, align 4
  %39 = call i32 @regmap_read(i32 %37, i32 %38, i32* %10)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %44 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_warn(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %94

48:                                               ; preds = %34
  %49 = load i32, i32* @DS3232_REG_CR_A1IE, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %54 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DS3232_REG_CR, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @regmap_write(i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %48
  %62 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %63 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dev_warn(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %96

67:                                               ; preds = %48
  %68 = load i32, i32* @DS3232_REG_SR_A1F, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %73 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DS3232_REG_SR, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @regmap_write(i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %67
  %81 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %82 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @dev_warn(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %96

86:                                               ; preds = %67
  %87 = load %struct.ds3232*, %struct.ds3232** %6, align 8
  %88 = getelementptr inbounds %struct.ds3232, %struct.ds3232* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* @RTC_AF, align 4
  %91 = load i32, i32* @RTC_IRQF, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @rtc_update_irq(%struct.TYPE_2__* %89, i32 1, i32 %92)
  br label %94

94:                                               ; preds = %86, %42
  br label %95

95:                                               ; preds = %94, %29
  br label %96

96:                                               ; preds = %95, %80, %61, %28
  %97 = load %struct.mutex*, %struct.mutex** %7, align 8
  %98 = call i32 @mutex_unlock(%struct.mutex* %97)
  %99 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %99
}

declare dso_local %struct.ds3232* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @rtc_update_irq(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
