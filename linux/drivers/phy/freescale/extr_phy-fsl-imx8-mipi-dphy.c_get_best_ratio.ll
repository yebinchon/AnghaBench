; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_get_best_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_get_best_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.get_best_ratio.n = private unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@__const.get_best_ratio.d = private unnamed_addr constant [2 x i32] [i32 1, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @get_best_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_best_ratio(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast ([2 x i32]* @__const.get_best_ratio.n to i8*), i64 8, i1 false)
  %21 = bitcast [2 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast ([2 x i32]* @__const.get_best_ratio.d to i8*), i64 8, i1 false)
  store i32 1, i32* %15, align 4
  br label %22

22:                                               ; preds = %71, %4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %79

25:                                               ; preds = %22
  %26 = load i32, i32* %15, align 4
  %27 = xor i32 %26, 1
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = xor i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %14, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %15, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %15, align 4
  %44 = xor i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %14, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %15, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %49
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %15, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %25
  %62 = load i32, i32* %15, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61, %25
  %69 = load i32, i32* %15, align 4
  %70 = xor i32 %69, 1
  store i32 %70, i32* %15, align 4
  br label %79

71:                                               ; preds = %61
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %14, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sub nsw i32 %72, %75
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %10, align 4
  br label %22

79:                                               ; preds = %68, %22
  %80 = load i32, i32* %15, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %15, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
