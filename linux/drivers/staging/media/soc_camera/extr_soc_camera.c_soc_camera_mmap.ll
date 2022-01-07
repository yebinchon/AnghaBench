; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32, i32, %struct.file*, i32 }
%struct.vm_area_struct = type { i64, i64 }
%struct.soc_camera_host = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"mmap called, vma=%p\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"vma start=0x%08lx, size=%ld, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @soc_camera_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.soc_camera_device*, align 8
  %7 = alloca %struct.soc_camera_host*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %10, align 8
  store %struct.soc_camera_device* %11, %struct.soc_camera_device** %6, align 8
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %13 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %14)
  store %struct.soc_camera_host* %15, %struct.soc_camera_host** %7, align 8
  %16 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %17 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = call i32 (i32, i8*, ...) @dev_dbg(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.vm_area_struct* %19)
  %21 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %22 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %21, i32 0, i32 2
  %23 = load %struct.file*, %struct.file** %22, align 8
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = icmp ne %struct.file* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %61

29:                                               ; preds = %2
  %30 = load %struct.soc_camera_host*, %struct.soc_camera_host** %7, align 8
  %31 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %30, i32 0, i32 0
  %32 = call i64 @mutex_lock_interruptible(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ERESTARTSYS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %61

37:                                               ; preds = %29
  %38 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %39 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %38, i32 0, i32 1
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %41 = call i32 @vb2_mmap(i32* %39, %struct.vm_area_struct* %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.soc_camera_host*, %struct.soc_camera_host** %7, align 8
  %43 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %46 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %53, %56
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32, i8*, ...) @dev_dbg(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %37, %34, %26
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @vb2_mmap(i32*, %struct.vm_area_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
