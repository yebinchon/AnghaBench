; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_read_iost_itct_cache_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_read_iost_itct_cache_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }

@HISI_SAS_IOST_ITCT_CACHE_DW_SZ = common dso_local global i32 0, align 4
@HISI_SAS_IOST_ITCT_CACHE_NUM = common dso_local global i32 0, align 4
@TAB_RD_TYPE = common dso_local global i32 0, align 4
@TAB_DFX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Issue occur when reading IOST/ITCT cache!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, i32, i32*)* @read_iost_itct_cache_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_iost_itct_cache_v3_hw(%struct.hisi_hba* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @HISI_SAS_IOST_ITCT_CACHE_DW_SZ, align 4
  %12 = load i32, i32* @HISI_SAS_IOST_ITCT_CACHE_NUM, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %8, align 8
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %16 = load i32, i32* @TAB_RD_TYPE, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @hisi_sas_write32(%struct.hisi_hba* %15, i32 %16, i32 %17)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %31, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @HISI_SAS_IOST_ITCT_CACHE_DW_SZ, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %25 = load i32, i32* @TAB_DFX, align 4
  %26 = call i32 @hisi_sas_read32(%struct.hisi_hba* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %34

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %19

34:                                               ; preds = %29, %19
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %62

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %41, 4
  %43 = call i32 @memset(i32* %40, i32 0, i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %46, align 4
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %59, %39
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %53 = load i32, i32* @TAB_DFX, align 4
  %54 = call i32 @hisi_sas_read32(%struct.hisi_hba* %52, i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %47

62:                                               ; preds = %37, %47
  ret void
}

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
