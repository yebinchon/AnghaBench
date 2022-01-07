; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i64, i64, i32, i32, %struct.vfio_pci_device* }
%struct.vfio_pci_device = type { i64*, i32*, %struct.vfio_pci_region*, %struct.pci_dev* }
%struct.vfio_pci_region = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vfio_pci_device*, %struct.vfio_pci_region*, %struct.vm_area_struct*)* }
%struct.pci_dev = type { i32 }

@VFIO_PCI_OFFSET_SHIFT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VFIO_PCI_NUM_REGIONS = common dso_local global i32 0, align 4
@VFIO_REGION_INFO_FLAG_MMAP = common dso_local global i32 0, align 4
@VFIO_PCI_ROM_REGION_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vfio-pci\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.vm_area_struct*)* @vfio_pci_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_mmap(i8* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.vfio_pci_device*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vfio_pci_region*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.vfio_pci_device*
  store %struct.vfio_pci_device* %17, %struct.vfio_pci_device** %6, align 8
  %18 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %19 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %18, i32 0, i32 3
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %7, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VFIO_PCI_OFFSET_SHIFT, align 4
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = sub nsw i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %23, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %228

40:                                               ; preds = %2
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @VM_SHARED, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %228

50:                                               ; preds = %40
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @VFIO_PCI_NUM_REGIONS, align 4
  %53 = icmp uge i32 %51, %52
  br i1 %53, label %54, label %98

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @VFIO_PCI_NUM_REGIONS, align 4
  %57 = sub i32 %55, %56
  store i32 %57, i32* %14, align 4
  %58 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %59 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %58, i32 0, i32 2
  %60 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %60, i64 %62
  store %struct.vfio_pci_region* %63, %struct.vfio_pci_region** %15, align 8
  %64 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %15, align 8
  %65 = icmp ne %struct.vfio_pci_region* %64, null
  br i1 %65, label %66, label %95

66:                                               ; preds = %54
  %67 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %15, align 8
  %68 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %15, align 8
  %73 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.vfio_pci_device*, %struct.vfio_pci_region*, %struct.vm_area_struct*)*, i32 (%struct.vfio_pci_device*, %struct.vfio_pci_region*, %struct.vm_area_struct*)** %75, align 8
  %77 = icmp ne i32 (%struct.vfio_pci_device*, %struct.vfio_pci_region*, %struct.vm_area_struct*)* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %71
  %79 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %15, align 8
  %80 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @VFIO_REGION_INFO_FLAG_MMAP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %15, align 8
  %87 = getelementptr inbounds %struct.vfio_pci_region, %struct.vfio_pci_region* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32 (%struct.vfio_pci_device*, %struct.vfio_pci_region*, %struct.vm_area_struct*)*, i32 (%struct.vfio_pci_device*, %struct.vfio_pci_region*, %struct.vm_area_struct*)** %89, align 8
  %91 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %92 = load %struct.vfio_pci_region*, %struct.vfio_pci_region** %15, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %94 = call i32 %90(%struct.vfio_pci_device* %91, %struct.vfio_pci_region* %92, %struct.vm_area_struct* %93)
  store i32 %94, i32* %3, align 4
  br label %228

95:                                               ; preds = %78, %71, %66, %54
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %228

98:                                               ; preds = %50
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @VFIO_PCI_ROM_REGION_INDEX, align 4
  %101 = icmp uge i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %228

105:                                              ; preds = %98
  %106 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %107 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %105
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %228

117:                                              ; preds = %105
  %118 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @pci_resource_len(%struct.pci_dev* %118, i32 %119)
  %121 = call i64 @PAGE_ALIGN(i32 %120)
  store i64 %121, i64* %9, align 8
  %122 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %123 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %126 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %124, %127
  store i64 %128, i64* %10, align 8
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %130 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @VFIO_PCI_OFFSET_SHIFT, align 4
  %133 = zext i32 %132 to i64
  %134 = load i64, i64* @PAGE_SHIFT, align 8
  %135 = sub nsw i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = shl i32 1, %136
  %138 = sub i32 %137, 1
  %139 = and i32 %131, %138
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %11, align 8
  %141 = load i64, i64* %11, align 8
  %142 = load i64, i64* @PAGE_SHIFT, align 8
  %143 = shl i64 %141, %142
  store i64 %143, i64* %12, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* %10, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i64, i64* %9, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %117
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %228

152:                                              ; preds = %117
  %153 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %154 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %196, label %161

161:                                              ; preds = %152
  %162 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %163 = load i32, i32* %8, align 4
  %164 = shl i32 1, %163
  %165 = call i32 @pci_request_selected_regions(%struct.pci_dev* %162, i32 %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = load i32, i32* %13, align 4
  store i32 %169, i32* %3, align 4
  br label %228

170:                                              ; preds = %161
  %171 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i64 @pci_iomap(%struct.pci_dev* %171, i32 %172, i32 0)
  %174 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %175 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  store i64 %173, i64* %179, align 8
  %180 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %181 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %180, i32 0, i32 0
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %170
  %189 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %190 = load i32, i32* %8, align 4
  %191 = shl i32 1, %190
  %192 = call i32 @pci_release_selected_regions(%struct.pci_dev* %189, i32 %191)
  %193 = load i32, i32* @ENOMEM, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %228

195:                                              ; preds = %170
  br label %196

196:                                              ; preds = %195, %152
  %197 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %198 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %199 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %198, i32 0, i32 5
  store %struct.vfio_pci_device* %197, %struct.vfio_pci_device** %199, align 8
  %200 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %201 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @pgprot_noncached(i32 %202)
  %204 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %205 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 4
  %206 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %207 = load i32, i32* %8, align 4
  %208 = call i64 @pci_resource_start(%struct.pci_dev* %206, i32 %207)
  %209 = load i64, i64* @PAGE_SHIFT, align 8
  %210 = ashr i64 %208, %209
  %211 = load i64, i64* %11, align 8
  %212 = add nsw i64 %210, %211
  %213 = trunc i64 %212 to i32
  %214 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %215 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %217 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %218 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %221 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i64, i64* %10, align 8
  %224 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %225 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @remap_pfn_range(%struct.vm_area_struct* %216, i64 %219, i32 %222, i64 %223, i32 %226)
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %196, %188, %168, %149, %114, %102, %95, %85, %47, %37
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_selected_regions(%struct.pci_dev*, i32, i8*) #1

declare dso_local i64 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_release_selected_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
