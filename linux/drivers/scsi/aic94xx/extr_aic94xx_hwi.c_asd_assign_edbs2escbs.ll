; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_assign_edbs2escbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_assign_edbs2escbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.asd_seq_data }
%struct.asd_seq_data = type { i32, %struct.asd_dma_tok**, %struct.asd_ascb** }
%struct.asd_dma_tok = type { i64, i64 }
%struct.asd_ascb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.empty_scb }
%struct.empty_scb = type { i32, %struct.sg_el* }
%struct.sg_el = type { i32, i32 }

@ASD_EDBS_PER_SCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_assign_edbs2escbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_assign_edbs2escbs(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca %struct.asd_seq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.asd_ascb*, align 8
  %8 = alloca %struct.empty_scb*, align 8
  %9 = alloca %struct.sg_el*, align 8
  %10 = alloca %struct.asd_dma_tok*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %11 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %12 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %11, i32 0, i32 0
  store %struct.asd_seq_data* %12, %struct.asd_seq_data** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %76, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.asd_seq_data*, %struct.asd_seq_data** %3, align 8
  %16 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %79

19:                                               ; preds = %13
  %20 = load %struct.asd_seq_data*, %struct.asd_seq_data** %3, align 8
  %21 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %20, i32 0, i32 2
  %22 = load %struct.asd_ascb**, %struct.asd_ascb*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.asd_ascb*, %struct.asd_ascb** %22, i64 %24
  %26 = load %struct.asd_ascb*, %struct.asd_ascb** %25, align 8
  store %struct.asd_ascb* %26, %struct.asd_ascb** %7, align 8
  %27 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %28 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.empty_scb* %30, %struct.empty_scb** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %33 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @ASD_EDBS_PER_SCB, align 4
  %35 = load %struct.empty_scb*, %struct.empty_scb** %8, align 8
  %36 = getelementptr inbounds %struct.empty_scb, %struct.empty_scb* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %72, %19
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ASD_EDBS_PER_SCB, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %37
  %42 = load %struct.empty_scb*, %struct.empty_scb** %8, align 8
  %43 = getelementptr inbounds %struct.empty_scb, %struct.empty_scb* %42, i32 0, i32 1
  %44 = load %struct.sg_el*, %struct.sg_el** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sg_el, %struct.sg_el* %44, i64 %46
  store %struct.sg_el* %47, %struct.sg_el** %9, align 8
  %48 = load %struct.asd_seq_data*, %struct.asd_seq_data** %3, align 8
  %49 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %48, i32 0, i32 1
  %50 = load %struct.asd_dma_tok**, %struct.asd_dma_tok*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds %struct.asd_dma_tok*, %struct.asd_dma_tok** %50, i64 %53
  %55 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %54, align 8
  store %struct.asd_dma_tok* %55, %struct.asd_dma_tok** %10, align 8
  %56 = load %struct.sg_el*, %struct.sg_el** %9, align 8
  %57 = call i32 @memset(%struct.sg_el* %56, i32 0, i32 8)
  %58 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %10, align 8
  %59 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @cpu_to_le64(i32 %61)
  %63 = load %struct.sg_el*, %struct.sg_el** %9, align 8
  %64 = getelementptr inbounds %struct.sg_el, %struct.sg_el* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %10, align 8
  %66 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @cpu_to_le32(i32 %68)
  %70 = load %struct.sg_el*, %struct.sg_el** %9, align 8
  %71 = getelementptr inbounds %struct.sg_el, %struct.sg_el* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %41
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %37

75:                                               ; preds = %37
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %13

79:                                               ; preds = %13
  ret void
}

declare dso_local i32 @memset(%struct.sg_el*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
