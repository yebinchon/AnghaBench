; ModuleID = '/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_master_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/siox/extr_siox-core.c_siox_master_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siox_master = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.device*, i32*, i32* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@siox_bus_type = common dso_local global i32 0, align 4
@siox_master_type = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.siox_master* @siox_master_alloc(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.siox_master*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.siox_master*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.siox_master* null, %struct.siox_master** %3, align 8
  br label %45

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = add i64 40, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.siox_master* @kzalloc(i32 %13, i32 %14)
  store %struct.siox_master* %15, %struct.siox_master** %6, align 8
  %16 = load %struct.siox_master*, %struct.siox_master** %6, align 8
  %17 = icmp ne %struct.siox_master* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  store %struct.siox_master* null, %struct.siox_master** %3, align 8
  br label %45

19:                                               ; preds = %10
  %20 = load %struct.siox_master*, %struct.siox_master** %6, align 8
  %21 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %20, i32 0, i32 1
  %22 = call i32 @device_initialize(%struct.TYPE_3__* %21)
  %23 = load %struct.siox_master*, %struct.siox_master** %6, align 8
  %24 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.siox_master*, %struct.siox_master** %6, align 8
  %26 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32* @siox_bus_type, i32** %27, align 8
  %28 = load %struct.siox_master*, %struct.siox_master** %6, align 8
  %29 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32* @siox_master_type, i32** %30, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.siox_master*, %struct.siox_master** %6, align 8
  %33 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.device* %31, %struct.device** %34, align 8
  %35 = load i32, i32* @HZ, align 4
  %36 = call i32 @DIV_ROUND_UP(i32 %35, i32 40)
  %37 = load %struct.siox_master*, %struct.siox_master** %6, align 8
  %38 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.siox_master*, %struct.siox_master** %6, align 8
  %40 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %39, i32 0, i32 1
  %41 = load %struct.siox_master*, %struct.siox_master** %6, align 8
  %42 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %41, i64 1
  %43 = call i32 @dev_set_drvdata(%struct.TYPE_3__* %40, %struct.siox_master* %42)
  %44 = load %struct.siox_master*, %struct.siox_master** %6, align 8
  store %struct.siox_master* %44, %struct.siox_master** %3, align 8
  br label %45

45:                                               ; preds = %19, %18, %9
  %46 = load %struct.siox_master*, %struct.siox_master** %3, align 8
  ret %struct.siox_master* %46
}

declare dso_local %struct.siox_master* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_3__*, %struct.siox_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
