; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_copy_ucode_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_copy_ucode_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_sglist = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ipr_trace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_sglist*, i32*, i32)* @ipr_copy_ucode_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_copy_ucode_buffer(%struct.ipr_sglist* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipr_sglist*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.page*, align 8
  store %struct.ipr_sglist* %0, %struct.ipr_sglist** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %17 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 1, %18
  %20 = mul nsw i32 %15, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %22 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %21, i32 0, i32 2
  %23 = load %struct.scatterlist*, %struct.scatterlist** %22, align 8
  store %struct.scatterlist* %23, %struct.scatterlist** %11, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %50, %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sdiv i32 %26, %27
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %32 = call %struct.page* @sg_page(%struct.scatterlist* %31)
  store %struct.page* %32, %struct.page** %13, align 8
  %33 = load %struct.page*, %struct.page** %13, align 8
  %34 = call i8* @kmap(%struct.page* %33)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @memcpy(i8* %35, i32* %36, i32 %37)
  %39 = load %struct.page*, %struct.page** %13, align 8
  %40 = call i32 @kunmap(%struct.page* %39)
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %43 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load i32, i32* @ipr_trace, align 4
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %87

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  %53 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %54 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %53)
  store %struct.scatterlist* %54, %struct.scatterlist** %11, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %6, align 8
  br label %24

59:                                               ; preds = %24
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = srem i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %66 = call %struct.page* @sg_page(%struct.scatterlist* %65)
  store %struct.page* %66, %struct.page** %14, align 8
  %67 = load %struct.page*, %struct.page** %14, align 8
  %68 = call i8* @kmap(%struct.page* %67)
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = srem i32 %71, %72
  %74 = call i32 @memcpy(i8* %69, i32* %70, i32 %73)
  %75 = load %struct.page*, %struct.page** %14, align 8
  %76 = call i32 @kunmap(%struct.page* %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = srem i32 %77, %78
  %80 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %81 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %64, %59
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %85 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %46
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
