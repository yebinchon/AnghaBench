; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_hwconfig.c_odm_signal_scale_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_hwconfig.c_odm_signal_scale_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.odm_dm_struct*, i32)* @odm_signal_scale_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @odm_signal_scale_mapping(%struct.odm_dm_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.odm_dm_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %6, 51
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 100
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 100, i32* %5, align 4
  br label %87

12:                                               ; preds = %8, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 41
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp sle i32 %16, 50
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 40
  %21 = mul nsw i32 %20, 2
  %22 = add nsw i32 80, %21
  store i32 %22, i32* %5, align 4
  br label %86

23:                                               ; preds = %15, %12
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 31
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 %27, 40
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 30
  %32 = add nsw i32 66, %31
  store i32 %32, i32* %5, align 4
  br label %85

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %4, align 4
  %35 = icmp sge i32 %34, 21
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp sle i32 %37, 30
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 20
  %42 = add nsw i32 54, %41
  store i32 %42, i32* %5, align 4
  br label %84

43:                                               ; preds = %36, %33
  %44 = load i32, i32* %4, align 4
  %45 = icmp sge i32 %44, 10
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = icmp sle i32 %47, 20
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %50, 10
  %52 = mul nsw i32 %51, 2
  %53 = sdiv i32 %52, 3
  %54 = add nsw i32 42, %53
  store i32 %54, i32* %5, align 4
  br label %83

55:                                               ; preds = %46, %43
  %56 = load i32, i32* %4, align 4
  %57 = icmp sge i32 %56, 5
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = icmp sle i32 %59, 9
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = sub nsw i32 %62, 5
  %64 = mul nsw i32 %63, 3
  %65 = sdiv i32 %64, 2
  %66 = add nsw i32 22, %65
  store i32 %66, i32* %5, align 4
  br label %82

67:                                               ; preds = %58, %55
  %68 = load i32, i32* %4, align 4
  %69 = icmp sge i32 %68, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = icmp sle i32 %71, 4
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = sub nsw i32 %74, 1
  %76 = mul nsw i32 %75, 3
  %77 = sdiv i32 %76, 2
  %78 = add nsw i32 6, %77
  store i32 %78, i32* %5, align 4
  br label %81

79:                                               ; preds = %70, %67
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %73
  br label %82

82:                                               ; preds = %81, %61
  br label %83

83:                                               ; preds = %82, %49
  br label %84

84:                                               ; preds = %83, %39
  br label %85

85:                                               ; preds = %84, %29
  br label %86

86:                                               ; preds = %85, %18
  br label %87

87:                                               ; preds = %86, %11
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
