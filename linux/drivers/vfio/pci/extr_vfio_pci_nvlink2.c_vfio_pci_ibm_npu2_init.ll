; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_nvlink2.c_vfio_pci_ibm_npu2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_nvlink2.c_vfio_pci_ibm_npu2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vfio_pci_npu2_data = type { i32, i64, i8*, i8* }
%struct.device_node = type { i32 }
%struct.pci_controller = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ibm,nvlink\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ibm,npu-link-index\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ibm,mmio-atsd\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"No available ATSD found\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ibm,device-tgt-addr\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"No ibm,device-tgt-addr found\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"ibm,nvlink-speed\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"No ibm,nvlink-speed found\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SZ_64K = common dso_local global i32 0, align 4
@MEMREMAP_WT = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_IBM = common dso_local global i32 0, align 4
@VFIO_REGION_TYPE_PCI_VENDOR_TYPE = common dso_local global i32 0, align 4
@VFIO_REGION_SUBTYPE_IBM_NVLINK2_ATSD = common dso_local global i32 0, align 4
@vfio_pci_npu2_regops = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VFIO_REGION_INFO_FLAG_READ = common dso_local global i32 0, align 4
@VFIO_REGION_INFO_FLAG_WRITE = common dso_local global i32 0, align 4
@VFIO_REGION_INFO_FLAG_MMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_pci_ibm_npu2_init(%struct.vfio_pci_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfio_pci_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfio_pci_npu2_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.pci_controller*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %3, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %15 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %8, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %18 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %17)
  store %struct.device_node* %18, %struct.device_node** %9, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.pci_controller* @pci_bus_to_host(i32 %21)
  store %struct.pci_controller* %22, %struct.pci_controller** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 255, i32* %13, align 4
  %23 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %24 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %23, i32 0, i32 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  %26 = call i32 @pnv_pci_get_gpu_dev(%struct.pci_dev* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %160

31:                                               ; preds = %1
  %32 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.device_node* @of_parse_phandle(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %36, %struct.device_node** %6, align 8
  %37 = load %struct.device_node*, %struct.device_node** %6, align 8
  %38 = call i64 @of_property_read_u32(%struct.device_node* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %39 = call i64 @WARN_ON(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %160

44:                                               ; preds = %31
  %45 = load %struct.pci_controller*, %struct.pci_controller** %10, align 8
  %46 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @of_property_read_u64_index(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %48, i8** %11)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %53 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %52, i32 0, i32 0
  %54 = load %struct.pci_dev*, %struct.pci_dev** %53, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = call i32 @dev_warn(%struct.TYPE_2__* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i8* null, i8** %11, align 8
  br label %57

57:                                               ; preds = %51, %44
  %58 = load %struct.device_node*, %struct.device_node** %9, align 8
  %59 = call i64 @of_property_read_u64(%struct.device_node* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %12)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %63 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %62, i32 0, i32 0
  %64 = load %struct.pci_dev*, %struct.pci_dev** %63, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = call i32 @dev_warn(%struct.TYPE_2__* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i32, i32* @EFAULT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %160

69:                                               ; preds = %57
  %70 = load %struct.device_node*, %struct.device_node** %9, align 8
  %71 = call i64 @of_property_read_u32(%struct.device_node* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %13)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %75 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %74, i32 0, i32 0
  %76 = load %struct.pci_dev*, %struct.pci_dev** %75, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  %78 = call i32 @dev_warn(%struct.TYPE_2__* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %79 = load i32, i32* @EFAULT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %160

81:                                               ; preds = %69
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.vfio_pci_npu2_data* @kzalloc(i32 32, i32 %82)
  store %struct.vfio_pci_npu2_data* %83, %struct.vfio_pci_npu2_data** %5, align 8
  %84 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %5, align 8
  %85 = icmp ne %struct.vfio_pci_npu2_data* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %160

89:                                               ; preds = %81
  %90 = load i8*, i8** %11, align 8
  %91 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %5, align 8
  %92 = getelementptr inbounds %struct.vfio_pci_npu2_data, %struct.vfio_pci_npu2_data* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %5, align 8
  %95 = getelementptr inbounds %struct.vfio_pci_npu2_data, %struct.vfio_pci_npu2_data* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %5, align 8
  %98 = getelementptr inbounds %struct.vfio_pci_npu2_data, %struct.vfio_pci_npu2_data* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %5, align 8
  %100 = getelementptr inbounds %struct.vfio_pci_npu2_data, %struct.vfio_pci_npu2_data* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %120

103:                                              ; preds = %89
  %104 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %5, align 8
  %105 = getelementptr inbounds %struct.vfio_pci_npu2_data, %struct.vfio_pci_npu2_data* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* @SZ_64K, align 4
  %108 = load i32, i32* @MEMREMAP_WT, align 4
  %109 = call i64 @memremap(i8* %106, i32 %107, i32 %108)
  %110 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %5, align 8
  %111 = getelementptr inbounds %struct.vfio_pci_npu2_data, %struct.vfio_pci_npu2_data* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %5, align 8
  %113 = getelementptr inbounds %struct.vfio_pci_npu2_data, %struct.vfio_pci_npu2_data* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %103
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %146

119:                                              ; preds = %103
  br label %120

120:                                              ; preds = %119, %89
  %121 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %122 = load i32, i32* @PCI_VENDOR_ID_IBM, align 4
  %123 = load i32, i32* @VFIO_REGION_TYPE_PCI_VENDOR_TYPE, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @VFIO_REGION_SUBTYPE_IBM_NVLINK2_ATSD, align 4
  %126 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %5, align 8
  %127 = getelementptr inbounds %struct.vfio_pci_npu2_data, %struct.vfio_pci_npu2_data* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %120
  %131 = load i32, i32* @PAGE_SIZE, align 4
  br label %133

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  %135 = load i32, i32* @VFIO_REGION_INFO_FLAG_READ, align 4
  %136 = load i32, i32* @VFIO_REGION_INFO_FLAG_WRITE, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @VFIO_REGION_INFO_FLAG_MMAP, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %5, align 8
  %141 = call i32 @vfio_pci_register_dev_region(%struct.vfio_pci_device* %121, i32 %124, i32 %125, i32* @vfio_pci_npu2_regops, i32 %134, i32 %139, %struct.vfio_pci_npu2_data* %140)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %146

145:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %160

146:                                              ; preds = %144, %116
  %147 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %5, align 8
  %148 = getelementptr inbounds %struct.vfio_pci_npu2_data, %struct.vfio_pci_npu2_data* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %5, align 8
  %153 = getelementptr inbounds %struct.vfio_pci_npu2_data, %struct.vfio_pci_npu2_data* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @memunmap(i64 %154)
  br label %156

156:                                              ; preds = %151, %146
  %157 = load %struct.vfio_pci_npu2_data*, %struct.vfio_pci_npu2_data** %5, align 8
  %158 = call i32 @kfree(%struct.vfio_pci_npu2_data* %157)
  %159 = load i32, i32* %4, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %156, %145, %86, %73, %61, %41, %28
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local i32 @pnv_pci_get_gpu_dev(%struct.pci_dev*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i64 @WARN_ON(i64) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_u64_index(i32, i8*, i32, i8**) #1

declare dso_local i32 @dev_warn(%struct.TYPE_2__*, i8*) #1

declare dso_local i64 @of_property_read_u64(%struct.device_node*, i8*, i8**) #1

declare dso_local %struct.vfio_pci_npu2_data* @kzalloc(i32, i32) #1

declare dso_local i64 @memremap(i8*, i32, i32) #1

declare dso_local i32 @vfio_pci_register_dev_region(%struct.vfio_pci_device*, i32, i32, i32*, i32, i32, %struct.vfio_pci_npu2_data*) #1

declare dso_local i32 @memunmap(i64) #1

declare dso_local i32 @kfree(%struct.vfio_pci_npu2_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
