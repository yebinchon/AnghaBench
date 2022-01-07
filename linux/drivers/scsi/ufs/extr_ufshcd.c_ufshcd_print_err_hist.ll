; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_print_err_hist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_print_err_hist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufs_err_reg_hist = type { i32, i64*, i32* }

@UFS_ERR_REG_HIST_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s[%d] = 0x%x at %lld us\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"No record of %s errors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_hba*, %struct.ufs_err_reg_hist*, i8*)* @ufshcd_print_err_hist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_print_err_hist(%struct.ufs_hba* %0, %struct.ufs_err_reg_hist* %1, i8* %2) #0 {
  %4 = alloca %struct.ufs_hba*, align 8
  %5 = alloca %struct.ufs_err_reg_hist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %4, align 8
  store %struct.ufs_err_reg_hist* %1, %struct.ufs_err_reg_hist** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %53, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @UFS_ERR_REG_HIST_LENGTH, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ufs_err_reg_hist*, %struct.ufs_err_reg_hist** %5, align 8
  %17 = getelementptr inbounds %struct.ufs_err_reg_hist, %struct.ufs_err_reg_hist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %15, %18
  %20 = load i32, i32* @UFS_ERR_REG_HIST_LENGTH, align 4
  %21 = srem i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ufs_err_reg_hist*, %struct.ufs_err_reg_hist** %5, align 8
  %23 = getelementptr inbounds %struct.ufs_err_reg_hist, %struct.ufs_err_reg_hist* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  br label %53

31:                                               ; preds = %14
  %32 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %33 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.ufs_err_reg_hist*, %struct.ufs_err_reg_hist** %5, align 8
  %38 = getelementptr inbounds %struct.ufs_err_reg_hist, %struct.ufs_err_reg_hist* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ufs_err_reg_hist*, %struct.ufs_err_reg_hist** %5, align 8
  %45 = getelementptr inbounds %struct.ufs_err_reg_hist, %struct.ufs_err_reg_hist* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ktime_to_us(i32 %50)
  %52 = call i32 (i32, i8*, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36, i64 %43, i32 %51)
  store i32 1, i32* %8, align 4
  br label %53

53:                                               ; preds = %31, %30
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %10

56:                                               ; preds = %10
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %61 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i32, i8*, i8*, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %59, %56
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i8*, ...) #1

declare dso_local i32 @ktime_to_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
