; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_path_adda_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_path_adda_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@bMaskDWord = common dso_local global i32 0, align 4
@IQK_ADDA_REG_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i64*, i32, i32)* @path_adda_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_adda_on(%struct.adapter* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  store i64 198911392, i64* %9, align 8
  %14 = load %struct.adapter*, %struct.adapter** %5, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @bMaskDWord, align 4
  %19 = call i32 @phy_set_bb_reg(%struct.adapter* %14, i64 %17, i32 %18, i64 186328480)
  br label %33

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 81470884, i32 186328484
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %9, align 8
  %26 = load %struct.adapter*, %struct.adapter** %5, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @bMaskDWord, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @phy_set_bb_reg(%struct.adapter* %26, i64 %29, i32 %30, i64 %31)
  br label %33

33:                                               ; preds = %20, %13
  store i64 1, i64* %10, align 8
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @IQK_ADDA_REG_NUM, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.adapter*, %struct.adapter** %5, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @bMaskDWord, align 4
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @phy_set_bb_reg(%struct.adapter* %39, i64 %43, i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %38
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %34

50:                                               ; preds = %34
  ret void
}

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
