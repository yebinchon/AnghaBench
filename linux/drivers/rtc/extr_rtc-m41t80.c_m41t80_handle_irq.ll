; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.m41t80_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mutex }
%struct.mutex = type { i32 }

@M41T80_REG_ALARM_MON = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@M41T80_REG_FLAGS = common dso_local global i32 0, align 4
@M41T80_FLAGS_AF = common dso_local global i32 0, align 4
@M41T80_ALMON_AFE = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @m41t80_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t80_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.m41t80_data*, align 8
  %8 = alloca %struct.mutex*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.i2c_client*
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = call %struct.m41t80_data* @i2c_get_clientdata(%struct.i2c_client* %14)
  store %struct.m41t80_data* %15, %struct.m41t80_data** %7, align 8
  %16 = load %struct.m41t80_data*, %struct.m41t80_data** %7, align 8
  %17 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.mutex* %19, %struct.mutex** %8, align 8
  store i64 0, i64* %9, align 8
  %20 = load %struct.mutex*, %struct.mutex** %8, align 8
  %21 = call i32 @mutex_lock(%struct.mutex* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %23 = load i32, i32* @M41T80_REG_ALARM_MON, align 4
  %24 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.mutex*, %struct.mutex** %8, align 8
  %29 = call i32 @mutex_unlock(%struct.mutex* %28)
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %79

31:                                               ; preds = %2
  %32 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %33 = load i32, i32* @M41T80_REG_FLAGS, align 4
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.mutex*, %struct.mutex** %8, align 8
  %39 = call i32 @mutex_unlock(%struct.mutex* %38)
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %79

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @M41T80_FLAGS_AF, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load i32, i32* @M41T80_FLAGS_AF, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @M41T80_ALMON_AFE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i64, i64* @RTC_AF, align 8
  %56 = load i64, i64* %9, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %46, %41
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.m41t80_data*, %struct.m41t80_data** %7, align 8
  %63 = getelementptr inbounds %struct.m41t80_data, %struct.m41t80_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @rtc_update_irq(%struct.TYPE_2__* %64, i32 1, i64 %65)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %68 = load i32, i32* @M41T80_REG_FLAGS, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %67, i32 %68, i32 %69)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %72 = load i32, i32* @M41T80_REG_ALARM_MON, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %61, %58
  %76 = load %struct.mutex*, %struct.mutex** %8, align 8
  %77 = call i32 @mutex_unlock(%struct.mutex* %76)
  %78 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %37, %27
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.m41t80_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

declare dso_local i32 @rtc_update_irq(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
