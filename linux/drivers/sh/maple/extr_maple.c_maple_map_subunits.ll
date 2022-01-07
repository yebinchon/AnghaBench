; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_maple_map_subunits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_maple_map_subunits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maple_device = type { i32, i32 }
%struct.maple_device_specify = type { i32, i32 }

@maple_bus_type = common dso_local global i32 0, align 4
@check_maple_device = common dso_local global i32 0, align 4
@MAPLE_COMMAND_DEVINFO = common dso_local global i32 0, align 4
@scanning = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.maple_device*, i32)* @maple_map_subunits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maple_map_subunits(%struct.maple_device* %0, i32 %1) #0 {
  %3 = alloca %struct.maple_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.maple_device*, align 8
  %9 = alloca %struct.maple_device_specify, align 4
  store %struct.maple_device* %0, %struct.maple_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %11 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.maple_device_specify, %struct.maple_device_specify* %9, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %53, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.maple_device_specify, %struct.maple_device_specify* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @check_maple_device, align 4
  %22 = call i32 @bus_for_each_dev(i32* @maple_bus_type, i32* null, %struct.maple_device_specify* %9, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %53

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %35 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  %39 = call %struct.maple_device* @maple_alloc_dev(i32 %36, i32 %38)
  store %struct.maple_device* %39, %struct.maple_device** %8, align 8
  %40 = load %struct.maple_device*, %struct.maple_device** %8, align 8
  %41 = icmp ne %struct.maple_device* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %56

43:                                               ; preds = %33
  %44 = load %struct.maple_device*, %struct.maple_device** %8, align 8
  %45 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %44, i32 0, i32 0
  %46 = call i32 @atomic_set(i32* %45, i32 1)
  %47 = load %struct.maple_device*, %struct.maple_device** %8, align 8
  %48 = load i32, i32* @MAPLE_COMMAND_DEVINFO, align 4
  %49 = call i32 @maple_add_packet(%struct.maple_device* %47, i32 0, i32 %48, i32 0, i32* null)
  store i32 1, i32* @scanning, align 4
  br label %50

50:                                               ; preds = %43, %28
  %51 = load i32, i32* %4, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %25
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %14

56:                                               ; preds = %42, %14
  ret void
}

declare dso_local i32 @bus_for_each_dev(i32*, i32*, %struct.maple_device_specify*, i32) #1

declare dso_local %struct.maple_device* @maple_alloc_dev(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @maple_add_packet(%struct.maple_device*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
