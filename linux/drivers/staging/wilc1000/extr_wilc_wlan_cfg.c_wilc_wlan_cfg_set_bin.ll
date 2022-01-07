; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan_cfg.c_wilc_wlan_cfg_set_bin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan_cfg.c_wilc_wlan_cfg_set_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WILC_MAX_CFG_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32, i64*, i32)* @wilc_wlan_cfg_set_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_wlan_cfg_set_bin(i64* %0, i32 %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %11, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 5
  %18 = load i32, i32* @WILC_MAX_CFG_FRAME_SIZE, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %79

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i64*, i64** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = call i32 @put_unaligned_le16(i32 %22, i64* %26)
  %28 = load i32, i32* %11, align 4
  %29 = load i64*, i64** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = call i32 @put_unaligned_le16(i32 %28, i64* %33)
  %35 = load i64*, i64** %10, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %68

37:                                               ; preds = %21
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = load i64*, i64** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  %46 = load i64*, i64** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @memcpy(i64* %45, i64* %46, i32 %47)
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %64, %40
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i64*, i64** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %55, %56
  %58 = add nsw i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %54, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %13, align 8
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %49

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67, %37, %21
  %69 = load i64, i64* %13, align 8
  %70 = load i64*, i64** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %71, %72
  %74 = add nsw i32 %73, 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %70, i64 %75
  store i64 %69, i64* %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 5
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %68, %20
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @put_unaligned_le16(i32, i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
