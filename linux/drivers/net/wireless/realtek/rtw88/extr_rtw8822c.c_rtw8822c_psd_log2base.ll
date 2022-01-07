; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_psd_log2base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_psd_log2base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.rtw8822c_psd_log2base.table_fraction = private unnamed_addr constant [21 x i32] [i32 0, i32 432, i32 332, i32 274, i32 232, i32 200, i32 174, i32 151, i32 132, i32 115, i32 100, i32 86, i32 74, i32 62, i32 51, i32 42, i32 32, i32 23, i32 15, i32 7, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rtw8822c_psd_log2base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_psd_log2base(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [21 x i32], align 16
  store i32 %0, i32* %3, align 4
  %10 = bitcast [21 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([21 x i32]* @__const.rtw8822c_psd_log2base.table_fraction to i8*), i64 84, i1 false)
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @__fls(i32 %15)
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 %18, 100
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = sdiv i32 %19, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sdiv i32 %23, 5
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds [21 x i32], [21 x i32]* %9, i64 0, i64 0
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %14
  %30 = getelementptr inbounds [21 x i32], [21 x i32]* %9, i64 0, i64 0
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %14
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [21 x i32], [21 x i32]* %9, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 100
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %33, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__fls(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
