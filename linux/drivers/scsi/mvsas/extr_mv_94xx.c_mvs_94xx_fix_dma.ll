; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_fix_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_mvs_94xx_fix_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mvs_prd = type { i32, i8* }
%struct.mvs_prd_imt = type { i32, i32 }

@VANIR_A0_REV = common dso_local global i64 0, align 8
@VANIR_B0_REV = common dso_local global i64 0, align 8
@MAX_SG_ENTRY = common dso_local global i32 0, align 4
@PRD_CHAINED_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32, i32, i32, i8*)* @mvs_94xx_fix_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_94xx_fix_dma(%struct.mvs_info* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.mvs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mvs_prd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mvs_prd_imt, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.mvs_prd*
  store %struct.mvs_prd* %16, %struct.mvs_prd** %12, align 8
  %17 = bitcast %struct.mvs_prd_imt* %14 to i32*
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.mvs_prd*, %struct.mvs_prd** %12, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds %struct.mvs_prd, %struct.mvs_prd* %19, i64 %20
  store %struct.mvs_prd* %21, %struct.mvs_prd** %12, align 8
  %22 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %23 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VANIR_A0_REV, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %5
  %30 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %31 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VANIR_B0_REV, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %29, %5
  %38 = load i32, i32* %7, align 4
  %39 = icmp sle i32 %38, 8
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %42 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  br label %48

44:                                               ; preds = %37
  %45 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %46 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i32 [ %43, %40 ], [ %47, %44 ]
  store i32 %49, i32* %13, align 4
  br label %51

50:                                               ; preds = %29
  br label %89

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %84, %51
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @MAX_SG_ENTRY, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @MAX_SG_ENTRY, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.mvs_prd*, %struct.mvs_prd** %12, align 8
  %64 = getelementptr inbounds %struct.mvs_prd, %struct.mvs_prd* %63, i64 -1
  %65 = call i32 @virt_to_phys(%struct.mvs_prd* %64)
  %66 = call i8* @cpu_to_le64(i32 %65)
  %67 = load %struct.mvs_prd*, %struct.mvs_prd** %12, align 8
  %68 = getelementptr inbounds %struct.mvs_prd, %struct.mvs_prd* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = getelementptr inbounds %struct.mvs_prd_imt, %struct.mvs_prd_imt* %14, i32 0, i32 0
  store i32 2, i32* %69, align 4
  %70 = getelementptr inbounds %struct.mvs_prd_imt, %struct.mvs_prd_imt* %14, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %78

71:                                               ; preds = %57
  %72 = load i32, i32* %13, align 4
  %73 = call i8* @cpu_to_le64(i32 %72)
  %74 = load %struct.mvs_prd*, %struct.mvs_prd** %12, align 8
  %75 = getelementptr inbounds %struct.mvs_prd, %struct.mvs_prd* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = getelementptr inbounds %struct.mvs_prd_imt, %struct.mvs_prd_imt* %14, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %62
  %79 = bitcast %struct.mvs_prd_imt* %14 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cpu_to_le32(i32 %80)
  %82 = load %struct.mvs_prd*, %struct.mvs_prd** %12, align 8
  %83 = getelementptr inbounds %struct.mvs_prd, %struct.mvs_prd* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  %87 = load %struct.mvs_prd*, %struct.mvs_prd** %12, align 8
  %88 = getelementptr inbounds %struct.mvs_prd, %struct.mvs_prd* %87, i32 1
  store %struct.mvs_prd* %88, %struct.mvs_prd** %12, align 8
  br label %53

89:                                               ; preds = %50, %53
  ret void
}

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @virt_to_phys(%struct.mvs_prd*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
