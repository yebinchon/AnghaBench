; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_set_dma_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_set_dma_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64 }
%struct.megasas_dcmd_frame = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8*, i32 }

@MFI_FRAME_SGL64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megasas_set_dma_settings(%struct.megasas_instance* %0, %struct.megasas_dcmd_frame* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.megasas_instance*, align 8
  %6 = alloca %struct.megasas_dcmd_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %5, align 8
  store %struct.megasas_dcmd_frame* %1, %struct.megasas_dcmd_frame** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %10 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @cpu_to_le64(i32 %14)
  %16 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %17 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %15, i32* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %25 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i8* %23, i8** %29, align 8
  %30 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %31 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MFI_FRAME_SGL64, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %38 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %64

39:                                               ; preds = %4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @lower_32_bits(i32 %40)
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %44 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i8* %42, i8** %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %52 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i8* %50, i8** %56, align 8
  %57 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %58 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @cpu_to_le16(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %6, align 8
  %63 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %39, %13
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
