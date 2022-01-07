; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_bus_device_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_bus_device_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_vbus_deviceinfo = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"unknownType\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"unknownDriver\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"kernel ver. %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.visor_vbus_deviceinfo*, i8*, i8*)* @bus_device_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bus_device_info_init(%struct.visor_vbus_deviceinfo* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.visor_vbus_deviceinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.visor_vbus_deviceinfo* %0, %struct.visor_vbus_deviceinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.visor_vbus_deviceinfo*, %struct.visor_vbus_deviceinfo** %4, align 8
  %8 = call i32 @memset(%struct.visor_vbus_deviceinfo* %7, i32 0, i32 12)
  %9 = load %struct.visor_vbus_deviceinfo*, %struct.visor_vbus_deviceinfo** %4, align 8
  %10 = getelementptr inbounds %struct.visor_vbus_deviceinfo, %struct.visor_vbus_deviceinfo* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i8* [ %15, %14 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %16 ]
  %19 = call i32 @snprintf(i32 %11, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.visor_vbus_deviceinfo*, %struct.visor_vbus_deviceinfo** %4, align 8
  %21 = getelementptr inbounds %struct.visor_vbus_deviceinfo, %struct.visor_vbus_deviceinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i8*, i8** %6, align 8
  br label %28

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i8* [ %26, %25 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %27 ]
  %30 = call i32 @snprintf(i32 %22, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.visor_vbus_deviceinfo*, %struct.visor_vbus_deviceinfo** %4, align 8
  %32 = getelementptr inbounds %struct.visor_vbus_deviceinfo, %struct.visor_vbus_deviceinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_2__* (...) @utsname()
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @snprintf(i32 %33, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  ret void
}

declare dso_local i32 @memset(%struct.visor_vbus_deviceinfo*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_2__* @utsname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
