; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_read_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_read_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*, i32*, i64, i64, i32)* @read_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_values(%struct.zd_chip* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zd_chip*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.zd_chip*, %struct.zd_chip** %7, align 8
  %16 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %15, i32 0, i32 0
  %17 = call i32 @mutex_is_locked(i32* %16)
  %18 = call i32 @ZD_ASSERT(i32 %17)
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %40, %5
  %20 = load %struct.zd_chip*, %struct.zd_chip** %7, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sdiv i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i32 @zd_ioread32_locked(%struct.zd_chip* %20, i32* %14, i64 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %88

31:                                               ; preds = %19
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %14, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = add nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %9, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %31
  %41 = load i32, i32* %14, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* %14, align 4
  %48 = ashr i32 %47, 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %14, align 4
  %55 = ashr i32 %54, 16
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load i32, i32* %14, align 4
  %62 = ashr i32 %61, 24
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %62, i32* %67, align 4
  br label %19

68:                                               ; preds = %31
  br label %69

69:                                               ; preds = %84, %68
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %9, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %13, align 4
  %77 = srem i32 %76, 3
  %78 = mul nsw i32 8, %77
  %79 = ashr i32 %75, %78
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %69

87:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %29
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @zd_ioread32_locked(%struct.zd_chip*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
