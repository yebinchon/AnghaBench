; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_set_ampdu_factor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_set_ampdu_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@__const.rtl8xxxu_set_ampdu_factor.vals = private unnamed_addr constant [4 x i32] [i32 65, i32 168, i32 114, i32 185], align 16
@REG_AGGLEN_LMT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*, i32)* @rtl8xxxu_set_ampdu_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8xxxu_set_ampdu_factor(%struct.rtl8xxxu_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8xxxu_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i32]* @__const.rtl8xxxu_set_ampdu_factor.vals to i8*), i64 16, i1 false)
  store i32 15, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 2
  %11 = shl i32 1, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %15, %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %72, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %75

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 240
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 %27, 4
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 15
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 4
  %38 = or i32 %35, %37
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %40
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %30, %21
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 15
  %48 = load i32, i32* %4, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 240
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %59
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %50, %42
  %62 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %63 = load i64, i64* @REG_AGGLEN_LMT, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %62, i64 %66, i32 %70)
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %18

75:                                               ; preds = %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
