; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_memory_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_memory_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Command Descriptor Memory allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Transfer Descriptor Memory allocation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Task Management Descriptor Memory allocation failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"LRB Memory allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*)* @ufshcd_memory_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_memory_alloc(%struct.ufs_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ufs_hba*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %3, align 8
  %7 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %8 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  store i64 %11, i64* %6, align 8
  %12 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %13 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %17 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %16, i32 0, i32 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @dmam_alloc_coherent(i32 %14, i64 %15, i32* %17, i32 %18)
  %20 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %21 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %20, i32 0, i32 9
  store i8* %19, i8** %21, align 8
  %22 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %23 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %22, i32 0, i32 9
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %28 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26, %1
  %36 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %37 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %129

40:                                               ; preds = %26
  %41 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %42 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  store i64 %45, i64* %5, align 8
  %46 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %47 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %51 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %50, i32 0, i32 2
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @dmam_alloc_coherent(i32 %48, i64 %49, i32* %51, i32 %52)
  %54 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %55 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %54, i32 0, i32 8
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %57 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %56, i32 0, i32 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %40
  %61 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %62 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = sub nsw i32 %64, 1
  %66 = and i32 %63, %65
  %67 = call i64 @WARN_ON(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %60, %40
  %70 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %71 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %129

74:                                               ; preds = %60
  %75 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %76 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  store i64 %79, i64* %4, align 8
  %80 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %81 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %4, align 8
  %84 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %85 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %84, i32 0, i32 4
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @dmam_alloc_coherent(i32 %82, i64 %83, i32* %85, i32 %86)
  %88 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %89 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %88, i32 0, i32 7
  store i8* %87, i8** %89, align 8
  %90 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %91 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %90, i32 0, i32 7
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %74
  %95 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %96 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = sub nsw i32 %98, 1
  %100 = and i32 %97, %99
  %101 = call i64 @WARN_ON(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %94, %74
  %104 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %105 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %129

108:                                              ; preds = %94
  %109 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %110 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %113 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i32 @devm_kcalloc(i32 %111, i32 %114, i32 4, i32 %115)
  %117 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %118 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  %119 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %120 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %108
  %124 = load %struct.ufs_hba*, %struct.ufs_hba** %3, align 8
  %125 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @dev_err(i32 %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %129

128:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %132

129:                                              ; preds = %123, %103, %69, %35
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %129, %128
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i8* @dmam_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @devm_kcalloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
