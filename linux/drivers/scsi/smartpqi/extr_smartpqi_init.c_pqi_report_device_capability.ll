; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_report_device_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_report_device_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pqi_general_admin_request = type { %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pqi_general_admin_response = type { i64 }
%struct.pqi_device_capability = type { %struct.pqi_iu_layer_descriptor*, i32, i32, i32, i32, i32, i32 }
%struct.pqi_iu_layer_descriptor = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PQI_REQUEST_IU_GENERAL_ADMIN = common dso_local global i32 0, align 4
@PQI_GENERAL_ADMIN_IU_LENGTH = common dso_local global i32 0, align 4
@PQI_GENERAL_ADMIN_FUNCTION_REPORT_DEVICE_CAPABILITY = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PQI_GENERAL_ADMIN_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@PQI_PROTOCOL_SOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_report_device_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_report_device_capability(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pqi_general_admin_request, align 4
  %6 = alloca %struct.pqi_general_admin_response, align 8
  %7 = alloca %struct.pqi_device_capability*, align 8
  %8 = alloca %struct.pqi_iu_layer_descriptor*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pqi_device_capability* @kmalloc(i32 32, i32 %9)
  store %struct.pqi_device_capability* %10, %struct.pqi_device_capability** %7, align 8
  %11 = load %struct.pqi_device_capability*, %struct.pqi_device_capability** %7, align 8
  %12 = icmp ne %struct.pqi_device_capability* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %122

16:                                               ; preds = %1
  %17 = call i32 @memset(%struct.pqi_general_admin_request* %5, i32 0, i32 20)
  %18 = load i32, i32* @PQI_REQUEST_IU_GENERAL_ADMIN, align 4
  %19 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %5, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @PQI_GENERAL_ADMIN_IU_LENGTH, align 4
  %22 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %5, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @put_unaligned_le16(i32 %21, i32* %23)
  %25 = load i32, i32* @PQI_GENERAL_ADMIN_FUNCTION_REPORT_DEVICE_CAPABILITY, align 4
  %26 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %5, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = call i32 @put_unaligned_le32(i32 32, i32* %29)
  %31 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %32 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.pqi_device_capability*, %struct.pqi_device_capability** %7, align 8
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = call i32 @pqi_map_single(i32 %33, i32* %36, %struct.pqi_device_capability* %37, i32 32, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %16
  br label %118

43:                                               ; preds = %16
  %44 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %45 = call i32 @pqi_submit_admin_request_synchronous(%struct.pqi_ctrl_info* %44, %struct.pqi_general_admin_request* %5, %struct.pqi_general_admin_response* %6)
  store i32 %45, i32* %4, align 4
  %46 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %47 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %5, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %53 = call i32 @pqi_pci_unmap(i32 %48, i32* %51, i32 1, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %118

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.pqi_general_admin_response, %struct.pqi_general_admin_response* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PQI_GENERAL_ADMIN_STATUS_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %118

65:                                               ; preds = %57
  %66 = load %struct.pqi_device_capability*, %struct.pqi_device_capability** %7, align 8
  %67 = getelementptr inbounds %struct.pqi_device_capability, %struct.pqi_device_capability* %66, i32 0, i32 6
  %68 = call i32 @get_unaligned_le16(i32* %67)
  %69 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %70 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.pqi_device_capability*, %struct.pqi_device_capability** %7, align 8
  %72 = getelementptr inbounds %struct.pqi_device_capability, %struct.pqi_device_capability* %71, i32 0, i32 5
  %73 = call i32 @get_unaligned_le16(i32* %72)
  %74 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %75 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.pqi_device_capability*, %struct.pqi_device_capability** %7, align 8
  %77 = getelementptr inbounds %struct.pqi_device_capability, %struct.pqi_device_capability* %76, i32 0, i32 4
  %78 = call i32 @get_unaligned_le16(i32* %77)
  %79 = mul nsw i32 %78, 16
  %80 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %81 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.pqi_device_capability*, %struct.pqi_device_capability** %7, align 8
  %83 = getelementptr inbounds %struct.pqi_device_capability, %struct.pqi_device_capability* %82, i32 0, i32 3
  %84 = call i32 @get_unaligned_le16(i32* %83)
  %85 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %86 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.pqi_device_capability*, %struct.pqi_device_capability** %7, align 8
  %88 = getelementptr inbounds %struct.pqi_device_capability, %struct.pqi_device_capability* %87, i32 0, i32 2
  %89 = call i32 @get_unaligned_le16(i32* %88)
  %90 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %91 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load %struct.pqi_device_capability*, %struct.pqi_device_capability** %7, align 8
  %93 = getelementptr inbounds %struct.pqi_device_capability, %struct.pqi_device_capability* %92, i32 0, i32 1
  %94 = call i32 @get_unaligned_le16(i32* %93)
  %95 = mul nsw i32 %94, 16
  %96 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %97 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load %struct.pqi_device_capability*, %struct.pqi_device_capability** %7, align 8
  %99 = getelementptr inbounds %struct.pqi_device_capability, %struct.pqi_device_capability* %98, i32 0, i32 0
  %100 = load %struct.pqi_iu_layer_descriptor*, %struct.pqi_iu_layer_descriptor** %99, align 8
  %101 = load i64, i64* @PQI_PROTOCOL_SOP, align 8
  %102 = getelementptr inbounds %struct.pqi_iu_layer_descriptor, %struct.pqi_iu_layer_descriptor* %100, i64 %101
  store %struct.pqi_iu_layer_descriptor* %102, %struct.pqi_iu_layer_descriptor** %8, align 8
  %103 = load %struct.pqi_iu_layer_descriptor*, %struct.pqi_iu_layer_descriptor** %8, align 8
  %104 = getelementptr inbounds %struct.pqi_iu_layer_descriptor, %struct.pqi_iu_layer_descriptor* %103, i32 0, i32 2
  %105 = call i32 @get_unaligned_le16(i32* %104)
  %106 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %107 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  %108 = load %struct.pqi_iu_layer_descriptor*, %struct.pqi_iu_layer_descriptor** %8, align 8
  %109 = getelementptr inbounds %struct.pqi_iu_layer_descriptor, %struct.pqi_iu_layer_descriptor* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %112 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %111, i32 0, i32 8
  store i32 %110, i32* %112, align 4
  %113 = load %struct.pqi_iu_layer_descriptor*, %struct.pqi_iu_layer_descriptor** %8, align 8
  %114 = getelementptr inbounds %struct.pqi_iu_layer_descriptor, %struct.pqi_iu_layer_descriptor* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %117 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %65, %62, %56, %42
  %119 = load %struct.pqi_device_capability*, %struct.pqi_device_capability** %7, align 8
  %120 = call i32 @kfree(%struct.pqi_device_capability* %119)
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %118, %13
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.pqi_device_capability* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.pqi_general_admin_request*, i32, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @pqi_map_single(i32, i32*, %struct.pqi_device_capability*, i32, i32) #1

declare dso_local i32 @pqi_submit_admin_request_synchronous(%struct.pqi_ctrl_info*, %struct.pqi_general_admin_request*, %struct.pqi_general_admin_response*) #1

declare dso_local i32 @pqi_pci_unmap(i32, i32*, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @kfree(%struct.pqi_device_capability*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
