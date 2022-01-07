; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_64xx.c_mvs_64xx_fix_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_64xx.c_mvs_64xx_fix_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }
%struct.mvs_prd = type { i32, i32 }

@MAX_SG_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32, i32, i32, i8*)* @mvs_64xx_fix_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_64xx_fix_dma(%struct.mvs_info* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.mvs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mvs_prd*, align 8
  %13 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.mvs_prd*
  store %struct.mvs_prd* %15, %struct.mvs_prd** %12, align 8
  %16 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %17 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.mvs_prd*, %struct.mvs_prd** %12, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds %struct.mvs_prd, %struct.mvs_prd* %20, i64 %21
  store %struct.mvs_prd* %22, %struct.mvs_prd** %12, align 8
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %40, %5
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @MAX_SG_ENTRY, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %25, %26
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @cpu_to_le64(i32 %30)
  %32 = load %struct.mvs_prd*, %struct.mvs_prd** %12, align 8
  %33 = getelementptr inbounds %struct.mvs_prd, %struct.mvs_prd* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load %struct.mvs_prd*, %struct.mvs_prd** %12, align 8
  %37 = getelementptr inbounds %struct.mvs_prd, %struct.mvs_prd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mvs_prd*, %struct.mvs_prd** %12, align 8
  %39 = getelementptr inbounds %struct.mvs_prd, %struct.mvs_prd* %38, i32 1
  store %struct.mvs_prd* %39, %struct.mvs_prd** %12, align 8
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %23

43:                                               ; preds = %23
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
