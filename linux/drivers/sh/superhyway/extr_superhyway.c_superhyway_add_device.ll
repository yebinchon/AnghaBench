; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/superhyway/extr_superhyway.c_superhyway_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/superhyway/extr_superhyway.c_superhyway_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.superhyway_device = type { %struct.TYPE_9__, %struct.TYPE_7__, i32, %struct.TYPE_8__, %struct.TYPE_6__*, %struct.superhyway_bus* }
%struct.TYPE_9__ = type { i32, i32*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.superhyway_bus = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@superhyway_bus_device = common dso_local global i32 0, align 4
@superhyway_bus_type = common dso_local global i32 0, align 4
@superhyway_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SuperHyway device %04x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@superhyway_devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @superhyway_add_device(i64 %0, %struct.superhyway_device* %1, %struct.superhyway_bus* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.superhyway_device*, align 8
  %7 = alloca %struct.superhyway_bus*, align 8
  %8 = alloca %struct.superhyway_device*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.superhyway_device* %1, %struct.superhyway_device** %6, align 8
  store %struct.superhyway_bus* %2, %struct.superhyway_bus** %7, align 8
  %9 = load %struct.superhyway_device*, %struct.superhyway_device** %6, align 8
  store %struct.superhyway_device* %9, %struct.superhyway_device** %8, align 8
  %10 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %11 = icmp ne %struct.superhyway_device* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 56, i32 %13)
  %15 = bitcast i8* %14 to %struct.superhyway_device*
  store %struct.superhyway_device* %15, %struct.superhyway_device** %8, align 8
  %16 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %17 = icmp ne %struct.superhyway_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %109

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %3
  %23 = load %struct.superhyway_bus*, %struct.superhyway_bus** %7, align 8
  %24 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %25 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %24, i32 0, i32 5
  store %struct.superhyway_bus* %23, %struct.superhyway_bus** %25, align 8
  %26 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %29 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %28, i32 0, i32 3
  %30 = call i32 @superhyway_read_vcr(%struct.superhyway_device* %26, i64 %27, %struct.TYPE_8__* %29)
  %31 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %32 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %31, i32 0, i32 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %74, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kzalloc(i32 4, i32 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_6__*
  %39 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %40 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %39, i32 0, i32 4
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %40, align 8
  %41 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %42 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %41, i32 0, i32 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %35
  %46 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %47 = call i32 @kfree(%struct.superhyway_device* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %109

50:                                               ; preds = %35
  %51 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %52 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %55 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %54, i32 0, i32 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 4
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %60 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %59, i32 0, i32 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i64 %58, i64* %62, align 8
  %63 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %64 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %63, i32 0, i32 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 16777216
  %69 = trunc i64 %68 to i32
  %70 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %71 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %70, i32 0, i32 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 8
  br label %74

74:                                               ; preds = %50, %22
  %75 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %76 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  store i32* @superhyway_bus_device, i32** %77, align 8
  %78 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %79 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32* @superhyway_bus_type, i32** %80, align 8
  %81 = load i32, i32* @superhyway_device_release, align 4
  %82 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %83 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %86 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %90 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %93 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %96 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @sprintf(i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %101 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %100, i32 0, i32 0
  %102 = load i32, i32* @superhyway_devices, align 4
  %103 = call i32 @dev_set_name(%struct.TYPE_9__* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @superhyway_devices, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @superhyway_devices, align 4
  %106 = load %struct.superhyway_device*, %struct.superhyway_device** %8, align 8
  %107 = getelementptr inbounds %struct.superhyway_device, %struct.superhyway_device* %106, i32 0, i32 0
  %108 = call i32 @device_register(%struct.TYPE_9__* %107)
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %74, %45, %18
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @superhyway_read_vcr(%struct.superhyway_device*, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.superhyway_device*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
