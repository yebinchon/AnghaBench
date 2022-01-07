; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_nvmem.c_rtc_nvram_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_nvmem.c_rtc_nvram_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i32, i32, %struct.nvmem_device*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.nvmem_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nvram\00", align 1
@rtc_nvram_read = common dso_local global i32 0, align 4
@rtc_nvram_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtc_device*, %struct.nvmem_device*, i64)* @rtc_nvram_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_nvram_register(%struct.rtc_device* %0, %struct.nvmem_device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtc_device*, align 8
  %6 = alloca %struct.nvmem_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %5, align 8
  store %struct.nvmem_device* %1, %struct.nvmem_device** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.TYPE_11__* @kzalloc(i32 40, i32 %9)
  %11 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %11, i32 0, i32 0
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %12, align 8
  %13 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %14 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %75

20:                                               ; preds = %3
  %21 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  store i32 420, i32* %30, align 8
  %31 = load %struct.nvmem_device*, %struct.nvmem_device** %6, align 8
  %32 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  store %struct.nvmem_device* %31, %struct.nvmem_device** %35, align 8
  %36 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = call i32 @sysfs_bin_attr_init(%struct.TYPE_11__* %38)
  %40 = load i32, i32* @rtc_nvram_read, align 4
  %41 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @rtc_nvram_write, align 4
  %46 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i64 %50, i64* %54, align 8
  %55 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = call i32 @sysfs_create_bin_file(i32* %59, %struct.TYPE_11__* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %20
  %67 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = call i32 @kfree(%struct.TYPE_11__* %69)
  %71 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %71, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %72, align 8
  br label %73

73:                                               ; preds = %66, %20
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %17
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_11__* @kzalloc(i32, i32) #1

declare dso_local i32 @sysfs_bin_attr_init(%struct.TYPE_11__*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @kfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
