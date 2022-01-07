; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sg.c_sg_vma_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sg.c_sg_vma_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, %struct.page*, %struct.vm_area_struct* }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32* }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"sg_vma_fault: offset=%lu, scatg=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @sg_vma_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_vma_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %13 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 2
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  store %struct.vm_area_struct* %15, %struct.vm_area_struct** %4, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = icmp eq %struct.vm_area_struct* null, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %5, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18, %1
  %25 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %25, i32* %2, align 4
  br label %126

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %9, align 8
  %29 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %30 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %41, i32* %2, align 4
  br label %126

42:                                               ; preds = %26
  %43 = load i32, i32* @KERN_INFO, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sg_printk(i32 %43, i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %47, i32 %50)
  %52 = call i32 @SCSI_LOG_TIMEOUT(i32 3, i32 %51)
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  %56 = load i32, i32* @PAGE_SHIFT, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = shl i32 1, %60
  store i32 %61, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %121, %42
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %69, %72
  br label %74

74:                                               ; preds = %68, %62
  %75 = phi i1 [ false, %62 ], [ %73, %68 ]
  br i1 %75, label %76, label %124

76:                                               ; preds = %74
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = sub i64 %79, %80
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i64, i64* %7, align 8
  br label %91

88:                                               ; preds = %76
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  br label %91

91:                                               ; preds = %88, %86
  %92 = phi i64 [ %87, %86 ], [ %90, %88 ]
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %91
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %6, align 8
  %105 = load i32, i32* @PAGE_SHIFT, align 4
  %106 = zext i32 %105 to i64
  %107 = lshr i64 %104, %106
  %108 = call %struct.page* @nth_page(i32 %103, i64 %107)
  store %struct.page* %108, %struct.page** %12, align 8
  %109 = load %struct.page*, %struct.page** %12, align 8
  %110 = call i32 @get_page(%struct.page* %109)
  %111 = load %struct.page*, %struct.page** %12, align 8
  %112 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %113 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %112, i32 0, i32 1
  store %struct.page* %111, %struct.page** %113, align 8
  store i32 0, i32* %2, align 4
  br label %126

114:                                              ; preds = %91
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %8, align 8
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* %6, align 8
  %120 = sub i64 %119, %118
  store i64 %120, i64* %6, align 8
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %62

124:                                              ; preds = %74
  %125 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %96, %40, %24
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @SCSI_LOG_TIMEOUT(i32, i32) #1

declare dso_local i32 @sg_printk(i32, i32, i8*, i64, i32) #1

declare dso_local %struct.page* @nth_page(i32, i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
