; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_map_desc_id_to_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_map_desc_id_to_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@QUERY_DESC_MAX_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufshcd_map_desc_id_to_length(%struct.ufs_hba* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ufs_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %56 [
    i32 136, label %9
    i32 132, label %15
    i32 135, label %21
    i32 137, label %27
    i32 128, label %33
    i32 133, label %39
    i32 129, label %45
    i32 134, label %48
    i32 131, label %54
    i32 130, label %54
  ]

9:                                                ; preds = %3
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %11 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  br label %60

15:                                               ; preds = %3
  %16 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %17 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %60

21:                                               ; preds = %3
  %22 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %23 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %60

27:                                               ; preds = %3
  %28 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %29 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %60

33:                                               ; preds = %3
  %34 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %35 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %60

39:                                               ; preds = %3
  %40 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %41 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %60

45:                                               ; preds = %3
  %46 = load i32, i32* @QUERY_DESC_MAX_SIZE, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %60

48:                                               ; preds = %3
  %49 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %50 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  br label %60

54:                                               ; preds = %3, %3
  %55 = load i32*, i32** %7, align 8
  store i32 0, i32* %55, align 4
  br label %60

56:                                               ; preds = %3
  %57 = load i32*, i32** %7, align 8
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %61

60:                                               ; preds = %54, %48, %45, %39, %33, %27, %21, %15, %9
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
