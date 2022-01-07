; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_typename_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_typename_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_driver*, %struct.bus_type* }
%struct.device_driver = type { i32 }
%struct.bus_type = type { i32 (%struct.device*, %struct.device_driver*)* }
%struct.device_attribute = type { i32 }
%struct.visor_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @typename_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typename_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bus_type*, align 8
  %10 = alloca %struct.device_driver*, align 8
  %11 = alloca %struct.visor_driver*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load %struct.bus_type*, %struct.bus_type** %13, align 8
  store %struct.bus_type* %14, %struct.bus_type** %9, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_driver*, %struct.device_driver** %16, align 8
  store %struct.device_driver* %17, %struct.device_driver** %10, align 8
  store %struct.visor_driver* null, %struct.visor_driver** %11, align 8
  %18 = load %struct.device_driver*, %struct.device_driver** %10, align 8
  %19 = icmp ne %struct.device_driver* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.bus_type*, %struct.bus_type** %9, align 8
  %23 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %22, i32 0, i32 0
  %24 = load i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.device_driver*)** %23, align 8
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.device_driver*, %struct.device_driver** %10, align 8
  %27 = call i32 %24(%struct.device* %25, %struct.device_driver* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %45

31:                                               ; preds = %21
  %32 = load %struct.device_driver*, %struct.device_driver** %10, align 8
  %33 = call %struct.visor_driver* @to_visor_driver(%struct.device_driver* %32)
  store %struct.visor_driver* %33, %struct.visor_driver** %11, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.visor_driver*, %struct.visor_driver** %11, align 8
  %36 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %31, %30, %20
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.visor_driver* @to_visor_driver(%struct.device_driver*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
