; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_init_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_init_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cpcap_battery_ddata = type { i32 }

@cpcap_battery_init_interrupts.cpcap_battery_irqs = internal constant [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"eol\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"lowbph\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"lowbpl\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"chrgcurr1\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"battdetb\00", align 1
@CPCAP_REG_BPEOL = common dso_local global i32 0, align 4
@CPCAP_REG_BPEOL_BIT_BATTDETEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.cpcap_battery_ddata*)* @cpcap_battery_init_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_battery_init_interrupts(%struct.platform_device* %0, %struct.cpcap_battery_ddata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.cpcap_battery_ddata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.cpcap_battery_ddata* %1, %struct.cpcap_battery_ddata** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @cpcap_battery_init_interrupts.cpcap_battery_irqs, i64 0, i64 0))
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* @cpcap_battery_init_interrupts.cpcap_battery_irqs, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @cpcap_battery_init_irq(%struct.platform_device* %13, %struct.cpcap_battery_ddata* %14, i8* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %8

28:                                               ; preds = %8
  %29 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %30 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CPCAP_REG_BPEOL, align 4
  %33 = load i32, i32* @CPCAP_REG_BPEOL_BIT_BATTDETEN, align 4
  %34 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 65535, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %37, %22
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @cpcap_battery_init_irq(%struct.platform_device*, %struct.cpcap_battery_ddata*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
