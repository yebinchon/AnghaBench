; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3029c2.c_rv3029_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv3029c2.c_rv3029_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rv3029_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mutex }
%struct.mutex = type { i32 }

@RV3029_IRQ_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Read IRQ Control Register error %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@RV3029_IRQ_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Read IRQ Flags Register error %d\0A\00", align 1
@RV3029_IRQ_FLAGS_AF = common dso_local global i32 0, align 4
@RV3029_IRQ_CTRL_AIE = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rv3029_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv3029_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.rv3029_data*, align 8
  %8 = alloca %struct.mutex*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.device*
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.rv3029_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.rv3029_data* %16, %struct.rv3029_data** %7, align 8
  %17 = load %struct.rv3029_data*, %struct.rv3029_data** %7, align 8
  %18 = getelementptr inbounds %struct.rv3029_data, %struct.rv3029_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.mutex* %20, %struct.mutex** %8, align 8
  store i64 0, i64* %9, align 8
  %21 = load %struct.mutex*, %struct.mutex** %8, align 8
  %22 = call i32 @mutex_lock(%struct.mutex* %21)
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load i32, i32* @RV3029_IRQ_CTRL, align 4
  %25 = call i32 @rv3029_read_regs(%struct.device* %23, i32 %24, i32* %11, i32 1)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @dev_warn(%struct.device* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.mutex*, %struct.mutex** %8, align 8
  %33 = call i32 @mutex_unlock(%struct.mutex* %32)
  %34 = load i32, i32* @IRQ_NONE, align 4
  store i32 %34, i32* %3, align 4
  br label %84

35:                                               ; preds = %2
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load i32, i32* @RV3029_IRQ_FLAGS, align 4
  %38 = call i32 @rv3029_read_regs(%struct.device* %36, i32 %37, i32* %10, i32 1)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.mutex*, %struct.mutex** %8, align 8
  %46 = call i32 @mutex_unlock(%struct.mutex* %45)
  %47 = load i32, i32* @IRQ_NONE, align 4
  store i32 %47, i32* %3, align 4
  br label %84

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @RV3029_IRQ_FLAGS_AF, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load i32, i32* @RV3029_IRQ_FLAGS_AF, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @RV3029_IRQ_CTRL_AIE, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* @RTC_AF, align 8
  %63 = load i64, i64* %9, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %53, %48
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.rv3029_data*, %struct.rv3029_data** %7, align 8
  %70 = getelementptr inbounds %struct.rv3029_data, %struct.rv3029_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @rtc_update_irq(%struct.TYPE_2__* %71, i32 1, i64 %72)
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = load i32, i32* @RV3029_IRQ_FLAGS, align 4
  %76 = call i32 @rv3029_write_regs(%struct.device* %74, i32 %75, i32* %10, i32 1)
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = load i32, i32* @RV3029_IRQ_CTRL, align 4
  %79 = call i32 @rv3029_write_regs(%struct.device* %77, i32 %78, i32* %11, i32 1)
  br label %80

80:                                               ; preds = %68, %65
  %81 = load %struct.mutex*, %struct.mutex** %8, align 8
  %82 = call i32 @mutex_unlock(%struct.mutex* %81)
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %41, %28
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.rv3029_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @rv3029_read_regs(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

declare dso_local i32 @rtc_update_irq(%struct.TYPE_2__*, i32, i64) #1

declare dso_local i32 @rv3029_write_regs(%struct.device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
