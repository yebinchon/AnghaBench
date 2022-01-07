; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_controller_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_controller_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_hba = type { %struct.TYPE_6__*, %struct.st_frame* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.st_frame = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.st_ccb = type { i32 }

@ST_VER_MAJOR = common dso_local global i32 0, align 4
@ST_VER_MINOR = common dso_local global i32 0, align 4
@ST_OEM = common dso_local global i32 0, align 4
@ST_BUILD_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_hba*, %struct.st_ccb*)* @stex_controller_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stex_controller_info(%struct.st_hba* %0, %struct.st_ccb* %1) #0 {
  %3 = alloca %struct.st_hba*, align 8
  %4 = alloca %struct.st_ccb*, align 8
  %5 = alloca %struct.st_frame*, align 8
  %6 = alloca i64, align 8
  store %struct.st_hba* %0, %struct.st_hba** %3, align 8
  store %struct.st_ccb* %1, %struct.st_ccb** %4, align 8
  store i64 64, i64* %6, align 8
  %7 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %8 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %7, i32 0, i32 1
  %9 = load %struct.st_frame*, %struct.st_frame** %8, align 8
  store %struct.st_frame* %9, %struct.st_frame** %5, align 8
  %10 = load %struct.st_ccb*, %struct.st_ccb** %4, align 8
  %11 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @scsi_sg_copy_to_buffer(i32 %12, %struct.st_frame* %13, i64 %14)
  %16 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %17 = getelementptr inbounds %struct.st_frame, %struct.st_frame* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @memset(i64 %18, i32 0, i32 24)
  %20 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %21 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call i64 @pci_resource_start(%struct.TYPE_6__* %22, i32 0)
  %24 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %25 = getelementptr inbounds %struct.st_frame, %struct.st_frame* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i64*
  store i64 %23, i64* %27, align 8
  %28 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %29 = getelementptr inbounds %struct.st_frame, %struct.st_frame* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @ST_VER_MAJOR, align 4
  %31 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %32 = getelementptr inbounds %struct.st_frame, %struct.st_frame* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @ST_VER_MINOR, align 4
  %35 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %36 = getelementptr inbounds %struct.st_frame, %struct.st_frame* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @ST_OEM, align 4
  %39 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %40 = getelementptr inbounds %struct.st_frame, %struct.st_frame* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @ST_BUILD_VER, align 4
  %43 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %44 = getelementptr inbounds %struct.st_frame, %struct.st_frame* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %47 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %54 = getelementptr inbounds %struct.st_frame, %struct.st_frame* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %56 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %61 = getelementptr inbounds %struct.st_frame, %struct.st_frame* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %63 = getelementptr inbounds %struct.st_frame, %struct.st_frame* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %65 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %70 = getelementptr inbounds %struct.st_frame, %struct.st_frame* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %72 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = shl i32 %75, 16
  %77 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %78 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %76, %81
  %83 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %84 = getelementptr inbounds %struct.st_frame, %struct.st_frame* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %86 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = shl i32 %89, 16
  %91 = load %struct.st_hba*, %struct.st_hba** %3, align 8
  %92 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %90, %95
  %97 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %98 = getelementptr inbounds %struct.st_frame, %struct.st_frame* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.st_ccb*, %struct.st_ccb** %4, align 8
  %100 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.st_frame*, %struct.st_frame** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @scsi_sg_copy_from_buffer(i32 %101, %struct.st_frame* %102, i64 %103)
  ret void
}

declare dso_local i32 @scsi_sg_copy_to_buffer(i32, %struct.st_frame*, i64) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @pci_resource_start(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @scsi_sg_copy_from_buffer(i32, %struct.st_frame*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
