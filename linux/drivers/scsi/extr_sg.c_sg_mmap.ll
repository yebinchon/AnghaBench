; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sg.c_sg_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sg.c_sg_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.vm_area_struct = type { i64, i64, i32, i32*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"sg_mmap starting, vm_start=%p, len=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@sg_mmap_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @sg_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = icmp ne %struct.file* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = icmp ne %struct.vm_area_struct* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %6, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19, %16, %2
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %138

28:                                               ; preds = %19
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %31, %34
  store i64 %35, i64* %7, align 8
  %36 = load i32, i32* @KERN_INFO, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i64, i64* %7, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @sg_printk(i32 %36, i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %45)
  %47 = call i32 @SCSI_LOG_TIMEOUT(i32 3, i32 %46)
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %28
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %138

55:                                               ; preds = %28
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %10, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ugt i64 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %13, align 4
  br label %133

69:                                               ; preds = %55
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %9, align 8
  %73 = load i32, i32* @PAGE_SHIFT, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %73, %76
  %78 = shl i32 1, %77
  store i32 %78, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %113, %69
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %86, %89
  br label %91

91:                                               ; preds = %85, %79
  %92 = phi i1 [ false, %79 ], [ %90, %85 ]
  br i1 %92, label %93, label %116

93:                                               ; preds = %91
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %95 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = sub i64 %96, %97
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %99, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i64, i64* %8, align 8
  br label %108

105:                                              ; preds = %93
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  br label %108

108:                                              ; preds = %105, %103
  %109 = phi i64 [ %104, %103 ], [ %107, %105 ]
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %9, align 8
  br label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %79

116:                                              ; preds = %91
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load i32, i32* @VM_IO, align 4
  %120 = load i32, i32* @VM_DONTEXPAND, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @VM_DONTDUMP, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %125 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %130 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %129, i32 0, i32 4
  store %struct.TYPE_4__* %128, %struct.TYPE_4__** %130, align 8
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %132 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %131, i32 0, i32 3
  store i32* @sg_mmap_vm_ops, i32** %132, align 8
  br label %133

133:                                              ; preds = %116, %66
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %133, %52, %25
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @SCSI_LOG_TIMEOUT(i32, i32) #1

declare dso_local i32 @sg_printk(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
