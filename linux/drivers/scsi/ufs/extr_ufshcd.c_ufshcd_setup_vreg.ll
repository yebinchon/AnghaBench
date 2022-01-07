; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_setup_vreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_setup_vreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { %struct.ufs_vreg_info, %struct.device* }
%struct.ufs_vreg_info = type { i32, i32, i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i32)* @ufshcd_setup_vreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_setup_vreg(%struct.ufs_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ufs_vreg_info*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %9 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %12 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %11, i32 0, i32 0
  store %struct.ufs_vreg_info* %12, %struct.ufs_vreg_info** %7, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load %struct.ufs_vreg_info*, %struct.ufs_vreg_info** %7, align 8
  %15 = getelementptr inbounds %struct.ufs_vreg_info, %struct.ufs_vreg_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ufshcd_toggle_vreg(%struct.device* %13, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.ufs_vreg_info*, %struct.ufs_vreg_info** %7, align 8
  %25 = getelementptr inbounds %struct.ufs_vreg_info, %struct.ufs_vreg_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ufshcd_toggle_vreg(%struct.device* %23, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %43

32:                                               ; preds = %22
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.ufs_vreg_info*, %struct.ufs_vreg_info** %7, align 8
  %35 = getelementptr inbounds %struct.ufs_vreg_info, %struct.ufs_vreg_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ufshcd_toggle_vreg(%struct.device* %33, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %43

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %41, %31, %21
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load %struct.ufs_vreg_info*, %struct.ufs_vreg_info** %7, align 8
  %49 = getelementptr inbounds %struct.ufs_vreg_info, %struct.ufs_vreg_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ufshcd_toggle_vreg(%struct.device* %47, i32 %50, i32 0)
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = load %struct.ufs_vreg_info*, %struct.ufs_vreg_info** %7, align 8
  %54 = getelementptr inbounds %struct.ufs_vreg_info, %struct.ufs_vreg_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ufshcd_toggle_vreg(%struct.device* %52, i32 %55, i32 0)
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = load %struct.ufs_vreg_info*, %struct.ufs_vreg_info** %7, align 8
  %59 = getelementptr inbounds %struct.ufs_vreg_info, %struct.ufs_vreg_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ufshcd_toggle_vreg(%struct.device* %57, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %46, %43
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @ufshcd_toggle_vreg(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
