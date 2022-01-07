; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_alloc_mem_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_alloc_mem_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_res = type { i32, i32, i32, i8*, i32 }
%struct.mvumi_hba = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to allocate memory for resource manager.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to allocate memory,size = %d.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"unable to allocate consistent mem,size = %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unknown resource type %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mvumi_res* (%struct.mvumi_hba*, i32, i32)* @mvumi_alloc_mem_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvumi_res* @mvumi_alloc_mem_resource(%struct.mvumi_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mvumi_res*, align 8
  %5 = alloca %struct.mvumi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvumi_res*, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call i8* @kzalloc(i32 32, i32 %9)
  %11 = bitcast i8* %10 to %struct.mvumi_res*
  store %struct.mvumi_res* %11, %struct.mvumi_res** %8, align 8
  %12 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  %13 = icmp ne %struct.mvumi_res* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %16 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store %struct.mvumi_res* null, %struct.mvumi_res** %4, align 8
  br label %95

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %70 [
    i32 129, label %22
    i32 128, label %42
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call i8* @kzalloc(i32 %23, i32 %24)
  %26 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  %27 = getelementptr inbounds %struct.mvumi_res, %struct.mvumi_res* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  %29 = getelementptr inbounds %struct.mvumi_res, %struct.mvumi_res* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %22
  %33 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %34 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  %40 = call i32 @kfree(%struct.mvumi_res* %39)
  store %struct.mvumi_res* null, %struct.mvumi_res** %4, align 8
  br label %95

41:                                               ; preds = %22
  br label %79

42:                                               ; preds = %20
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @round_up(i32 %43, i32 8)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %46 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  %51 = getelementptr inbounds %struct.mvumi_res, %struct.mvumi_res* %50, i32 0, i32 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @dma_alloc_coherent(i32* %48, i32 %49, i32* %51, i32 %52)
  %54 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  %55 = getelementptr inbounds %struct.mvumi_res, %struct.mvumi_res* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  %57 = getelementptr inbounds %struct.mvumi_res, %struct.mvumi_res* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %42
  %61 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %62 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  %68 = call i32 @kfree(%struct.mvumi_res* %67)
  store %struct.mvumi_res* null, %struct.mvumi_res** %4, align 8
  br label %95

69:                                               ; preds = %42
  br label %79

70:                                               ; preds = %20
  %71 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %72 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  %78 = call i32 @kfree(%struct.mvumi_res* %77)
  store %struct.mvumi_res* null, %struct.mvumi_res** %4, align 8
  br label %95

79:                                               ; preds = %69, %41
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  %82 = getelementptr inbounds %struct.mvumi_res, %struct.mvumi_res* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  %85 = getelementptr inbounds %struct.mvumi_res, %struct.mvumi_res* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  %87 = getelementptr inbounds %struct.mvumi_res, %struct.mvumi_res* %86, i32 0, i32 2
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  %89 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  %90 = getelementptr inbounds %struct.mvumi_res, %struct.mvumi_res* %89, i32 0, i32 2
  %91 = load %struct.mvumi_hba*, %struct.mvumi_hba** %5, align 8
  %92 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %91, i32 0, i32 0
  %93 = call i32 @list_add_tail(i32* %90, i32* %92)
  %94 = load %struct.mvumi_res*, %struct.mvumi_res** %8, align 8
  store %struct.mvumi_res* %94, %struct.mvumi_res** %4, align 8
  br label %95

95:                                               ; preds = %79, %70, %60, %32, %14
  %96 = load %struct.mvumi_res*, %struct.mvumi_res** %4, align 8
  ret %struct.mvumi_res* %96
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @kfree(%struct.mvumi_res*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
