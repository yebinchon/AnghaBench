; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorbus_get_device_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorbus_get_device_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_device = type { %struct.device }
%struct.device = type { i32 }
%struct.visor_busdev = type { i32, i32 }

@visorbus_type = common dso_local global i32 0, align 4
@match_visorbus_dev_by_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.visor_device* @visorbus_get_device_by_id(i32 %0, i32 %1, %struct.visor_device* %2) #0 {
  %4 = alloca %struct.visor_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.visor_device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.visor_busdev, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.visor_device* %2, %struct.visor_device** %7, align 8
  store %struct.device* null, %struct.device** %9, align 8
  %11 = getelementptr inbounds %struct.visor_busdev, %struct.visor_busdev* %10, i32 0, i32 0
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.visor_busdev, %struct.visor_busdev* %10, i32 0, i32 1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.visor_device*, %struct.visor_device** %7, align 8
  %16 = icmp ne %struct.visor_device* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.visor_device*, %struct.visor_device** %7, align 8
  %19 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %9, align 8
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.device*, %struct.device** %9, align 8
  %22 = bitcast %struct.visor_busdev* %10 to i8*
  %23 = load i32, i32* @match_visorbus_dev_by_id, align 4
  %24 = call %struct.device* @bus_find_device(i32* @visorbus_type, %struct.device* %21, i8* %22, i32 %23)
  store %struct.device* %24, %struct.device** %8, align 8
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = icmp ne %struct.device* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store %struct.visor_device* null, %struct.visor_device** %4, align 8
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = call %struct.visor_device* @to_visor_device(%struct.device* %29)
  store %struct.visor_device* %30, %struct.visor_device** %4, align 8
  br label %31

31:                                               ; preds = %28, %27
  %32 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  ret %struct.visor_device* %32
}

declare dso_local %struct.device* @bus_find_device(i32*, %struct.device*, i8*, i32) #1

declare dso_local %struct.visor_device* @to_visor_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
