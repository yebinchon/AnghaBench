; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_irq_1_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8010.c_rx8010_irq_1_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rx8010_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RX8010_FLAG = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@RX8010_FLAG_VLF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Frequency stop detected\0A\00", align 1
@RX8010_FLAG_TF = common dso_local global i32 0, align 4
@RTC_PF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@RX8010_FLAG_AF = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RX8010_FLAG_UF = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rx8010_irq_1_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8010_irq_1_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rx8010_data*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.i2c_client*
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = call %struct.rx8010_data* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.rx8010_data* %12, %struct.rx8010_data** %7, align 8
  %13 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %14 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %19 = load i32, i32* @RX8010_FLAG, align 4
  %20 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %25 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %101

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @RX8010_FLAG_VLF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @RX8010_FLAG_TF, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i32, i32* @RX8010_FLAG_TF, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %50 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* @RTC_PF, align 4
  %53 = load i32, i32* @RTC_IRQF, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @rtc_update_irq(%struct.TYPE_2__* %51, i32 1, i32 %54)
  br label %56

56:                                               ; preds = %44, %39
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @RX8010_FLAG_AF, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load i32, i32* @RX8010_FLAG_AF, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %67 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* @RTC_AF, align 4
  %70 = load i32, i32* @RTC_IRQF, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @rtc_update_irq(%struct.TYPE_2__* %68, i32 1, i32 %71)
  br label %73

73:                                               ; preds = %61, %56
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @RX8010_FLAG_UF, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load i32, i32* @RX8010_FLAG_UF, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %84 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* @RTC_UF, align 4
  %87 = load i32, i32* @RTC_IRQF, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @rtc_update_irq(%struct.TYPE_2__* %85, i32 1, i32 %88)
  br label %90

90:                                               ; preds = %78, %73
  %91 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %92 = load i32, i32* @RX8010_FLAG, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %91, i32 %92, i32 %93)
  %95 = load %struct.rx8010_data*, %struct.rx8010_data** %7, align 8
  %96 = getelementptr inbounds %struct.rx8010_data, %struct.rx8010_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %90, %23
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.rx8010_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @rtc_update_irq(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
