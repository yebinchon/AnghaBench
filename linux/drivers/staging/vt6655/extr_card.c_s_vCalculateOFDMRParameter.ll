; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_s_vCalculateOFDMRParameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_card.c_s_vCalculateOFDMRParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BB_TYPE_11A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32, i8*, i8*)* @s_vCalculateOFDMRParameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_vCalculateOFDMRParameter(i8 zeroext %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  switch i32 %10, label %89 [
    i32 129, label %11
    i32 128, label %22
    i32 135, label %33
    i32 134, label %44
    i32 132, label %55
    i32 131, label %66
    i32 130, label %77
    i32 133, label %88
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @BB_TYPE_11A, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  store i8 -101, i8* %16, align 1
  %17 = load i8*, i8** %8, align 8
  store i8 44, i8* %17, align 1
  br label %21

18:                                               ; preds = %11
  %19 = load i8*, i8** %7, align 8
  store i8 -117, i8* %19, align 1
  %20 = load i8*, i8** %8, align 8
  store i8 50, i8* %20, align 1
  br label %21

21:                                               ; preds = %18, %15
  br label %100

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @BB_TYPE_11A, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  store i8 -97, i8* %27, align 1
  %28 = load i8*, i8** %8, align 8
  store i8 36, i8* %28, align 1
  br label %32

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  store i8 -113, i8* %30, align 1
  %31 = load i8*, i8** %8, align 8
  store i8 42, i8* %31, align 1
  br label %32

32:                                               ; preds = %29, %26
  br label %100

33:                                               ; preds = %4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @BB_TYPE_11A, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  store i8 -102, i8* %38, align 1
  %39 = load i8*, i8** %8, align 8
  store i8 32, i8* %39, align 1
  br label %43

40:                                               ; preds = %33
  %41 = load i8*, i8** %7, align 8
  store i8 -118, i8* %41, align 1
  %42 = load i8*, i8** %8, align 8
  store i8 38, i8* %42, align 1
  br label %43

43:                                               ; preds = %40, %37
  br label %100

44:                                               ; preds = %4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @BB_TYPE_11A, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8*, i8** %7, align 8
  store i8 -98, i8* %49, align 1
  %50 = load i8*, i8** %8, align 8
  store i8 28, i8* %50, align 1
  br label %54

51:                                               ; preds = %44
  %52 = load i8*, i8** %7, align 8
  store i8 -114, i8* %52, align 1
  %53 = load i8*, i8** %8, align 8
  store i8 34, i8* %53, align 1
  br label %54

54:                                               ; preds = %51, %48
  br label %100

55:                                               ; preds = %4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @BB_TYPE_11A, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %7, align 8
  store i8 -99, i8* %60, align 1
  %61 = load i8*, i8** %8, align 8
  store i8 24, i8* %61, align 1
  br label %65

62:                                               ; preds = %55
  %63 = load i8*, i8** %7, align 8
  store i8 -115, i8* %63, align 1
  %64 = load i8*, i8** %8, align 8
  store i8 30, i8* %64, align 1
  br label %65

65:                                               ; preds = %62, %59
  br label %100

66:                                               ; preds = %4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @BB_TYPE_11A, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  store i8 -104, i8* %71, align 1
  %72 = load i8*, i8** %8, align 8
  store i8 24, i8* %72, align 1
  br label %76

73:                                               ; preds = %66
  %74 = load i8*, i8** %7, align 8
  store i8 -120, i8* %74, align 1
  %75 = load i8*, i8** %8, align 8
  store i8 30, i8* %75, align 1
  br label %76

76:                                               ; preds = %73, %70
  br label %100

77:                                               ; preds = %4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @BB_TYPE_11A, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i8*, i8** %7, align 8
  store i8 -100, i8* %82, align 1
  %83 = load i8*, i8** %8, align 8
  store i8 24, i8* %83, align 1
  br label %87

84:                                               ; preds = %77
  %85 = load i8*, i8** %7, align 8
  store i8 -116, i8* %85, align 1
  %86 = load i8*, i8** %8, align 8
  store i8 30, i8* %86, align 1
  br label %87

87:                                               ; preds = %84, %81
  br label %100

88:                                               ; preds = %4
  br label %89

89:                                               ; preds = %4, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @BB_TYPE_11A, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i8*, i8** %7, align 8
  store i8 -103, i8* %94, align 1
  %95 = load i8*, i8** %8, align 8
  store i8 28, i8* %95, align 1
  br label %99

96:                                               ; preds = %89
  %97 = load i8*, i8** %7, align 8
  store i8 -119, i8* %97, align 1
  %98 = load i8*, i8** %8, align 8
  store i8 34, i8* %98, align 1
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %87, %76, %65, %54, %43, %32, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
