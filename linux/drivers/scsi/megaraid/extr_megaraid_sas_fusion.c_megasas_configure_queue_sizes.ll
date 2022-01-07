; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_configure_queue_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_configure_queue_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i64, i32, i64, %struct.TYPE_2__*, i64, i64, %struct.fusion_context* }
%struct.TYPE_2__ = type { i64 }
%struct.fusion_context = type { i32, i32, i32, i32 }

@VENTURA_SERIES = common dso_local global i64 0, align 8
@RAID_1_PEER_CMDS = common dso_local global i32 0, align 4
@MEGA_MPI2_RAID_DEFAULT_IO_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_configure_queue_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_configure_queue_sizes(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca %struct.fusion_context*, align 8
  %4 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %5 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %6 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %5, i32 0, i32 7
  %7 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  store %struct.fusion_context* %7, %struct.fusion_context** %3, align 8
  %8 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %9 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %12 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VENTURA_SERIES, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %18 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RAID_1_PEER_CMDS, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %23 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  br label %30

24:                                               ; preds = %1
  %25 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %26 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %29 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %24, %16
  %31 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %32 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %36 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %40 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %42 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %45 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %47 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %50 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %48, i64* %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  %55 = add nsw i32 %54, 15
  %56 = sdiv i32 %55, 16
  %57 = mul nsw i32 2, %56
  %58 = mul nsw i32 %57, 16
  %59 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %60 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %62 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 4, %64
  %66 = trunc i64 %65 to i32
  %67 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %68 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %70 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %76 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @MEGA_MPI2_RAID_DEFAULT_IO_FRAME_SIZE, align 4
  %78 = load i32, i32* @MEGA_MPI2_RAID_DEFAULT_IO_FRAME_SIZE, align 4
  %79 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %80 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  %83 = mul nsw i32 %78, %82
  %84 = add nsw i32 %77, %83
  %85 = load %struct.fusion_context*, %struct.fusion_context** %3, align 8
  %86 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
