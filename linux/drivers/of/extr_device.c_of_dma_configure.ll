; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_device.c_of_dma_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_device.c_of_dma_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32*, i32, i64, i32 }
%struct.device_node = type { i32 }
%struct.iommu_ops = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid size 0x%llx for dma-range\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Adjusted size 0x%llx invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"dma_pfn_offset(%#08lx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"DMA mask not set\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"device is%sdma coherent\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" not \00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"device is%sbehind an iommu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_dma_configure(%struct.device* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.iommu_ops*, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = call i32 @of_dma_get_range(%struct.device_node* %16, i32* %8, i32* %9, i32* %10)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %11, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ 0, %28 ], [ %30, %29 ]
  store i32 %32, i32* %4, align 4
  br label %160

33:                                               ; preds = %20
  store i64 0, i64* %13, align 8
  store i32 0, i32* %8, align 4
  br label %61

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %35, %36
  %38 = call i64 @PFN_DOWN(i32 %37)
  store i64 %38, i64* %13, align 8
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %42, %34
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %160

57:                                               ; preds = %48
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %57, %33
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = getelementptr inbounds %struct.device, %struct.device* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = getelementptr inbounds %struct.device, %struct.device* %69, i32 0, i32 1
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = getelementptr inbounds %struct.device, %struct.device* %71, i32 0, i32 0
  store i32* %70, i32** %72, align 8
  br label %73

73:                                               ; preds = %66, %61
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %73
  %77 = load %struct.device*, %struct.device** %5, align 8
  %78 = getelementptr inbounds %struct.device, %struct.device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = getelementptr inbounds %struct.device, %struct.device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = getelementptr inbounds %struct.device, %struct.device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  %89 = call i32 @max(i32 %84, i32 %88)
  store i32 %89, i32* %10, align 4
  br label %95

90:                                               ; preds = %76, %73
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %93, %90
  br label %95

95:                                               ; preds = %94, %81
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = getelementptr inbounds %struct.device, %struct.device* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %99, %100
  %102 = sub nsw i32 %101, 1
  %103 = call i64 @ilog2(i32 %102)
  %104 = add nsw i64 %103, 1
  %105 = call i32 @DMA_BIT_MASK(i64 %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = getelementptr inbounds %struct.device, %struct.device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = getelementptr inbounds %struct.device, %struct.device* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %95
  %120 = load i32, i32* %15, align 4
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = getelementptr inbounds %struct.device, %struct.device* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %119, %95
  %124 = load %struct.device_node*, %struct.device_node** %6, align 8
  %125 = call i32 @of_dma_is_coherent(%struct.device_node* %124)
  store i32 %125, i32* %12, align 4
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %131 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %130)
  %132 = load %struct.device*, %struct.device** %5, align 8
  %133 = load %struct.device_node*, %struct.device_node** %6, align 8
  %134 = call %struct.iommu_ops* @of_iommu_configure(%struct.device* %132, %struct.device_node* %133)
  store %struct.iommu_ops* %134, %struct.iommu_ops** %14, align 8
  %135 = load %struct.iommu_ops*, %struct.iommu_ops** %14, align 8
  %136 = call i64 @IS_ERR(%struct.iommu_ops* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %123
  %139 = load %struct.iommu_ops*, %struct.iommu_ops** %14, align 8
  %140 = call i32 @PTR_ERR(%struct.iommu_ops* %139)
  %141 = load i32, i32* @EPROBE_DEFER, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* @EPROBE_DEFER, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %160

147:                                              ; preds = %138, %123
  %148 = load %struct.device*, %struct.device** %5, align 8
  %149 = load %struct.iommu_ops*, %struct.iommu_ops** %14, align 8
  %150 = icmp ne %struct.iommu_ops* %149, null
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %153 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %152)
  %154 = load %struct.device*, %struct.device** %5, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.iommu_ops*, %struct.iommu_ops** %14, align 8
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @arch_setup_dma_ops(%struct.device* %154, i32 %155, i32 %156, %struct.iommu_ops* %157, i32 %158)
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %147, %144, %51, %31
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @of_dma_get_range(%struct.device_node*, i32*, i32*, i32*) #1

declare dso_local i64 @PFN_DOWN(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i64) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @of_dma_is_coherent(%struct.device_node*) #1

declare dso_local %struct.iommu_ops* @of_iommu_configure(%struct.device*, %struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.iommu_ops*) #1

declare dso_local i32 @PTR_ERR(%struct.iommu_ops*) #1

declare dso_local i32 @arch_setup_dma_ops(%struct.device*, i32, i32, %struct.iommu_ops*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
