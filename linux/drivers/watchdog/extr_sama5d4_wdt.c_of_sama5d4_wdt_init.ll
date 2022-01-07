; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sama5d4_wdt.c_of_sama5d4_wdt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sama5d4_wdt.c_of_sama5d4_wdt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.sama5d4_wdt = type { i32 }

@AT91_WDT_WDDIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"atmel,watchdog-type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@AT91_WDT_WDFIEN = common dso_local global i32 0, align 4
@AT91_WDT_WDRSTEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"atmel,idle-halt\00", align 1
@AT91_WDT_WDIDLEHLT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"atmel,dbg-halt\00", align 1
@AT91_WDT_WDDBGHLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.sama5d4_wdt*)* @of_sama5d4_wdt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_sama5d4_wdt_init(%struct.device_node* %0, %struct.sama5d4_wdt* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.sama5d4_wdt*, align 8
  %5 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.sama5d4_wdt* %1, %struct.sama5d4_wdt** %4, align 8
  %6 = load i32, i32* @AT91_WDT_WDDIS, align 4
  %7 = load %struct.sama5d4_wdt*, %struct.sama5d4_wdt** %4, align 8
  %8 = getelementptr inbounds %struct.sama5d4_wdt, %struct.sama5d4_wdt* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = call i32 @of_property_read_string(%struct.device_node* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %5)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @AT91_WDT_WDFIEN, align 4
  %18 = load %struct.sama5d4_wdt*, %struct.sama5d4_wdt** %4, align 8
  %19 = getelementptr inbounds %struct.sama5d4_wdt, %struct.sama5d4_wdt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %28

22:                                               ; preds = %12, %2
  %23 = load i32, i32* @AT91_WDT_WDRSTEN, align 4
  %24 = load %struct.sama5d4_wdt*, %struct.sama5d4_wdt** %4, align 8
  %25 = getelementptr inbounds %struct.sama5d4_wdt, %struct.sama5d4_wdt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.device_node*, %struct.device_node** %3, align 8
  %30 = call i64 @of_property_read_bool(%struct.device_node* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @AT91_WDT_WDIDLEHLT, align 4
  %34 = load %struct.sama5d4_wdt*, %struct.sama5d4_wdt** %4, align 8
  %35 = getelementptr inbounds %struct.sama5d4_wdt, %struct.sama5d4_wdt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %28
  %39 = load %struct.device_node*, %struct.device_node** %3, align 8
  %40 = call i64 @of_property_read_bool(%struct.device_node* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @AT91_WDT_WDDBGHLT, align 4
  %44 = load %struct.sama5d4_wdt*, %struct.sama5d4_wdt** %4, align 8
  %45 = getelementptr inbounds %struct.sama5d4_wdt, %struct.sama5d4_wdt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %38
  ret i32 0
}

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
