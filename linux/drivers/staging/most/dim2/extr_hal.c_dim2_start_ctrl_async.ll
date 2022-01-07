; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim2_start_ctrl_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim2_start_ctrl_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADT1_PS_BIT = common dso_local global i32 0, align 4
@ADT1_RDY_BIT = common dso_local global i32 0, align 4
@ADT1_CTRL_ASYNC_BD_MASK = common dso_local global i32 0, align 4
@ADT1_BD_SHIFT = common dso_local global i32 0, align 4
@ADT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @dim2_start_ctrl_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dim2_start_ctrl_async(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca [4 x i32], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, 16
  store i32 %13, i32* %9, align 4
  %14 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 16, i1 false)
  %15 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 16, i1 false)
  %16 = load i32, i32* @ADT1_PS_BIT, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %16, %17
  %19 = call i32 @bit_mask(i32 %18)
  %20 = load i32, i32* @ADT1_RDY_BIT, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %20, %21
  %23 = call i32 @bit_mask(i32 %22)
  %24 = or i32 %19, %23
  %25 = load i32, i32* @ADT1_CTRL_ASYNC_BD_MASK, align 4
  %26 = load i32, i32* @ADT1_BD_SHIFT, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %26, %27
  %29 = shl i32 %25, %28
  %30 = or i32 %24, %29
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @ADT1_PS_BIT, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %32, %33
  %35 = shl i32 1, %34
  %36 = load i32, i32* @ADT1_RDY_BIT, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  %39 = shl i32 1, %38
  %40 = or i32 %35, %39
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* @ADT1_BD_SHIFT, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = shl i32 %42, %45
  %47 = or i32 %40, %46
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %51
  store i32 -1, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @ADT, align 4
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %58, %59
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %63 = call i32 @dim2_write_ctr_mask(i32 %60, i32* %61, i32* %62)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bit_mask(i32) #2

declare dso_local i32 @dim2_write_ctr_mask(i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
