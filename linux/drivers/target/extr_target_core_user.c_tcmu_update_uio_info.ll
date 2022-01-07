; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_update_uio_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_update_uio_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_dev = type { i32, i64*, %struct.uio_info, %struct.TYPE_2__* }
%struct.uio_info = type { i8* }
%struct.TYPE_2__ = type { %struct.tcmu_hba* }
%struct.tcmu_hba = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"tcm-user/%u/%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"tcm-user/%u/%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_dev*)* @tcmu_update_uio_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_update_uio_info(%struct.tcmu_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcmu_dev*, align 8
  %4 = alloca %struct.tcmu_hba*, align 8
  %5 = alloca %struct.uio_info*, align 8
  %6 = alloca i8*, align 8
  store %struct.tcmu_dev* %0, %struct.tcmu_dev** %3, align 8
  %7 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %8 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.tcmu_hba*, %struct.tcmu_hba** %10, align 8
  store %struct.tcmu_hba* %11, %struct.tcmu_hba** %4, align 8
  %12 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %13 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %12, i32 0, i32 2
  store %struct.uio_info* %13, %struct.uio_info** %5, align 8
  %14 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %15 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load %struct.tcmu_hba*, %struct.tcmu_hba** %4, align 8
  %23 = getelementptr inbounds %struct.tcmu_hba, %struct.tcmu_hba* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %26 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %29 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = call i8* (i32, i8*, i32, i32, ...) @kasprintf(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i64* %30)
  store i8* %31, i8** %6, align 8
  br label %41

32:                                               ; preds = %1
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load %struct.tcmu_hba*, %struct.tcmu_hba** %4, align 8
  %35 = getelementptr inbounds %struct.tcmu_hba, %struct.tcmu_hba* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %38 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i8* (i32, i8*, i32, i32, ...) @kasprintf(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39)
  store i8* %40, i8** %6, align 8
  br label %41

41:                                               ; preds = %32, %20
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %55

47:                                               ; preds = %41
  %48 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %49 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @kfree(i8* %50)
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %54 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %47, %44
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i8* @kasprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
