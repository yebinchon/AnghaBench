; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2fw.c_crcimage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2fw.c_crcimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgchunk = type { i32, i32, i32* }
%struct.s3crcrec = type { i32, i32, i32 }

@.str = private unnamed_addr constant [73 x i8] c"Failed to find chunk for crcrec[%d], addr=0x%06x len=%d , aborting crc.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Adding crc @ 0x%06x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgchunk*, i32, %struct.s3crcrec*, i32)* @crcimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crcimage(%struct.imgchunk* %0, i32 %1, %struct.s3crcrec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.imgchunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s3crcrec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.imgchunk* %0, %struct.imgchunk** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.s3crcrec* %2, %struct.s3crcrec** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %119, %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %122

22:                                               ; preds = %18
  %23 = load %struct.s3crcrec*, %struct.s3crcrec** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.s3crcrec, %struct.s3crcrec* %23, i64 %25
  %27 = getelementptr inbounds %struct.s3crcrec, %struct.s3crcrec* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %119

31:                                               ; preds = %22
  %32 = load %struct.s3crcrec*, %struct.s3crcrec** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.s3crcrec, %struct.s3crcrec* %32, i64 %34
  %36 = getelementptr inbounds %struct.s3crcrec, %struct.s3crcrec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %72, %31
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = load %struct.imgchunk*, %struct.imgchunk** %6, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %43, i64 %45
  %47 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %14, align 4
  %49 = load %struct.imgchunk*, %struct.imgchunk** %6, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %49, i64 %51
  %53 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.imgchunk*, %struct.imgchunk** %6, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %55, i64 %57
  %59 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %54, %60
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 %62, 2
  %64 = load i32, i32* %14, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %42
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %75

71:                                               ; preds = %66, %42
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %38

75:                                               ; preds = %70, %38
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp uge i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.s3crcrec*, %struct.s3crcrec** %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.s3crcrec, %struct.s3crcrec* %81, i64 %83
  %85 = getelementptr inbounds %struct.s3crcrec, %struct.s3crcrec* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.s3crcrec*, %struct.s3crcrec** %8, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.s3crcrec, %struct.s3crcrec* %87, i64 %89
  %91 = getelementptr inbounds %struct.s3crcrec, %struct.s3crcrec* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %86, i32 %92)
  store i32 1, i32* %5, align 4
  br label %124

94:                                               ; preds = %75
  %95 = load %struct.s3crcrec*, %struct.s3crcrec** %8, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.s3crcrec, %struct.s3crcrec* %95, i64 %97
  %99 = getelementptr inbounds %struct.s3crcrec, %struct.s3crcrec* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 2
  %102 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sub nsw i32 %105, 2
  store i32 %106, i32* %17, align 4
  %107 = load %struct.imgchunk*, %struct.imgchunk** %6, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %107, i64 %109
  %111 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32* %115, i32** %16, align 8
  %116 = load i32*, i32** %16, align 8
  store i32 222, i32* %116, align 4
  %117 = load i32*, i32** %16, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 192, i32* %118, align 4
  br label %119

119:                                              ; preds = %94, %30
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %18

122:                                              ; preds = %18
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %79
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
