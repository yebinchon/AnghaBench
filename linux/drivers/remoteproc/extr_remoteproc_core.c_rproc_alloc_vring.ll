; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_alloc_vring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_alloc_vring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc_vdev = type { i32, i32, %struct.rproc_vring*, %struct.rproc* }
%struct.rproc_vring = type { i32, i32, i32 }
%struct.rproc = type { i32, i32, i64, %struct.device }
%struct.device = type { i32 }
%struct.fw_rsc_vdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rproc_mem_entry = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"vdev%dvring%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@rproc_alloc_carveout = common dso_local global i32 0, align 4
@rproc_release_carveout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't allocate memory entry structure\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"idr_alloc failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rproc_alloc_vring(%struct.rproc_vdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rproc_vdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rproc*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.rproc_vring*, align 8
  %9 = alloca %struct.fw_rsc_vdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rproc_mem_entry*, align 8
  store %struct.rproc_vdev* %0, %struct.rproc_vdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.rproc_vdev*, %struct.rproc_vdev** %4, align 8
  %15 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %14, i32 0, i32 3
  %16 = load %struct.rproc*, %struct.rproc** %15, align 8
  store %struct.rproc* %16, %struct.rproc** %6, align 8
  %17 = load %struct.rproc*, %struct.rproc** %6, align 8
  %18 = getelementptr inbounds %struct.rproc, %struct.rproc* %17, i32 0, i32 3
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.rproc_vdev*, %struct.rproc_vdev** %4, align 8
  %20 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %19, i32 0, i32 2
  %21 = load %struct.rproc_vring*, %struct.rproc_vring** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %21, i64 %23
  store %struct.rproc_vring* %24, %struct.rproc_vring** %8, align 8
  %25 = load %struct.rproc_vring*, %struct.rproc_vring** %8, align 8
  %26 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rproc_vring*, %struct.rproc_vring** %8, align 8
  %29 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vring_size(i32 %27, i32 %30)
  %32 = call i32 @PAGE_ALIGN(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.rproc*, %struct.rproc** %6, align 8
  %34 = getelementptr inbounds %struct.rproc, %struct.rproc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.rproc_vdev*, %struct.rproc_vdev** %4, align 8
  %38 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, i8* %36, i64 %40
  %42 = bitcast i8* %41 to %struct.fw_rsc_vdev*
  store %struct.fw_rsc_vdev* %42, %struct.fw_rsc_vdev** %9, align 8
  %43 = load %struct.rproc*, %struct.rproc** %6, align 8
  %44 = load %struct.rproc_vdev*, %struct.rproc_vdev** %4, align 8
  %45 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.rproc_mem_entry* @rproc_find_carveout_by_name(%struct.rproc* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  store %struct.rproc_mem_entry* %48, %struct.rproc_mem_entry** %13, align 8
  %49 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %13, align 8
  %50 = icmp ne %struct.rproc_mem_entry* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %2
  %52 = load %struct.rproc*, %struct.rproc** %6, align 8
  %53 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %13, align 8
  %54 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %9, align 8
  %55 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @rproc_check_carveout_da(%struct.rproc* %52, %struct.rproc_mem_entry* %53, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %134

68:                                               ; preds = %51
  br label %98

69:                                               ; preds = %2
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %9, align 8
  %73 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @rproc_alloc_carveout, align 4
  %81 = load i32, i32* @rproc_release_carveout, align 4
  %82 = load %struct.rproc_vdev*, %struct.rproc_vdev** %4, align 8
  %83 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call %struct.rproc_mem_entry* @rproc_mem_entry_init(%struct.device* %70, i32 0, i32 0, i32 %71, i32 %79, i32 %80, i32 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85)
  store %struct.rproc_mem_entry* %86, %struct.rproc_mem_entry** %13, align 8
  %87 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %13, align 8
  %88 = icmp ne %struct.rproc_mem_entry* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %69
  %90 = load %struct.device*, %struct.device** %7, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %134

94:                                               ; preds = %69
  %95 = load %struct.rproc*, %struct.rproc** %6, align 8
  %96 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %13, align 8
  %97 = call i32 @rproc_add_carveout(%struct.rproc* %95, %struct.rproc_mem_entry* %96)
  br label %98

98:                                               ; preds = %94, %68
  %99 = load %struct.rproc*, %struct.rproc** %6, align 8
  %100 = getelementptr inbounds %struct.rproc, %struct.rproc* %99, i32 0, i32 1
  %101 = load %struct.rproc_vring*, %struct.rproc_vring** %8, align 8
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i32 @idr_alloc(i32* %100, %struct.rproc_vring* %101, i32 0, i32 0, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.device*, %struct.device** %7, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  br label %134

111:                                              ; preds = %98
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.rproc*, %struct.rproc** %6, align 8
  %115 = getelementptr inbounds %struct.rproc, %struct.rproc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sgt i32 %113, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.rproc*, %struct.rproc** %6, align 8
  %121 = getelementptr inbounds %struct.rproc, %struct.rproc* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %118, %111
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.rproc_vring*, %struct.rproc_vring** %8, align 8
  %125 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %9, align 8
  %128 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i32 %126, i32* %133, align 4
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %122, %106, %89, %65
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @vring_size(i32, i32) #1

declare dso_local %struct.rproc_mem_entry* @rproc_find_carveout_by_name(%struct.rproc*, i8*, i32, i32) #1

declare dso_local i64 @rproc_check_carveout_da(%struct.rproc*, %struct.rproc_mem_entry*, i32, i32) #1

declare dso_local %struct.rproc_mem_entry* @rproc_mem_entry_init(%struct.device*, i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @rproc_add_carveout(%struct.rproc*, %struct.rproc_mem_entry*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.rproc_vring*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
