; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_da8xx_remoteproc.c_da8xx_rproc_get_internal_memories.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_da8xx_remoteproc.c_da8xx_rproc_get_internal_memories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.da8xx_rproc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@da8xx_rproc_get_internal_memories.mem_names = internal constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"l2sram\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"l1pram\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"l1dram\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to parse and map %s memory\0A\00", align 1
@DA8XX_RPROC_LOCAL_ADDRESS_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"memory %8s: bus addr %pa size 0x%zx va %p da 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.da8xx_rproc*)* @da8xx_rproc_get_internal_memories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_rproc_get_internal_memories(%struct.platform_device* %0, %struct.da8xx_rproc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.da8xx_rproc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.da8xx_rproc* %1, %struct.da8xx_rproc** %5, align 8
  %10 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @da8xx_rproc_get_internal_memories.mem_names, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.TYPE_2__* @devm_kcalloc(%struct.device* %13, i32 %14, i32 16, i32 %15)
  %17 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %18 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %17, i32 0, i32 1
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %18, align 8
  %19 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %20 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %151

26:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %144, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %147

31:                                               ; preds = %27
  %32 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %33 = load i32, i32* @IORESOURCE_MEM, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x i8*], [3 x i8*]* @da8xx_rproc_get_internal_memories.mem_names, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %32, i32 %33, i8* %37)
  store %struct.resource* %38, %struct.resource** %8, align 8
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load %struct.resource*, %struct.resource** %8, align 8
  %41 = call i32 @devm_ioremap_resource(%struct.device* %39, %struct.resource* %40)
  %42 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %43 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %41, i32* %48, align 4
  %49 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %50 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %31
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x i8*], [3 x i8*]* @da8xx_rproc_get_internal_memories.mem_names, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  %66 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %67 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %3, align 4
  br label %151

75:                                               ; preds = %31
  %76 = load %struct.resource*, %struct.resource** %8, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %80 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 4
  %86 = load %struct.resource*, %struct.resource** %8, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DA8XX_RPROC_LOCAL_ADDRESS_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %92 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 %90, i32* %97, align 4
  %98 = load %struct.resource*, %struct.resource** %8, align 8
  %99 = call i32 @resource_size(%struct.resource* %98)
  %100 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %101 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  store i32 %99, i32* %106, align 4
  %107 = load %struct.device*, %struct.device** %7, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [3 x i8*], [3 x i8*]* @da8xx_rproc_get_internal_memories.mem_names, i64 0, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %113 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %120 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %128 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %136 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @dev_dbg(%struct.device* %107, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %111, i32* %118, i32 %126, i32 %134, i32 %142)
  br label %144

144:                                              ; preds = %75
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %27

147:                                              ; preds = %27
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.da8xx_rproc*, %struct.da8xx_rproc** %5, align 8
  %150 = getelementptr inbounds %struct.da8xx_rproc, %struct.da8xx_rproc* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %147, %59, %23
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local %struct.TYPE_2__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
