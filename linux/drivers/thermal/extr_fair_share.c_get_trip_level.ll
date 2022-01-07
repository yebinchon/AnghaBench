; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_fair_share.c_get_trip_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_fair_share.c_get_trip_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*)* @get_trip_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_trip_level(%struct.thermal_zone_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %8 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %13 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %15, align 8
  %17 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %65

19:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %42, %19
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %23 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %28 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %30, align 8
  %32 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 %31(%struct.thermal_zone_device* %32, i32 %33, i32* %5)
  %35 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %36 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %45

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %20

45:                                               ; preds = %40, %20
  %46 = load i32, i32* %4, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %50 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %52, align 8
  %54 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %55, 1
  %57 = call i32 %53(%struct.thermal_zone_device* %54, i32 %56, i32* %6)
  %58 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @trace_thermal_zone_trip(%struct.thermal_zone_device* %58, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %48, %45
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %18
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @trace_thermal_zone_trip(%struct.thermal_zone_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
