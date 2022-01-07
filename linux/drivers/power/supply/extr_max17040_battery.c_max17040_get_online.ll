; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17040_battery.c_max17040_get_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max17040_battery.c_max17040_get_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max17040_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (...)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @max17040_get_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max17040_get_online(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.max17040_chip*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.max17040_chip* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.max17040_chip* %5, %struct.max17040_chip** %3, align 8
  %6 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %7 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %12 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (...)*, i32 (...)** %14, align 8
  %16 = icmp ne i32 (...)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %19 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (...)*, i32 (...)** %21, align 8
  %23 = call i32 (...) %22()
  %24 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %25 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %29

26:                                               ; preds = %10, %1
  %27 = load %struct.max17040_chip*, %struct.max17040_chip** %3, align 8
  %28 = getelementptr inbounds %struct.max17040_chip, %struct.max17040_chip* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %17
  ret void
}

declare dso_local %struct.max17040_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
