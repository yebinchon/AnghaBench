; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.vm_area_struct*)* }
%struct.vm_area_struct = type { i64, i32, i64, i64, %struct.TYPE_2__*, %struct.comedi_buf_map* }
%struct.comedi_buf_map = type { i32, i64, %struct.comedi_buf_page*, i32 }
%struct.comedi_buf_page = type { i32, i32 }
%struct.file = type { %struct.comedi_file* }
%struct.comedi_file = type { %struct.comedi_device* }
%struct.comedi_device = type { i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no driver attached\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"mmap() offset must be 0.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHARED = common dso_local global i32 0, align 4
@comedi_vm_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @comedi_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.comedi_file*, align 8
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_async*, align 8
  %10 = alloca %struct.comedi_buf_map*, align 8
  %11 = alloca %struct.comedi_buf_page*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.comedi_file*, %struct.comedi_file** %19, align 8
  store %struct.comedi_file* %20, %struct.comedi_file** %6, align 8
  %21 = load %struct.comedi_file*, %struct.comedi_file** %6, align 8
  %22 = getelementptr inbounds %struct.comedi_file, %struct.comedi_file* %21, i32 0, i32 0
  %23 = load %struct.comedi_device*, %struct.comedi_device** %22, align 8
  store %struct.comedi_device* %23, %struct.comedi_device** %7, align 8
  store %struct.comedi_buf_map* null, %struct.comedi_buf_map** %10, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %12, align 8
  store i32 0, i32* %16, align 4
  %27 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = call i32 @down_read_trylock(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %209

34:                                               ; preds = %2
  %35 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %16, align 4
  br label %202

46:                                               ; preds = %34
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @VM_WRITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = call %struct.comedi_subdevice* @comedi_file_write_subdevice(%struct.file* %54)
  store %struct.comedi_subdevice* %55, %struct.comedi_subdevice** %8, align 8
  br label %59

56:                                               ; preds = %46
  %57 = load %struct.file*, %struct.file** %4, align 8
  %58 = call %struct.comedi_subdevice* @comedi_file_read_subdevice(%struct.file* %57)
  store %struct.comedi_subdevice* %58, %struct.comedi_subdevice** %8, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %61 = icmp ne %struct.comedi_subdevice* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %16, align 4
  br label %202

65:                                               ; preds = %59
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 0
  %68 = load %struct.comedi_async*, %struct.comedi_async** %67, align 8
  store %struct.comedi_async* %68, %struct.comedi_async** %9, align 8
  %69 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %70 = icmp ne %struct.comedi_async* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %16, align 4
  br label %202

74:                                               ; preds = %65
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %16, align 4
  br label %202

86:                                               ; preds = %74
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %89, %92
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %96 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ugt i64 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load i32, i32* @EFAULT, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %16, align 4
  br label %202

102:                                              ; preds = %86
  %103 = load i64, i64* %13, align 8
  %104 = call i64 @offset_in_page(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* @EFAULT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %16, align 4
  br label %202

109:                                              ; preds = %102
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %111 = call i32 @vma_pages(%struct.vm_area_struct* %110)
  store i32 %111, i32* %14, align 4
  %112 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %113 = call %struct.comedi_buf_map* @comedi_buf_map_from_subdev_get(%struct.comedi_subdevice* %112)
  store %struct.comedi_buf_map* %113, %struct.comedi_buf_map** %10, align 8
  %114 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %10, align 8
  %115 = icmp ne %struct.comedi_buf_map* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load i32, i32* %14, align 4
  %118 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %10, align 8
  %119 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116, %109
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %16, align 4
  br label %202

125:                                              ; preds = %116
  %126 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %10, align 8
  %127 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DMA_NONE, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %150

131:                                              ; preds = %125
  %132 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %10, align 8
  %133 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %132, i32 0, i32 2
  %134 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %133, align 8
  %135 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %134, i64 0
  store %struct.comedi_buf_page* %135, %struct.comedi_buf_page** %11, align 8
  %136 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %10, align 8
  %137 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %140 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %11, align 8
  %141 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %11, align 8
  %144 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @PAGE_SIZE, align 4
  %148 = mul nsw i32 %146, %147
  %149 = call i32 @dma_mmap_coherent(i32 %138, %struct.vm_area_struct* %139, i32 %142, i32 %145, i32 %148)
  store i32 %149, i32* %16, align 4
  br label %185

150:                                              ; preds = %125
  store i32 0, i32* %15, align 4
  br label %151

151:                                              ; preds = %181, %150
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %151
  %156 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %10, align 8
  %157 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %156, i32 0, i32 2
  %158 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %158, i64 %160
  store %struct.comedi_buf_page* %161, %struct.comedi_buf_page** %11, align 8
  %162 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %11, align 8
  %163 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @virt_to_page(i32 %164)
  %166 = call i64 @page_to_pfn(i32 %165)
  store i64 %166, i64* %17, align 8
  %167 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %168 = load i64, i64* %12, align 8
  %169 = load i64, i64* %17, align 8
  %170 = load i32, i32* @PAGE_SIZE, align 4
  %171 = load i32, i32* @PAGE_SHARED, align 4
  %172 = call i32 @remap_pfn_range(%struct.vm_area_struct* %167, i64 %168, i64 %169, i32 %170, i32 %171)
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %155
  br label %184

176:                                              ; preds = %155
  %177 = load i32, i32* @PAGE_SIZE, align 4
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* %12, align 8
  %180 = add i64 %179, %178
  store i64 %180, i64* %12, align 8
  br label %181

181:                                              ; preds = %176
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %151

184:                                              ; preds = %175, %151
  br label %185

185:                                              ; preds = %184, %131
  %186 = load i32, i32* %16, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %185
  %189 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %190 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %189, i32 0, i32 4
  store %struct.TYPE_2__* @comedi_vm_ops, %struct.TYPE_2__** %190, align 8
  %191 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %10, align 8
  %192 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %193 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %192, i32 0, i32 5
  store %struct.comedi_buf_map* %191, %struct.comedi_buf_map** %193, align 8
  %194 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %195 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %194, i32 0, i32 4
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %197, align 8
  %199 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %200 = call i32 %198(%struct.vm_area_struct* %199)
  br label %201

201:                                              ; preds = %188, %185
  br label %202

202:                                              ; preds = %201, %122, %106, %99, %79, %71, %62, %39
  %203 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %204 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %203, i32 0, i32 0
  %205 = call i32 @up_read(i32* %204)
  %206 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %10, align 8
  %207 = call i32 @comedi_buf_map_put(%struct.comedi_buf_map* %206)
  %208 = load i32, i32* %16, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %202, %31
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local %struct.comedi_subdevice* @comedi_file_write_subdevice(%struct.file*) #1

declare dso_local %struct.comedi_subdevice* @comedi_file_read_subdevice(%struct.file*) #1

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local %struct.comedi_buf_map* @comedi_buf_map_from_subdev_get(%struct.comedi_subdevice*) #1

declare dso_local i32 @dma_mmap_coherent(i32, %struct.vm_area_struct*, i32, i32, i32) #1

declare dso_local i64 @page_to_pfn(i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @comedi_buf_map_put(%struct.comedi_buf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
