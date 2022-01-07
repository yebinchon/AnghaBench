; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_max77620_thermal.c_max77620_thermal_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_max77620_thermal.c_max77620_thermal_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_therm_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Junction Temp Alarm1(120C) occurred\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Junction Temp Alarm2(140C) occurred\0A\00", align 1
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max77620_thermal_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_thermal_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.max77620_therm_info*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.max77620_therm_info*
  store %struct.max77620_therm_info* %7, %struct.max77620_therm_info** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %5, align 8
  %10 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %5, align 8
  %15 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_warn(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %30

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %5, align 8
  %21 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %5, align 8
  %26 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_crit(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %18
  br label %30

30:                                               ; preds = %29, %13
  %31 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %5, align 8
  %32 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %35 = call i32 @thermal_zone_device_update(i32 %33, i32 %34)
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @thermal_zone_device_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
