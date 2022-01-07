; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1_int.c_w1_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1_int.c_w1_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.device_driver*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, %struct.w1_bus_master* }
%struct.TYPE_5__ = type { i32 }
%struct.w1_bus_master = type { i32 }
%struct.device_driver = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to allocate %zd bytes for new w1 device.\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@w1_search_count = common dso_local global i32 0, align 4
@w1_enable_pullup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"w1_bus_master%u\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to register master device. err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.w1_master* (i32, i32, i32, %struct.device_driver*, %struct.device*)* @w1_alloc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.w1_master* @w1_alloc_dev(i32 %0, i32 %1, i32 %2, %struct.device_driver* %3, %struct.device* %4) #0 {
  %6 = alloca %struct.w1_master*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_driver*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.w1_master*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.device_driver* %3, %struct.device_driver** %10, align 8
  store %struct.device* %4, %struct.device** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.w1_master* @kzalloc(i32 116, i32 %14)
  store %struct.w1_master* %15, %struct.w1_master** %12, align 8
  %16 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %17 = icmp ne %struct.w1_master* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 112)
  store %struct.w1_master* null, %struct.w1_master** %6, align 8
  br label %109

20:                                               ; preds = %5
  %21 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %22 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %21, i64 1
  %23 = bitcast %struct.w1_master* %22 to %struct.w1_bus_master*
  %24 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %25 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %24, i32 0, i32 19
  store %struct.w1_bus_master* %23, %struct.w1_bus_master** %25, align 8
  %26 = load i32, i32* @THIS_MODULE, align 4
  %27 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %28 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %27, i32 0, i32 18
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %31 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %33 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %32, i32 0, i32 17
  store i64 0, i64* %33, align 8
  %34 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %35 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %34, i32 0, i32 16
  store i64 0, i64* %35, align 8
  %36 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %37 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %36, i32 0, i32 15
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %40 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %43 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @w1_search_count, align 4
  %45 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %46 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %45, i32 0, i32 14
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @w1_enable_pullup, align 4
  %48 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %49 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %48, i32 0, i32 13
  store i32 %47, i32* %49, align 4
  %50 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %51 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %50, i32 0, i32 12
  %52 = call i32 @atomic_set(i32* %51, i32 2)
  %53 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %54 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %53, i32 0, i32 11
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %57 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %56, i32 0, i32 10
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %60 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %59, i32 0, i32 9
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %63 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %62, i32 0, i32 8
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %66 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %65, i32 0, i32 7
  %67 = call i32 @mutex_init(i32* %66)
  %68 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %69 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %68, i32 0, i32 4
  %70 = load %struct.device*, %struct.device** %11, align 8
  %71 = call i32 @memcpy(%struct.TYPE_5__* %69, %struct.device* %70, i32 4)
  %72 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %73 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %72, i32 0, i32 4
  %74 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %75 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_set_name(%struct.TYPE_5__* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %79 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %82 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @snprintf(i32 %80, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %86 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %89 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.device_driver*, %struct.device_driver** %10, align 8
  %92 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %93 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %92, i32 0, i32 5
  store %struct.device_driver* %91, %struct.device_driver** %93, align 8
  %94 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %95 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %94, i32 0, i32 3
  store i32 1, i32* %95, align 4
  %96 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %97 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %96, i32 0, i32 4
  %98 = call i32 @device_register(%struct.TYPE_5__* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %20
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  %105 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %104, i32 0, i32 4
  %106 = call i32 @put_device(%struct.TYPE_5__* %105)
  store %struct.w1_master* null, %struct.w1_master** %12, align 8
  br label %107

107:                                              ; preds = %101, %20
  %108 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  store %struct.w1_master* %108, %struct.w1_master** %6, align 8
  br label %109

109:                                              ; preds = %107, %18
  %110 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  ret %struct.w1_master* %110
}

declare dso_local %struct.w1_master* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.device*, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
