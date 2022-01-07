; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hisi_thermal_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_hisi_thermal.c_hisi_thermal_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_thermal_sensor = type { i32, i32, i32, %struct.hisi_thermal_data* }
%struct.hisi_thermal_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.hisi_thermal_sensor*)* }

@.str = private unnamed_addr constant [34 x i8] c"tzd=%p, id=%d, temp=%d, thres=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @hisi_thermal_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_thermal_get_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hisi_thermal_sensor*, align 8
  %6 = alloca %struct.hisi_thermal_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hisi_thermal_sensor*
  store %struct.hisi_thermal_sensor* %8, %struct.hisi_thermal_sensor** %5, align 8
  %9 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %10 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %9, i32 0, i32 3
  %11 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %10, align 8
  store %struct.hisi_thermal_data* %11, %struct.hisi_thermal_data** %6, align 8
  %12 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %6, align 8
  %13 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.hisi_thermal_sensor*)*, i32 (%struct.hisi_thermal_sensor*)** %15, align 8
  %17 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %18 = call i32 %16(%struct.hisi_thermal_sensor* %17)
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.hisi_thermal_data*, %struct.hisi_thermal_data** %6, align 8
  %21 = getelementptr inbounds %struct.hisi_thermal_data, %struct.hisi_thermal_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %25 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %28 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hisi_thermal_sensor*, %struct.hisi_thermal_sensor** %5, align 8
  %33 = getelementptr inbounds %struct.hisi_thermal_sensor, %struct.hisi_thermal_sensor* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %31, i32 %34)
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
