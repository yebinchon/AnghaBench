; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_regions_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_regions_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { i32, %struct.TYPE_3__*, %struct.resource* (%struct.vfio_platform_device*, i32)* }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.resource = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFIO_PLATFORM_REGION_TYPE_MMIO = common dso_local global i32 0, align 4
@VFIO_REGION_INFO_FLAG_READ = common dso_local global i64 0, align 8
@IORESOURCE_READONLY = common dso_local global i32 0, align 4
@VFIO_REGION_INFO_FLAG_WRITE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@VFIO_REGION_INFO_FLAG_MMAP = common dso_local global i64 0, align 8
@VFIO_PLATFORM_REGION_TYPE_PIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_platform_device*)* @vfio_platform_regions_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_platform_regions_init(%struct.vfio_platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfio_platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %15, %1
  %8 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %8, i32 0, i32 2
  %10 = load %struct.resource* (%struct.vfio_platform_device*, i32)*, %struct.resource* (%struct.vfio_platform_device*, i32)** %9, align 8
  %11 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.resource* %10(%struct.vfio_platform_device* %11, i32 %12)
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %7

18:                                               ; preds = %7
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.TYPE_3__* @kcalloc(i32 %19, i32 4, i32 %20)
  %22 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %22, i32 0, i32 1
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %23, align 8
  %24 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %174

31:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %160, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %163

36:                                               ; preds = %32
  %37 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %37, i32 0, i32 2
  %39 = load %struct.resource* (%struct.vfio_platform_device*, i32)*, %struct.resource* (%struct.vfio_platform_device*, i32)** %38, align 8
  %40 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call %struct.resource* %39(%struct.vfio_platform_device* %40, i32 %41)
  store %struct.resource* %42, %struct.resource** %6, align 8
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = icmp ne %struct.resource* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %167

46:                                               ; preds = %36
  %47 = load %struct.resource*, %struct.resource** %6, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 8
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = call i32 @resource_size(%struct.resource* %57)
  %59 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %58, i32* %65, align 4
  %66 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.resource*, %struct.resource** %6, align 8
  %74 = call i32 @resource_type(%struct.resource* %73)
  switch i32 %74, label %158 [
    i32 128, label %75
    i32 129, label %149
  ]

75:                                               ; preds = %46
  %76 = load i32, i32* @VFIO_PLATFORM_REGION_TYPE_MMIO, align 4
  %77 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 %76, i32* %83, align 8
  %84 = load i64, i64* @VFIO_REGION_INFO_FLAG_READ, align 8
  %85 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = or i64 %92, %84
  store i64 %93, i64* %91, align 8
  %94 = load %struct.resource*, %struct.resource** %6, align 8
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IORESOURCE_READONLY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %75
  %101 = load i64, i64* @VFIO_REGION_INFO_FLAG_WRITE, align 8
  %102 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = or i64 %109, %101
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %100, %75
  %112 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @PAGE_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %148, label %124

124:                                              ; preds = %111
  %125 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @PAGE_MASK, align 4
  %134 = xor i32 %133, -1
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %124
  %138 = load i64, i64* @VFIO_REGION_INFO_FLAG_MMAP, align 8
  %139 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %139, i32 0, i32 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = or i64 %146, %138
  store i64 %147, i64* %145, align 8
  br label %148

148:                                              ; preds = %137, %124, %111
  br label %159

149:                                              ; preds = %46
  %150 = load i32, i32* @VFIO_PLATFORM_REGION_TYPE_PIO, align 4
  %151 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %151, i32 0, i32 1
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  store i32 %150, i32* %157, align 8
  br label %159

158:                                              ; preds = %46
  br label %167

159:                                              ; preds = %149, %148
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %32

163:                                              ; preds = %32
  %164 = load i32, i32* %4, align 4
  %165 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  store i32 0, i32* %2, align 4
  br label %174

167:                                              ; preds = %158, %45
  %168 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %168, i32 0, i32 1
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = call i32 @kfree(%struct.TYPE_3__* %170)
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %167, %163, %28
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.TYPE_3__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @resource_type(%struct.resource*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
