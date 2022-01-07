; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_calc_out_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_calc_out_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5933_state = type { i32*, i32 }

@__const.ad5933_calc_out_ranges.normalized_3v3 = private unnamed_addr constant [4 x i32] [i32 1980, i32 198, i32 383, i32 970], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad5933_state*)* @ad5933_calc_out_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad5933_calc_out_ranges(%struct.ad5933_state* %0) #0 {
  %2 = alloca %struct.ad5933_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  store %struct.ad5933_state* %0, %struct.ad5933_state** %2, align 8
  %5 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([4 x i32]* @__const.ad5933_calc_out_ranges.normalized_3v3 to i8*), i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %28

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ad5933_state*, %struct.ad5933_state** %2, align 8
  %15 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = mul i32 %13, %16
  %18 = udiv i32 %17, 3300
  %19 = load %struct.ad5933_state*, %struct.ad5933_state** %2, align 8
  %20 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %18, i32* %24, align 4
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %6

28:                                               ; preds = %6
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
