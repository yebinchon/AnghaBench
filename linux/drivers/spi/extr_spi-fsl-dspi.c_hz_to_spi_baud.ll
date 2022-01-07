; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_hz_to_spi_baud.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_hz_to_spi_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.hz_to_spi_baud.pbr_tbl = private unnamed_addr constant [4 x i32] [i32 2, i32 3, i32 5, i32 7], align 16
@__const.hz_to_spi_baud.brs = private unnamed_addr constant [16 x i32] [i32 2, i32 4, i32 6, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768], align 16
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"Can not find valid baud rate,speed_hz is %d,clkrate is %ld, we use the max prescaler value.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i64)* @hz_to_spi_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hz_to_spi_baud(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %16 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([4 x i32]* @__const.hz_to_spi_baud.pbr_tbl to i8*), i64 16, i1 false)
  %17 = bitcast [16 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([16 x i32]* @__const.hz_to_spi_baud.brs to i8*), i64 64, i1 false)
  %18 = load i32, i32* @INT_MAX, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %19, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = urem i64 %24, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %29, %4
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %75, %32
  %34 = load i32, i32* %14, align 4
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %33
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %71, %38
  %40 = load i32, i32* %15, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(i32* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %48, %52
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %44
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %6, align 8
  store i8 %64, i8* %65, align 1
  %66 = load i32, i32* %15, align 4
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %5, align 8
  store i8 %67, i8* %68, align 1
  br label %69

69:                                               ; preds = %61, %57
  br label %74

70:                                               ; preds = %44
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  br label %39

74:                                               ; preds = %69, %39
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %33

78:                                               ; preds = %33
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @INT_MAX, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @pr_warn(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %83, i64 %84)
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %87 = call i32 @ARRAY_SIZE(i32* %86)
  %88 = sub nsw i32 %87, 1
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %5, align 8
  store i8 %89, i8* %90, align 1
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %92 = call i32 @ARRAY_SIZE(i32* %91)
  %93 = sub nsw i32 %92, 1
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %6, align 8
  store i8 %94, i8* %95, align 1
  br label %96

96:                                               ; preds = %82, %78
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @pr_warn(i8*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
