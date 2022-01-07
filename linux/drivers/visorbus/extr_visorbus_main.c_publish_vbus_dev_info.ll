; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_publish_vbus_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_publish_vbus_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_device = type { i32, i32, %struct.TYPE_3__, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.visor_driver = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.visor_vbus_deviceinfo = type { i32 }
%struct.visor_vbus_headerinfo = type { i32 }

@BUS_ROOT_DEVICE = common dso_local global i32 0, align 4
@chipset_driverinfo = common dso_local global i32 0, align 4
@clientbus_driverinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.visor_device*)* @publish_vbus_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @publish_vbus_dev_info(%struct.visor_device* %0) #0 {
  %2 = alloca %struct.visor_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.visor_device*, align 8
  %5 = alloca %struct.visor_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.visor_vbus_deviceinfo, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.visor_vbus_headerinfo*, align 8
  store %struct.visor_device* %0, %struct.visor_device** %2, align 8
  %11 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %12 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %15 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %17 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %18 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %101

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BUS_ROOT_DEVICE, align 4
  %26 = call %struct.visor_device* @visorbus_get_device_by_id(i32 %24, i32 %25, i32* null)
  store %struct.visor_device* %26, %struct.visor_device** %4, align 8
  %27 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %28 = icmp ne %struct.visor_device* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %101

30:                                               ; preds = %23
  %31 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %32 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.visor_vbus_headerinfo*
  store %struct.visor_vbus_headerinfo* %34, %struct.visor_vbus_headerinfo** %10, align 8
  %35 = load %struct.visor_vbus_headerinfo*, %struct.visor_vbus_headerinfo** %10, align 8
  %36 = icmp ne %struct.visor_vbus_headerinfo* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %101

38:                                               ; preds = %30
  %39 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %40 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.visor_driver* @to_visor_driver(i32 %42)
  store %struct.visor_driver* %43, %struct.visor_driver** %5, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %76, %38
  %45 = load %struct.visor_driver*, %struct.visor_driver** %5, align 8
  %46 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %79

54:                                               ; preds = %44
  %55 = load %struct.visor_driver*, %struct.visor_driver** %5, align 8
  %56 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.visor_device*, %struct.visor_device** %2, align 8
  %63 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %62, i32 0, i32 1
  %64 = call i64 @guid_equal(i32* %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %54
  %67 = load %struct.visor_driver*, %struct.visor_driver** %5, align 8
  %68 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %9, align 8
  br label %79

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %44

79:                                               ; preds = %66, %44
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.visor_driver*, %struct.visor_driver** %5, align 8
  %82 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @bus_device_info_init(%struct.visor_vbus_deviceinfo* %8, i8* %80, i32 %83)
  %85 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %86 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.visor_vbus_headerinfo*, %struct.visor_vbus_headerinfo** %10, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @write_vbus_dev_info(i32 %87, %struct.visor_vbus_headerinfo* %88, %struct.visor_vbus_deviceinfo* %8, i32 %89)
  %91 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %92 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.visor_vbus_headerinfo*, %struct.visor_vbus_headerinfo** %10, align 8
  %95 = call i32 @write_vbus_chp_info(i32 %93, %struct.visor_vbus_headerinfo* %94, i32* @chipset_driverinfo)
  %96 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %97 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.visor_vbus_headerinfo*, %struct.visor_vbus_headerinfo** %10, align 8
  %100 = call i32 @write_vbus_bus_info(i32 %98, %struct.visor_vbus_headerinfo* %99, i32* @clientbus_driverinfo)
  br label %101

101:                                              ; preds = %79, %37, %29, %22
  ret void
}

declare dso_local %struct.visor_device* @visorbus_get_device_by_id(i32, i32, i32*) #1

declare dso_local %struct.visor_driver* @to_visor_driver(i32) #1

declare dso_local i64 @guid_equal(i32*, i32*) #1

declare dso_local i32 @bus_device_info_init(%struct.visor_vbus_deviceinfo*, i8*, i32) #1

declare dso_local i32 @write_vbus_dev_info(i32, %struct.visor_vbus_headerinfo*, %struct.visor_vbus_deviceinfo*, i32) #1

declare dso_local i32 @write_vbus_chp_info(i32, %struct.visor_vbus_headerinfo*, i32*) #1

declare dso_local i32 @write_vbus_bus_info(i32, %struct.visor_vbus_headerinfo*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
