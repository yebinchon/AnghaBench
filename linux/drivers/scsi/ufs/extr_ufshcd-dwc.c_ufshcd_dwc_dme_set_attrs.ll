; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd-dwc.c_ufshcd_dwc_dme_set_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd-dwc.c_ufshcd_dwc_dme_set_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufshcd_dme_attr_val = type { i32, i32, i32 }

@ATTR_SET_NOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufshcd_dwc_dme_set_attrs(%struct.ufs_hba* %0, %struct.ufshcd_dme_attr_val* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ufs_hba*, align 8
  %6 = alloca %struct.ufshcd_dme_attr_val*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %5, align 8
  store %struct.ufshcd_dme_attr_val* %1, %struct.ufshcd_dme_attr_val** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %41, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %16 = load %struct.ufshcd_dme_attr_val*, %struct.ufshcd_dme_attr_val** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %16, i64 %18
  %20 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATTR_SET_NOR, align 4
  %23 = load %struct.ufshcd_dme_attr_val*, %struct.ufshcd_dme_attr_val** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %23, i64 %25
  %27 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ufshcd_dme_attr_val*, %struct.ufshcd_dme_attr_val** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %29, i64 %31
  %33 = getelementptr inbounds %struct.ufshcd_dme_attr_val, %struct.ufshcd_dme_attr_val* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ufshcd_dme_set_attr(%struct.ufs_hba* %15, i32 %21, i32 %22, i32 %28, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %14
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %14
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %10

44:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @ufshcd_dme_set_attr(%struct.ufs_hba*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
