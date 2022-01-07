; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rf.c_vnt_rf_rssi_to_dbm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rf.c_vnt_rf_rssi_to_dbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }

@__const.vnt_rf_rssi_to_dbm.airoharf = private unnamed_addr constant [4 x i32] [i32 0, i32 18, i32 0, i32 40], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnt_rf_rssi_to_dbm(%struct.vnt_private* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.vnt_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i32], align 16
  store %struct.vnt_private* %0, %struct.vnt_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 192
  %13 = ashr i32 %12, 6
  %14 = and i32 %13, 3
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 63
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %18 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([4 x i32]* @__const.vnt_rf_rssi_to_dbm.airoharf to i8*), i64 16, i1 false)
  %19 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %20 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %28 [
    i32 132, label %22
    i32 131, label %22
    i32 133, label %22
    i32 130, label %22
    i32 129, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %3, %3, %3, %3, %3, %3
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = mul nsw i64 %31, 2
  %33 = add nsw i64 %30, %32
  %34 = mul nsw i64 -1, %33
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
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
