; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd-pltfrm.c_ufshcd_parse_regulator_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd-pltfrm.c_ufshcd_parse_regulator_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { %struct.ufs_vreg_info, %struct.device* }
%struct.ufs_vreg_info = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"vdd-hba\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vccq\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vccq2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufshcd_parse_regulator_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_parse_regulator_info(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ufs_vreg_info*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %7 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %6, i32 0, i32 1
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %10 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %9, i32 0, i32 0
  store %struct.ufs_vreg_info* %10, %struct.ufs_vreg_info** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.ufs_vreg_info*, %struct.ufs_vreg_info** %5, align 8
  %13 = getelementptr inbounds %struct.ufs_vreg_info, %struct.ufs_vreg_info* %12, i32 0, i32 3
  %14 = call i32 @ufshcd_populate_vreg(%struct.device* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %39

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.ufs_vreg_info*, %struct.ufs_vreg_info** %5, align 8
  %21 = getelementptr inbounds %struct.ufs_vreg_info, %struct.ufs_vreg_info* %20, i32 0, i32 2
  %22 = call i32 @ufshcd_populate_vreg(%struct.device* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %39

26:                                               ; preds = %18
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.ufs_vreg_info*, %struct.ufs_vreg_info** %5, align 8
  %29 = getelementptr inbounds %struct.ufs_vreg_info, %struct.ufs_vreg_info* %28, i32 0, i32 1
  %30 = call i32 @ufshcd_populate_vreg(%struct.device* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %39

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.ufs_vreg_info*, %struct.ufs_vreg_info** %5, align 8
  %37 = getelementptr inbounds %struct.ufs_vreg_info, %struct.ufs_vreg_info* %36, i32 0, i32 0
  %38 = call i32 @ufshcd_populate_vreg(%struct.device* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %33, %25, %17
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @ufshcd_populate_vreg(%struct.device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
