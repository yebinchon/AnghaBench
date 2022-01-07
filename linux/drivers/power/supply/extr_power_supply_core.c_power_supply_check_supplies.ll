; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_check_supplies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_check_supplies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"supplied-from\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*)* @power_supply_check_supplies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_supply_check_supplies(%struct.power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.power_supply*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %3, align 8
  %6 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %7 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %14 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_property_read_string_array(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** null, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %55

21:                                               ; preds = %12
  %22 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %23 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %22, i32 0, i32 2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64 @devm_kmalloc_array(%struct.TYPE_2__* %23, i32 %24, i32 8, i32 %25)
  %27 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %28 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %30 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %55

36:                                               ; preds = %21
  %37 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %38 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %42 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8**
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @device_property_read_string_array(i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %36
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %54 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %49, %33, %20, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @device_property_read_string_array(i32, i8*, i8**, i32) #1

declare dso_local i64 @devm_kmalloc_array(%struct.TYPE_2__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
