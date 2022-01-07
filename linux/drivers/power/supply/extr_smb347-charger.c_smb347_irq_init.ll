; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_smb347-charger.c_smb347_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb347_charger = type { i32, %struct.smb347_charger_platform_data* }
%struct.smb347_charger_platform_data = type { i32 }
%struct.i2c_client = type { i32, i32 }

@GPIOF_IN = common dso_local global i32 0, align 4
@smb347_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@CFG_STAT = common dso_local global i32 0, align 4
@CFG_STAT_ACTIVE_HIGH = common dso_local global i32 0, align 4
@CFG_STAT_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb347_charger*, %struct.i2c_client*)* @smb347_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb347_irq_init(%struct.smb347_charger* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb347_charger*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.smb347_charger_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smb347_charger* %0, %struct.smb347_charger** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %9 = load %struct.smb347_charger*, %struct.smb347_charger** %4, align 8
  %10 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %9, i32 0, i32 1
  %11 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %10, align 8
  store %struct.smb347_charger_platform_data* %11, %struct.smb347_charger_platform_data** %6, align 8
  %12 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %6, align 8
  %13 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gpio_to_irq(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %6, align 8
  %17 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GPIOF_IN, align 4
  %20 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gpio_request_one(i32 %18, i32 %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %78

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @smb347_interrupt, align 4
  %30 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %31 = load i32, i32* @IRQF_ONESHOT, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.smb347_charger*, %struct.smb347_charger** %4, align 8
  %37 = call i32 @request_threaded_irq(i32 %28, i32* null, i32 %29, i32 %32, i32 %35, %struct.smb347_charger* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %73

41:                                               ; preds = %27
  %42 = load %struct.smb347_charger*, %struct.smb347_charger** %4, align 8
  %43 = call i32 @smb347_set_writable(%struct.smb347_charger* %42, i32 1)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %69

47:                                               ; preds = %41
  %48 = load %struct.smb347_charger*, %struct.smb347_charger** %4, align 8
  %49 = getelementptr inbounds %struct.smb347_charger, %struct.smb347_charger* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CFG_STAT, align 4
  %52 = load i32, i32* @CFG_STAT_ACTIVE_HIGH, align 4
  %53 = load i32, i32* @CFG_STAT_DISABLED, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @CFG_STAT_DISABLED, align 4
  %56 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %66

60:                                               ; preds = %47
  %61 = load %struct.smb347_charger*, %struct.smb347_charger** %4, align 8
  %62 = call i32 @smb347_set_writable(%struct.smb347_charger* %61, i32 0)
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %3, align 4
  br label %82

66:                                               ; preds = %59
  %67 = load %struct.smb347_charger*, %struct.smb347_charger** %4, align 8
  %68 = call i32 @smb347_set_writable(%struct.smb347_charger* %67, i32 0)
  br label %69

69:                                               ; preds = %66, %46
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.smb347_charger*, %struct.smb347_charger** %4, align 8
  %72 = call i32 @free_irq(i32 %70, %struct.smb347_charger* %71)
  br label %73

73:                                               ; preds = %69, %40
  %74 = load %struct.smb347_charger_platform_data*, %struct.smb347_charger_platform_data** %6, align 8
  %75 = getelementptr inbounds %struct.smb347_charger_platform_data, %struct.smb347_charger_platform_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @gpio_free(i32 %76)
  br label %78

78:                                               ; preds = %73, %26
  %79 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %60
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @gpio_request_one(i32, i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.smb347_charger*) #1

declare dso_local i32 @smb347_set_writable(%struct.smb347_charger*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.smb347_charger*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
