; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sis.c_sis_init_base_struct_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sis.c_sis_init_base_struct_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i8*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sis_base_struct = type { i32, i32, i32, i32, i32 }
%struct.sis_sync_cmd_params = type { i32* }

@SIS_BASE_STRUCT_ALIGNMENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIS_BASE_STRUCT_REVISION = common dso_local global i8* null, align 8
@PQI_ERROR_BUFFER_ELEMENT_LENGTH = common dso_local global i8* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SIS_CMD_INIT_BASE_STRUCT_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sis_init_base_struct_addr(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sis_base_struct*, align 8
  %7 = alloca %struct.sis_sync_cmd_params, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %10 = load i64, i64* @SIS_BASE_STRUCT_ALIGNMENT, align 8
  %11 = add i64 20, %10
  %12 = sub i64 %11, 1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i64 %12, i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %99

20:                                               ; preds = %1
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* @SIS_BASE_STRUCT_ALIGNMENT, align 8
  %23 = call %struct.sis_base_struct* @PTR_ALIGN(i8* %21, i64 %22)
  store %struct.sis_base_struct* %23, %struct.sis_base_struct** %6, align 8
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %25 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i8*, i8** @SIS_BASE_STRUCT_REVISION, align 8
  %28 = load %struct.sis_base_struct*, %struct.sis_base_struct** %6, align 8
  %29 = getelementptr inbounds %struct.sis_base_struct, %struct.sis_base_struct* %28, i32 0, i32 4
  %30 = call i32 @put_unaligned_le32(i8* %27, i32* %29)
  %31 = load i64, i64* %8, align 8
  %32 = call i8* @lower_32_bits(i64 %31)
  %33 = load %struct.sis_base_struct*, %struct.sis_base_struct** %6, align 8
  %34 = getelementptr inbounds %struct.sis_base_struct, %struct.sis_base_struct* %33, i32 0, i32 3
  %35 = call i32 @put_unaligned_le32(i8* %32, i32* %34)
  %36 = load i64, i64* %8, align 8
  %37 = call i8* @upper_32_bits(i64 %36)
  %38 = load %struct.sis_base_struct*, %struct.sis_base_struct** %6, align 8
  %39 = getelementptr inbounds %struct.sis_base_struct, %struct.sis_base_struct* %38, i32 0, i32 2
  %40 = call i32 @put_unaligned_le32(i8* %37, i32* %39)
  %41 = load i8*, i8** @PQI_ERROR_BUFFER_ELEMENT_LENGTH, align 8
  %42 = load %struct.sis_base_struct*, %struct.sis_base_struct** %6, align 8
  %43 = getelementptr inbounds %struct.sis_base_struct, %struct.sis_base_struct* %42, i32 0, i32 1
  %44 = call i32 @put_unaligned_le32(i8* %41, i32* %43)
  %45 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %46 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.sis_base_struct*, %struct.sis_base_struct** %6, align 8
  %49 = getelementptr inbounds %struct.sis_base_struct, %struct.sis_base_struct* %48, i32 0, i32 0
  %50 = call i32 @put_unaligned_le32(i8* %47, i32* %49)
  %51 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %52 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.sis_base_struct*, %struct.sis_base_struct** %6, align 8
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = call i64 @dma_map_single(i32* %54, %struct.sis_base_struct* %55, i32 20, i32 %56)
  store i64 %57, i64* %9, align 8
  %58 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %59 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @dma_mapping_error(i32* %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %20
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %95

68:                                               ; preds = %20
  %69 = call i32 @memset(%struct.sis_sync_cmd_params* %7, i32 0, i32 8)
  %70 = load i64, i64* %9, align 8
  %71 = call i8* @lower_32_bits(i64 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = getelementptr inbounds %struct.sis_sync_cmd_params, %struct.sis_sync_cmd_params* %7, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %72, i32* %75, align 4
  %76 = load i64, i64* %9, align 8
  %77 = call i8* @upper_32_bits(i64 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = getelementptr inbounds %struct.sis_sync_cmd_params, %struct.sis_sync_cmd_params* %7, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %78, i32* %81, align 4
  %82 = getelementptr inbounds %struct.sis_sync_cmd_params, %struct.sis_sync_cmd_params* %7, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  store i32 20, i32* %84, align 4
  %85 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %86 = load i32, i32* @SIS_CMD_INIT_BASE_STRUCT_ADDRESS, align 4
  %87 = call i32 @sis_send_sync_cmd(%struct.pqi_ctrl_info* %85, i32 %86, %struct.sis_sync_cmd_params* %7)
  store i32 %87, i32* %4, align 4
  %88 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %89 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* @DMA_TO_DEVICE, align 4
  %94 = call i32 @dma_unmap_single(i32* %91, i64 %92, i32 20, i32 %93)
  br label %95

95:                                               ; preds = %68, %65
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @kfree(i8* %96)
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %17
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local %struct.sis_base_struct* @PTR_ALIGN(i8*, i64) #1

declare dso_local i32 @put_unaligned_le32(i8*, i32*) #1

declare dso_local i8* @lower_32_bits(i64) #1

declare dso_local i8* @upper_32_bits(i64) #1

declare dso_local i64 @dma_map_single(i32*, %struct.sis_base_struct*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @memset(%struct.sis_sync_cmd_params*, i32, i32) #1

declare dso_local i32 @sis_send_sync_cmd(%struct.pqi_ctrl_info*, i32, %struct.sis_sync_cmd_params*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
