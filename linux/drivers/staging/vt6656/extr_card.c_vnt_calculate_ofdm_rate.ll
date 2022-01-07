; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_calculate_ofdm_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_calculate_ofdm_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BB_TYPE_11A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @vnt_calculate_ofdm_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnt_calculate_ofdm_rate(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %88 [
    i32 129, label %10
    i32 128, label %21
    i32 135, label %32
    i32 134, label %43
    i32 132, label %54
    i32 131, label %65
    i32 130, label %76
    i32 133, label %87
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @BB_TYPE_11A, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32*, i32** %7, align 8
  store i32 155, i32* %15, align 4
  %16 = load i32*, i32** %8, align 8
  store i32 24, i32* %16, align 4
  br label %20

17:                                               ; preds = %10
  %18 = load i32*, i32** %7, align 8
  store i32 139, i32* %18, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 30, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %14
  br label %99

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @BB_TYPE_11A, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  store i32 159, i32* %26, align 4
  %27 = load i32*, i32** %8, align 8
  store i32 16, i32* %27, align 4
  br label %31

28:                                               ; preds = %21
  %29 = load i32*, i32** %7, align 8
  store i32 143, i32* %29, align 4
  %30 = load i32*, i32** %8, align 8
  store i32 22, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %99

32:                                               ; preds = %4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BB_TYPE_11A, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  store i32 154, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 12, i32* %38, align 4
  br label %42

39:                                               ; preds = %32
  %40 = load i32*, i32** %7, align 8
  store i32 138, i32* %40, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 18, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  br label %99

43:                                               ; preds = %4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @BB_TYPE_11A, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  store i32 158, i32* %48, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 8, i32* %49, align 4
  br label %53

50:                                               ; preds = %43
  %51 = load i32*, i32** %7, align 8
  store i32 142, i32* %51, align 4
  %52 = load i32*, i32** %8, align 8
  store i32 14, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  br label %99

54:                                               ; preds = %4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @BB_TYPE_11A, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  store i32 157, i32* %59, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 4, i32* %60, align 4
  br label %64

61:                                               ; preds = %54
  %62 = load i32*, i32** %7, align 8
  store i32 141, i32* %62, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 10, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %99

65:                                               ; preds = %4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @BB_TYPE_11A, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32*, i32** %7, align 8
  store i32 152, i32* %70, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 4, i32* %71, align 4
  br label %75

72:                                               ; preds = %65
  %73 = load i32*, i32** %7, align 8
  store i32 136, i32* %73, align 4
  %74 = load i32*, i32** %8, align 8
  store i32 10, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  br label %99

76:                                               ; preds = %4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @BB_TYPE_11A, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32*, i32** %7, align 8
  store i32 156, i32* %81, align 4
  %82 = load i32*, i32** %8, align 8
  store i32 4, i32* %82, align 4
  br label %86

83:                                               ; preds = %76
  %84 = load i32*, i32** %7, align 8
  store i32 140, i32* %84, align 4
  %85 = load i32*, i32** %8, align 8
  store i32 10, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %80
  br label %99

87:                                               ; preds = %4
  br label %88

88:                                               ; preds = %4, %87
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @BB_TYPE_11A, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32*, i32** %7, align 8
  store i32 153, i32* %93, align 4
  %94 = load i32*, i32** %8, align 8
  store i32 8, i32* %94, align 4
  br label %98

95:                                               ; preds = %88
  %96 = load i32*, i32** %7, align 8
  store i32 137, i32* %96, align 4
  %97 = load i32*, i32** %8, align 8
  store i32 14, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %86, %75, %64, %53, %42, %31, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
