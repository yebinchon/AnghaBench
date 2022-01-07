; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_ns_delay_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_ns_delay_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@__const.ns_delay_scale.pscale_tbl = private unnamed_addr constant [4 x i32] [i32 1, i32 3, i32 5, i32 7], align 16
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@SPI_CTAR_SCALE_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"Cannot find correct scale values for %dns delay at clkrate %ld, using max prescaler value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i64)* @ns_delay_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns_delay_scale(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %16 = load i32, i32* @INT_MAX, align 4
  store i32 %16, i32* %11, align 4
  %17 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([4 x i32]* @__const.ns_delay_scale.pscale_tbl to i8*), i64 16, i1 false)
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %8, align 8
  %21 = mul i64 %19, %20
  %22 = load i32, i32* @NSEC_PER_SEC, align 4
  %23 = call i32 @div_u64_rem(i64 %21, i32 %22, i64* %13)
  store i32 %23, i32* %9, align 4
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %4
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %69, %29
  %31 = load i32, i32* %14, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @SPI_CTAR_SCALE_BITS, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = shl i32 2, %45
  %47 = mul nsw i32 %44, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %40
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %14, align 4
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %5, align 8
  store i8 %58, i8* %59, align 1
  %60 = load i32, i32* %15, align 4
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %6, align 8
  store i8 %61, i8* %62, align 1
  br label %63

63:                                               ; preds = %55, %51
  br label %68

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %36

68:                                               ; preds = %63, %36
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %30

72:                                               ; preds = %30
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @INT_MAX, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @pr_warn(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %77, i64 %78)
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %81 = call i32 @ARRAY_SIZE(i32* %80)
  %82 = sub nsw i32 %81, 1
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %5, align 8
  store i8 %83, i8* %84, align 1
  %85 = load i32, i32* @SPI_CTAR_SCALE_BITS, align 4
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %6, align 8
  store i8 %86, i8* %87, align 1
  br label %88

88:                                               ; preds = %76, %72
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @div_u64_rem(i64, i32, i64*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @pr_warn(i8*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
