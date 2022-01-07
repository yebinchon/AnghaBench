; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_set_dev_ref_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_set_dev_ref_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ufs_hba = type { i64, i32 }

@UPIU_QUERY_OPCODE_READ_ATTR = common dso_local global i32 0, align 4
@QUERY_ATTR_IDN_REF_CLK_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed reading bRefClkFreq. err = %d\0A\00", align 1
@UPIU_QUERY_OPCODE_WRITE_ATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"bRefClkFreq setting to %lu Hz failed\0A\00", align 1
@ufs_ref_clk_freqs = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"bRefClkFreq setting to %lu Hz succeeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufshcd_set_dev_ref_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_set_dev_ref_clk(%struct.ufs_hba* %0) #0 {
  %2 = alloca %struct.ufs_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %2, align 8
  %6 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %7 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %10 = load i32, i32* @UPIU_QUERY_OPCODE_READ_ATTR, align 4
  %11 = load i32, i32* @QUERY_ATTR_IDN_REF_CLK_FREQ, align 4
  %12 = call i32 @ufshcd_query_attr_retry(%struct.ufs_hba* %9, i32 %10, i32 %11, i32 0, i32 0, i64* %4)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %17 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %53

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %53

26:                                               ; preds = %21
  %27 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %28 = load i32, i32* @UPIU_QUERY_OPCODE_WRITE_ATTR, align 4
  %29 = load i32, i32* @QUERY_ATTR_IDN_REF_CLK_FREQ, align 4
  %30 = call i32 @ufshcd_query_attr_retry(%struct.ufs_hba* %27, i32 %28, i32 %29, i32 0, i32 0, i64* %5)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %35 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ufs_ref_clk_freqs, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %53

43:                                               ; preds = %26
  %44 = load %struct.ufs_hba*, %struct.ufs_hba** %2, align 8
  %45 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ufs_ref_clk_freqs, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %43, %33, %25, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ufshcd_query_attr_retry(%struct.ufs_hba*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
