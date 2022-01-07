; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_bin_vma_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_bin_vma_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, %struct.page*, %struct.TYPE_4__* }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { %struct.mon_reader_bin* }
%struct.mon_reader_bin = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.page* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @mon_bin_vma_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_bin_vma_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.mon_reader_bin*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %8 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %9 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %11, align 8
  store %struct.mon_reader_bin* %12, %struct.mon_reader_bin** %4, align 8
  %13 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %14 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %17 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PAGE_SHIFT, align 8
  %20 = shl i64 %18, %19
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %23 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %28 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %30, i32* %2, align 4
  br label %50

31:                                               ; preds = %1
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @CHUNK_SIZE, align 8
  %34 = udiv i64 %32, %33
  store i64 %34, i64* %6, align 8
  %35 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %36 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.page*, %struct.page** %40, align 8
  store %struct.page* %41, %struct.page** %7, align 8
  %42 = load %struct.page*, %struct.page** %7, align 8
  %43 = call i32 @get_page(%struct.page* %42)
  %44 = load %struct.mon_reader_bin*, %struct.mon_reader_bin** %4, align 8
  %45 = getelementptr inbounds %struct.mon_reader_bin, %struct.mon_reader_bin* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.page*, %struct.page** %7, align 8
  %48 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %49 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %48, i32 0, i32 1
  store %struct.page* %47, %struct.page** %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %31, %26
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
