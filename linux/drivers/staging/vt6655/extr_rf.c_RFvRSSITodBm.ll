; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rf.c_RFvRSSITodBm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rf.c_RFvRSSITodBm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@__const.RFvRSSITodBm.abyAIROHARF = private unnamed_addr constant [4 x i8] c"\00\12\00(", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RFvRSSITodBm(%struct.vnt_private* %0, i8 zeroext %1, i64* %2) #0 {
  %4 = alloca %struct.vnt_private*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i8], align 1
  store %struct.vnt_private* %0, %struct.vnt_private** %4, align 8
  store i8 %1, i8* %5, align 1
  store i64* %2, i64** %6, align 8
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 192
  %14 = ashr i32 %13, 6
  %15 = and i32 %14, 3
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %7, align 1
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 63
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %21 = bitcast [4 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.RFvRSSITodBm.abyAIROHARF, i32 0, i32 0), i64 4, i1 false)
  %22 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %23 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %31 [
    i32 130, label %25
    i32 128, label %25
    i32 129, label %25
  ]

25:                                               ; preds = %3, %3, %3
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  store i64 %30, i64* %9, align 8
  br label %32

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = mul nsw i64 %34, 2
  %36 = add nsw i64 %33, %35
  %37 = mul nsw i64 -1, %36
  %38 = load i64*, i64** %6, align 8
  store i64 %37, i64* %38, align 8
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
