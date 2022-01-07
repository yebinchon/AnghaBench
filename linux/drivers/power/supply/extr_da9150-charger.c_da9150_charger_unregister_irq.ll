; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_unregister_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_unregister_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.da9150_charger = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to get IRQ CHG_STATUS: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i8*)* @da9150_charger_unregister_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9150_charger_unregister_irq(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.da9150_charger*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.da9150_charger* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.da9150_charger* %11, %struct.da9150_charger** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @platform_get_irq_byname(%struct.platform_device* %12, i8* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.da9150_charger*, %struct.da9150_charger** %6, align 8
  %24 = call i32 @free_irq(i32 %22, %struct.da9150_charger* %23)
  br label %25

25:                                               ; preds = %21, %17
  ret void
}

declare dso_local %struct.da9150_charger* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.da9150_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
