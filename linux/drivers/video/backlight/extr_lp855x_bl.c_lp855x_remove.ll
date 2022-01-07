; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lp855x_bl.c_lp855x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lp855x = type { %struct.TYPE_5__*, i64, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@lp855x_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lp855x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp855x_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.lp855x*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.lp855x* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.lp855x* %5, %struct.lp855x** %3, align 8
  %6 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %7 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %12 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = call i32 @backlight_update_status(%struct.TYPE_6__* %13)
  %15 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %16 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %21 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @regulator_disable(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.lp855x*, %struct.lp855x** %3, align 8
  %26 = getelementptr inbounds %struct.lp855x, %struct.lp855x* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @sysfs_remove_group(i32* %28, i32* @lp855x_attr_group)
  ret i32 0
}

declare dso_local %struct.lp855x* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_6__*) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
