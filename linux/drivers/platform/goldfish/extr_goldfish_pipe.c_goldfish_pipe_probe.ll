; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_goldfish_pipe_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/goldfish/extr_goldfish_pipe.c_goldfish_pipe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.goldfish_pipe_dev = type { i64, i64, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@goldfish_pipe_device_deinit = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"can't allocate i/o page\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@PIPE_DRIVER_VERSION = common dso_local global i32 0, align 4
@PIPE_REG_VERSION = common dso_local global i64 0, align 8
@PIPE_CURRENT_DEVICE_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @goldfish_pipe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_pipe_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.goldfish_pipe_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.goldfish_pipe_dev* @devm_kzalloc(i32* %7, i32 32, i32 %8)
  store %struct.goldfish_pipe_dev* %9, %struct.goldfish_pipe_dev** %5, align 8
  %10 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %5, align 8
  %11 = icmp ne %struct.goldfish_pipe_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %102

15:                                               ; preds = %1
  %16 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %5, align 8
  %17 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %16, i32 0, i32 4
  store i32* @goldfish_pipe_device_deinit, i32** %17, align 8
  %18 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %5, align 8
  %19 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %4, align 8
  %24 = load %struct.resource*, %struct.resource** %4, align 8
  %25 = icmp ne %struct.resource* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.resource*, %struct.resource** %4, align 8
  %28 = call i64 @resource_size(%struct.resource* %27)
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26, %15
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %102

37:                                               ; preds = %26
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.resource*, %struct.resource** %4, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = call i64 @devm_ioremap(i32* %39, i32 %42, i64 %43)
  %45 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %5, align 8
  %46 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %5, align 8
  %48 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %37
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %102

57:                                               ; preds = %37
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_IRQ, align 4
  %60 = call %struct.resource* @platform_get_resource(%struct.platform_device* %58, i32 %59, i32 0)
  store %struct.resource* %60, %struct.resource** %4, align 8
  %61 = load %struct.resource*, %struct.resource** %4, align 8
  %62 = icmp ne %struct.resource* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %102

66:                                               ; preds = %57
  %67 = load %struct.resource*, %struct.resource** %4, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %5, align 8
  %71 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @PIPE_DRIVER_VERSION, align 4
  %73 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %5, align 8
  %74 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PIPE_REG_VERSION, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  %79 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %5, align 8
  %80 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PIPE_REG_VERSION, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i64 @readl(i64 %83)
  %85 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %5, align 8
  %86 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %5, align 8
  %88 = getelementptr inbounds %struct.goldfish_pipe_dev, %struct.goldfish_pipe_dev* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PIPE_CURRENT_DEVICE_VERSION, align 8
  %91 = icmp slt i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @WARN_ON(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %66
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %102

98:                                               ; preds = %66
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.goldfish_pipe_dev*, %struct.goldfish_pipe_dev** %5, align 8
  %101 = call i32 @goldfish_pipe_device_init(%struct.platform_device* %99, %struct.goldfish_pipe_dev* %100)
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %95, %63, %51, %31, %12
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.goldfish_pipe_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @devm_ioremap(i32*, i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @goldfish_pipe_device_init(%struct.platform_device*, %struct.goldfish_pipe_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
