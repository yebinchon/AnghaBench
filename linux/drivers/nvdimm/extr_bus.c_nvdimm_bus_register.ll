; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_bus_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nvdimm_bus_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus = type { i64, %struct.TYPE_5__, %struct.nvdimm_bus_descriptor*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.nvdimm_bus_descriptor = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nd_ida = common dso_local global i32 0, align 4
@nvdimm_bus_release = common dso_local global i32 0, align 4
@nvdimm_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ndbus%d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"registration failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvdimm_bus* @nvdimm_bus_register(%struct.device* %0, %struct.nvdimm_bus_descriptor* %1) #0 {
  %3 = alloca %struct.nvdimm_bus*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nvdimm_bus_descriptor*, align 8
  %6 = alloca %struct.nvdimm_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.nvdimm_bus_descriptor* %1, %struct.nvdimm_bus_descriptor** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nvdimm_bus* @kzalloc(i32 72, i32 %8)
  store %struct.nvdimm_bus* %9, %struct.nvdimm_bus** %6, align 8
  %10 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %11 = icmp ne %struct.nvdimm_bus* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.nvdimm_bus* null, %struct.nvdimm_bus** %3, align 8
  br label %89

13:                                               ; preds = %2
  %14 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %15 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %14, i32 0, i32 7
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %18 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %17, i32 0, i32 6
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %21 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %20, i32 0, i32 5
  %22 = call i32 @init_waitqueue_head(i32* %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64 @ida_simple_get(i32* @nd_ida, i32 0, i32 0, i32 %23)
  %25 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %26 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %28 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %13
  %32 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %33 = call i32 @kfree(%struct.nvdimm_bus* %32)
  store %struct.nvdimm_bus* null, %struct.nvdimm_bus** %3, align 8
  br label %89

34:                                               ; preds = %13
  %35 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %36 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %35, i32 0, i32 4
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %39 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %38, i32 0, i32 3
  %40 = call i32 @badrange_init(i32* %39)
  %41 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %5, align 8
  %42 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %43 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %42, i32 0, i32 2
  store %struct.nvdimm_bus_descriptor* %41, %struct.nvdimm_bus_descriptor** %43, align 8
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %46 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  store %struct.device* %44, %struct.device** %47, align 8
  %48 = load i32, i32* @nvdimm_bus_release, align 4
  %49 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %50 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %5, align 8
  %53 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %56 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %59 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32* @nvdimm_bus_type, i32** %60, align 8
  %61 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %5, align 8
  %62 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %65 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %68 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %67, i32 0, i32 1
  %69 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %70 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @dev_set_name(%struct.TYPE_5__* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %74 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %73, i32 0, i32 1
  %75 = call i32 @device_register(%struct.TYPE_5__* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %34
  %79 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %80 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %79, i32 0, i32 1
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @dev_dbg(%struct.TYPE_5__* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %85

83:                                               ; preds = %34
  %84 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  store %struct.nvdimm_bus* %84, %struct.nvdimm_bus** %3, align 8
  br label %89

85:                                               ; preds = %78
  %86 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %6, align 8
  %87 = getelementptr inbounds %struct.nvdimm_bus, %struct.nvdimm_bus* %86, i32 0, i32 1
  %88 = call i32 @put_device(%struct.TYPE_5__* %87)
  store %struct.nvdimm_bus* null, %struct.nvdimm_bus** %3, align 8
  br label %89

89:                                               ; preds = %85, %83, %31, %12
  %90 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %3, align 8
  ret %struct.nvdimm_bus* %90
}

declare dso_local %struct.nvdimm_bus* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nvdimm_bus*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @badrange_init(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
