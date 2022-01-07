; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_virt_to_scatterlist.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_crypto.c_virt_to_scatterlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virt_to_scatterlist(i8* %0, i32 %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @sg_init_table(%struct.scatterlist* %14, i32 %15)
  br label %17

17:                                               ; preds = %69, %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %72

26:                                               ; preds = %24
  %27 = load i8*, i8** %6, align 8
  %28 = call %struct.page* @virt_to_page(i8* %27)
  store %struct.page* %28, %struct.page** %11, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @offset_in_page(i8* %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i64 %33
  %35 = load %struct.page*, %struct.page** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @sg_set_page(%struct.scatterlist* %34, %struct.page* %35, i32 0, i32 %36)
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %26
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %46, i64 %48
  %50 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr i8, i8* %52, i64 %53
  store i8* %54, i8** %6, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %69

58:                                               ; preds = %26
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %60, i64 %62
  %64 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr i8, i8* %66, i64 %67
  store i8* %68, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %58, %44
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %17

72:                                               ; preds = %24
  %73 = load i32, i32* %7, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %80

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
