; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_test_power.c_map_get_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_test_power.c_map_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.battery_property_map = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.battery_property_map*, i32, i8*)* @map_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @map_get_key(%struct.battery_property_map* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.battery_property_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.battery_property_map* %0, %struct.battery_property_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  br label %8

8:                                                ; preds = %23, %3
  %9 = load %struct.battery_property_map*, %struct.battery_property_map** %5, align 8
  %10 = getelementptr inbounds %struct.battery_property_map, %struct.battery_property_map* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load %struct.battery_property_map*, %struct.battery_property_map** %5, align 8
  %15 = getelementptr inbounds %struct.battery_property_map, %struct.battery_property_map* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.battery_property_map*, %struct.battery_property_map** %5, align 8
  %21 = getelementptr inbounds %struct.battery_property_map, %struct.battery_property_map* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %4, align 8
  br label %28

23:                                               ; preds = %13
  %24 = load %struct.battery_property_map*, %struct.battery_property_map** %5, align 8
  %25 = getelementptr inbounds %struct.battery_property_map, %struct.battery_property_map* %24, i32 1
  store %struct.battery_property_map* %25, %struct.battery_property_map** %5, align 8
  br label %8

26:                                               ; preds = %8
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %26, %19
  %29 = load i8*, i8** %4, align 8
  ret i8* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
