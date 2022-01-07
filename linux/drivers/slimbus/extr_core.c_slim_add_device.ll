; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_core.c_slim_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_controller = type { i32 }
%struct.slim_device = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, %struct.slim_controller* }
%struct.TYPE_5__ = type { i32, i32*, i32, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@slimbus_bus = common dso_local global i32 0, align 4
@slim_dev_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%x:%x:%x:%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_controller*, %struct.slim_device*, %struct.device_node*)* @slim_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slim_add_device(%struct.slim_controller* %0, %struct.slim_device* %1, %struct.device_node* %2) #0 {
  %4 = alloca %struct.slim_controller*, align 8
  %5 = alloca %struct.slim_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.slim_controller* %0, %struct.slim_controller** %4, align 8
  store %struct.slim_device* %1, %struct.slim_device** %5, align 8
  store %struct.device_node* %2, %struct.device_node** %6, align 8
  %7 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %8 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  store i32* @slimbus_bus, i32** %9, align 8
  %10 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %11 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %14 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @slim_dev_release, align 4
  %17 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %18 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 8
  %20 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %21 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.slim_controller*, %struct.slim_controller** %4, align 8
  %24 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %25 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %24, i32 0, i32 4
  store %struct.slim_controller* %23, %struct.slim_controller** %25, align 8
  %26 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %27 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %26, i32 0, i32 3
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %30 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %29, i32 0, i32 2
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.device_node*, %struct.device_node** %6, align 8
  %33 = icmp ne %struct.device_node* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = call i32 @of_node_get(%struct.device_node* %35)
  %37 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %38 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %3
  %41 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %42 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %41, i32 0, i32 0
  %43 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %44 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %48 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %52 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %56 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_set_name(%struct.TYPE_5__* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %50, i32 %54, i32 %58)
  %60 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %61 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %60, i32 0, i32 0
  %62 = call i32 @device_register(%struct.TYPE_5__* %61)
  ret i32 %62
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
