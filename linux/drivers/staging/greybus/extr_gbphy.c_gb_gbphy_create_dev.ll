; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gbphy.c_gb_gbphy_create_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gbphy.c_gb_gbphy_create_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_device = type { i32, %struct.TYPE_6__, %struct.greybus_descriptor_cport*, %struct.gb_bundle* }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.gb_bundle = type { %struct.TYPE_5__ }
%struct.greybus_descriptor_cport = type { i32 }

@gbphy_id = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gbphy_bus_type = common dso_local global i32 0, align 4
@greybus_gbphy_dev_type = common dso_local global i32 0, align 4
@gbphy_dev_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"gbphy%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gbphy_device* (%struct.gb_bundle*, %struct.greybus_descriptor_cport*)* @gb_gbphy_create_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gbphy_device* @gb_gbphy_create_dev(%struct.gb_bundle* %0, %struct.greybus_descriptor_cport* %1) #0 {
  %3 = alloca %struct.gbphy_device*, align 8
  %4 = alloca %struct.gb_bundle*, align 8
  %5 = alloca %struct.greybus_descriptor_cport*, align 8
  %6 = alloca %struct.gbphy_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gb_bundle* %0, %struct.gb_bundle** %4, align 8
  store %struct.greybus_descriptor_cport* %1, %struct.greybus_descriptor_cport** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @ida_simple_get(i32* @gbphy_id, i32 1, i32 0, i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.gbphy_device* @ERR_PTR(i32 %14)
  store %struct.gbphy_device* %15, %struct.gbphy_device** %3, align 8
  br label %76

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.gbphy_device* @kzalloc(i32 56, i32 %17)
  store %struct.gbphy_device* %18, %struct.gbphy_device** %6, align 8
  %19 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %20 = icmp ne %struct.gbphy_device* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ida_simple_remove(i32* @gbphy_id, i32 %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.gbphy_device* @ERR_PTR(i32 %25)
  store %struct.gbphy_device* %26, %struct.gbphy_device** %3, align 8
  br label %76

27:                                               ; preds = %16
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %30 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %32 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %33 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %32, i32 0, i32 3
  store %struct.gb_bundle* %31, %struct.gb_bundle** %33, align 8
  %34 = load %struct.greybus_descriptor_cport*, %struct.greybus_descriptor_cport** %5, align 8
  %35 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %36 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %35, i32 0, i32 2
  store %struct.greybus_descriptor_cport* %34, %struct.greybus_descriptor_cport** %36, align 8
  %37 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %38 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %37, i32 0, i32 0
  %39 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %40 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %41, align 8
  %42 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %43 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i32* @gbphy_bus_type, i32** %44, align 8
  %45 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %46 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32* @greybus_gbphy_dev_type, i32** %47, align 8
  %48 = load i32, i32* @gbphy_dev_groups, align 4
  %49 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %50 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.gb_bundle*, %struct.gb_bundle** %4, align 8
  %53 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %57 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %60 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %59, i32 0, i32 1
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dev_set_name(%struct.TYPE_6__* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %64 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %63, i32 0, i32 1
  %65 = call i32 @device_register(%struct.TYPE_6__* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %27
  %69 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  %70 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %69, i32 0, i32 1
  %71 = call i32 @put_device(%struct.TYPE_6__* %70)
  %72 = load i32, i32* %7, align 4
  %73 = call %struct.gbphy_device* @ERR_PTR(i32 %72)
  store %struct.gbphy_device* %73, %struct.gbphy_device** %3, align 8
  br label %76

74:                                               ; preds = %27
  %75 = load %struct.gbphy_device*, %struct.gbphy_device** %6, align 8
  store %struct.gbphy_device* %75, %struct.gbphy_device** %3, align 8
  br label %76

76:                                               ; preds = %74, %68, %21, %13
  %77 = load %struct.gbphy_device*, %struct.gbphy_device** %3, align 8
  ret %struct.gbphy_device* %77
}

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local %struct.gbphy_device* @ERR_PTR(i32) #1

declare dso_local %struct.gbphy_device* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_6__*) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
