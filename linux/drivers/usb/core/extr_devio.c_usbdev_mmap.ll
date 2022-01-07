; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_usbdev_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_devio.c_usbdev_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.usb_dev_state* }
%struct.usb_dev_state = type { i32, i32, i32 }
%struct.vm_area_struct = type { i64, i64, i32, %struct.usb_memory*, i32*, i32 }
%struct.usb_memory = type { i64, i64, i32, i32, i8*, %struct.usb_dev_state*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@usbdev_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @usbdev_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdev_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.usb_memory*, align 8
  %7 = alloca %struct.usb_dev_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store %struct.usb_memory* null, %struct.usb_memory** %6, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.usb_dev_state*, %struct.usb_dev_state** %14, align 8
  store %struct.usb_dev_state* %15, %struct.usb_dev_state** %7, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, 48
  %25 = call i32 @usbfs_increase_memory_usage(i64 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %138

29:                                               ; preds = %2
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.usb_memory* @kzalloc(i32 48, i32 %30)
  store %struct.usb_memory* %31, %struct.usb_memory** %6, align 8
  %32 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %33 = icmp ne %struct.usb_memory* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %134

37:                                               ; preds = %29
  %38 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %39 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* @GFP_USER, align 4
  %43 = load i32, i32* @__GFP_NOWARN, align 4
  %44 = or i32 %42, %43
  %45 = call i8* @usb_alloc_coherent(i32 %40, i64 %41, i32 %44, i32* %11)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %131

51:                                               ; preds = %37
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @memset(i8* %52, i32 0, i64 %53)
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %57 = getelementptr inbounds %struct.usb_memory, %struct.usb_memory* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %60 = getelementptr inbounds %struct.usb_memory, %struct.usb_memory* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %63 = getelementptr inbounds %struct.usb_memory, %struct.usb_memory* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %65 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %66 = getelementptr inbounds %struct.usb_memory, %struct.usb_memory* %65, i32 0, i32 5
  store %struct.usb_dev_state* %64, %struct.usb_dev_state** %66, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %71 = getelementptr inbounds %struct.usb_memory, %struct.usb_memory* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %73 = getelementptr inbounds %struct.usb_memory, %struct.usb_memory* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  %74 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %75 = getelementptr inbounds %struct.usb_memory, %struct.usb_memory* %74, i32 0, i32 3
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %82 = getelementptr inbounds %struct.usb_memory, %struct.usb_memory* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @virt_to_phys(i8* %83)
  %85 = load i32, i32* @PAGE_SHIFT, align 4
  %86 = ashr i32 %84, %85
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @remap_pfn_range(%struct.vm_area_struct* %77, i64 %80, i32 %86, i64 %87, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %51
  %94 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %95 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %96 = getelementptr inbounds %struct.usb_memory, %struct.usb_memory* %95, i32 0, i32 2
  %97 = call i32 @dec_usb_memory_use_count(%struct.usb_memory* %94, i32* %96)
  %98 = load i32, i32* @EAGAIN, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %140

100:                                              ; preds = %51
  %101 = load i32, i32* @VM_IO, align 4
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* @VM_DONTEXPAND, align 4
  %107 = load i32, i32* @VM_DONTDUMP, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %110 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %114 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %113, i32 0, i32 4
  store i32* @usbdev_vm_ops, i32** %114, align 8
  %115 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %116 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %117 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %116, i32 0, i32 3
  store %struct.usb_memory* %115, %struct.usb_memory** %117, align 8
  %118 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %119 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %118, i32 0, i32 0
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @spin_lock_irqsave(i32* %119, i64 %120)
  %122 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %123 = getelementptr inbounds %struct.usb_memory, %struct.usb_memory* %122, i32 0, i32 3
  %124 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %125 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %124, i32 0, i32 1
  %126 = call i32 @list_add_tail(i32* %123, i32* %125)
  %127 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %128 = getelementptr inbounds %struct.usb_dev_state, %struct.usb_dev_state* %127, i32 0, i32 0
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  store i32 0, i32* %3, align 4
  br label %140

131:                                              ; preds = %48
  %132 = load %struct.usb_memory*, %struct.usb_memory** %6, align 8
  %133 = call i32 @kfree(%struct.usb_memory* %132)
  br label %134

134:                                              ; preds = %131, %34
  %135 = load i64, i64* %8, align 8
  %136 = add i64 %135, 48
  %137 = call i32 @usbfs_decrease_memory_usage(i64 %136)
  br label %138

138:                                              ; preds = %134, %28
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %100, %93
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @usbfs_increase_memory_usage(i64) #1

declare dso_local %struct.usb_memory* @kzalloc(i32, i32) #1

declare dso_local i8* @usb_alloc_coherent(i32, i64, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @dec_usb_memory_use_count(%struct.usb_memory*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.usb_memory*) #1

declare dso_local i32 @usbfs_decrease_memory_usage(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
