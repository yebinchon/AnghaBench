; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8025.c_rx8025_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8025.c_rx8025_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rx8025_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mutex }
%struct.mutex = type { i32 }

@RX8025_REG_CTRL2 = common dso_local global i32 0, align 4
@RX8025_BIT_CTRL2_XST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Oscillation stop was detected,you may have to readjust the clock\0A\00", align 1
@RX8025_BIT_CTRL2_CTFG = common dso_local global i32 0, align 4
@RTC_PF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@RX8025_BIT_CTRL2_DAFG = common dso_local global i32 0, align 4
@RX8025_REG_CTRL1 = common dso_local global i32 0, align 4
@RX8025_BIT_CTRL1_DALE = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rx8025_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8025_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.rx8025_data*, align 8
  %7 = alloca %struct.mutex*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.i2c_client*
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = call %struct.rx8025_data* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.rx8025_data* %12, %struct.rx8025_data** %6, align 8
  %13 = load %struct.rx8025_data*, %struct.rx8025_data** %6, align 8
  %14 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.mutex* %16, %struct.mutex** %7, align 8
  %17 = load %struct.mutex*, %struct.mutex** %7, align 8
  %18 = call i32 @mutex_lock(%struct.mutex* %17)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = load i32, i32* @RX8025_REG_CTRL2, align 4
  %21 = call i32 @rx8025_read_reg(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %80

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @RX8025_BIT_CTRL2_XST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @RX8025_BIT_CTRL2_CTFG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32, i32* @RX8025_BIT_CTRL2_CTFG, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.rx8025_data*, %struct.rx8025_data** %6, align 8
  %45 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* @RTC_PF, align 4
  %48 = load i32, i32* @RTC_IRQF, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @rtc_update_irq(%struct.TYPE_2__* %46, i32 1, i32 %49)
  br label %51

51:                                               ; preds = %39, %34
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @RX8025_BIT_CTRL2_DAFG, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = load i32, i32* @RX8025_BIT_CTRL2_DAFG, align 4
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %61 = load i32, i32* @RX8025_REG_CTRL1, align 4
  %62 = load %struct.rx8025_data*, %struct.rx8025_data** %6, align 8
  %63 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @RX8025_BIT_CTRL1_DALE, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = call i64 @rx8025_write_reg(%struct.i2c_client* %60, i32 %61, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %80

71:                                               ; preds = %56
  %72 = load %struct.rx8025_data*, %struct.rx8025_data** %6, align 8
  %73 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* @RTC_AF, align 4
  %76 = load i32, i32* @RTC_IRQF, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @rtc_update_irq(%struct.TYPE_2__* %74, i32 1, i32 %77)
  br label %79

79:                                               ; preds = %71, %51
  br label %80

80:                                               ; preds = %79, %70, %24
  %81 = load %struct.mutex*, %struct.mutex** %7, align 8
  %82 = call i32 @mutex_unlock(%struct.mutex* %81)
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %83
}

declare dso_local %struct.rx8025_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @rx8025_read_reg(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @rtc_update_irq(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @rx8025_write_reg(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
