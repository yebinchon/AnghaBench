; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_signal_scale_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_signal_scale_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_signal_scale_mapping(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 51
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 %7, 100
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 100, i32* %3, align 4
  br label %85

10:                                               ; preds = %6, %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp sge i32 %11, 41
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = icmp sle i32 %14, 50
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 %17, 40
  %19 = mul nsw i32 %18, 2
  %20 = add nsw i32 80, %19
  store i32 %20, i32* %3, align 4
  br label %84

21:                                               ; preds = %13, %10
  %22 = load i32, i32* %2, align 4
  %23 = icmp sge i32 %22, 31
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = icmp sle i32 %25, 40
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %2, align 4
  %29 = sub nsw i32 %28, 30
  %30 = add nsw i32 66, %29
  store i32 %30, i32* %3, align 4
  br label %83

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %2, align 4
  %33 = icmp sge i32 %32, 21
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  %36 = icmp sle i32 %35, 30
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = sub nsw i32 %38, 20
  %40 = add nsw i32 54, %39
  store i32 %40, i32* %3, align 4
  br label %82

41:                                               ; preds = %34, %31
  %42 = load i32, i32* %2, align 4
  %43 = icmp sge i32 %42, 10
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  %46 = icmp sle i32 %45, 20
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %2, align 4
  %49 = sub nsw i32 %48, 10
  %50 = mul nsw i32 %49, 2
  %51 = sdiv i32 %50, 3
  %52 = add nsw i32 42, %51
  store i32 %52, i32* %3, align 4
  br label %81

53:                                               ; preds = %44, %41
  %54 = load i32, i32* %2, align 4
  %55 = icmp sge i32 %54, 5
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %2, align 4
  %58 = icmp sle i32 %57, 9
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* %2, align 4
  %61 = sub nsw i32 %60, 5
  %62 = mul nsw i32 %61, 3
  %63 = sdiv i32 %62, 2
  %64 = add nsw i32 22, %63
  store i32 %64, i32* %3, align 4
  br label %80

65:                                               ; preds = %56, %53
  %66 = load i32, i32* %2, align 4
  %67 = icmp sge i32 %66, 1
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, i32* %2, align 4
  %70 = icmp sle i32 %69, 4
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %2, align 4
  %73 = sub nsw i32 %72, 1
  %74 = mul nsw i32 %73, 3
  %75 = sdiv i32 %74, 2
  %76 = add nsw i32 6, %75
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %68, %65
  %78 = load i32, i32* %2, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %71
  br label %80

80:                                               ; preds = %79, %59
  br label %81

81:                                               ; preds = %80, %47
  br label %82

82:                                               ; preds = %81, %37
  br label %83

83:                                               ; preds = %82, %27
  br label %84

84:                                               ; preds = %83, %16
  br label %85

85:                                               ; preds = %84, %9
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
