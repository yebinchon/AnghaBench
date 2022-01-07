; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq4802.c_bq4802_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-bq4802.c_bq4802_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bq4802 = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bq4802_read_io = common dso_local global i32 0, align 4
@bq4802_write_io = common dso_local global i32 0, align 4
@bq4802_read_mem = common dso_local global i32 0, align 4
@bq4802_write_mem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bq4802\00", align 1
@bq4802_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bq4802_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq4802_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.bq4802*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.bq4802* @devm_kzalloc(i32* %6, i32 32, i32 %7)
  store %struct.bq4802* %8, %struct.bq4802** %3, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %12 = icmp ne %struct.bq4802* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %129

14:                                               ; preds = %1
  %15 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %16 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %15, i32 0, i32 6
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call i8* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  %21 = bitcast i8* %20 to %struct.TYPE_2__*
  %22 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %23 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %22, i32 0, i32 4
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %23, align 8
  %24 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %25 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %14
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = load i32, i32* @IORESOURCE_IO, align 4
  %31 = call i8* @platform_get_resource(%struct.platform_device* %29, i32 %30, i32 0)
  %32 = bitcast i8* %31 to %struct.TYPE_2__*
  %33 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %34 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %33, i32 0, i32 4
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %34, align 8
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  %37 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %38 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %28
  br label %129

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %14
  %44 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %45 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %44, i32 0, i32 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IORESOURCE_IO, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %54 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %53, i32 0, i32 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %59 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @bq4802_read_io, align 4
  %61 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %62 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @bq4802_write_io, align 4
  %64 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %65 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %108

66:                                               ; preds = %43
  %67 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %68 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IORESOURCE_MEM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %66
  %76 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %79 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %84 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %83, i32 0, i32 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = call i32 @resource_size(%struct.TYPE_2__* %85)
  %87 = call i32 @devm_ioremap(i32* %77, i32 %82, i32 %86)
  %88 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %89 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %91 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %75
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %129

97:                                               ; preds = %75
  %98 = load i32, i32* @bq4802_read_mem, align 4
  %99 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %100 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @bq4802_write_mem, align 4
  %102 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %103 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %107

104:                                              ; preds = %66
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %129

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %52
  %109 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %110 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %111 = call i32 @platform_set_drvdata(%struct.platform_device* %109, %struct.bq4802* %110)
  %112 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load i32, i32* @THIS_MODULE, align 4
  %115 = call i32 @devm_rtc_device_register(i32* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @bq4802_ops, i32 %114)
  %116 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %117 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %119 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @IS_ERR(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %108
  %124 = load %struct.bq4802*, %struct.bq4802** %3, align 8
  %125 = getelementptr inbounds %struct.bq4802, %struct.bq4802* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @PTR_ERR(i32 %126)
  store i32 %127, i32* %4, align 4
  br label %129

128:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %123, %104, %94, %41, %13
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.bq4802* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bq4802*) #1

declare dso_local i32 @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
