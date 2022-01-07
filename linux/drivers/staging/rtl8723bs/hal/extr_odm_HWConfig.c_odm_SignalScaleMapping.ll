; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_HWConfig.c_odm_SignalScaleMapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_HWConfig.c_odm_SignalScaleMapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ODM_ITRF_SDIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @odm_SignalScaleMapping(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ODM_ITRF_SDIO, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %94

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 51
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 100
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 100, i32* %5, align 4
  br label %93

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 41
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %22, 50
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 40
  %27 = mul nsw i32 %26, 2
  %28 = add nsw i32 80, %27
  store i32 %28, i32* %5, align 4
  br label %92

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, 31
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp sle i32 %33, 40
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, 30
  %38 = add nsw i32 66, %37
  store i32 %38, i32* %5, align 4
  br label %91

39:                                               ; preds = %32, %29
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %40, 21
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp sle i32 %43, 30
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %46, 20
  %48 = add nsw i32 54, %47
  store i32 %48, i32* %5, align 4
  br label %90

49:                                               ; preds = %42, %39
  %50 = load i32, i32* %4, align 4
  %51 = icmp sge i32 %50, 10
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = icmp sle i32 %53, 20
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %56, 10
  %58 = mul nsw i32 %57, 2
  %59 = sdiv i32 %58, 3
  %60 = add nsw i32 42, %59
  store i32 %60, i32* %5, align 4
  br label %89

61:                                               ; preds = %52, %49
  %62 = load i32, i32* %4, align 4
  %63 = icmp sge i32 %62, 5
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = icmp sle i32 %65, 9
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %68, 5
  %70 = mul nsw i32 %69, 3
  %71 = sdiv i32 %70, 2
  %72 = add nsw i32 22, %71
  store i32 %72, i32* %5, align 4
  br label %88

73:                                               ; preds = %64, %61
  %74 = load i32, i32* %4, align 4
  %75 = icmp sge i32 %74, 1
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = icmp sle i32 %77, 4
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %4, align 4
  %81 = sub nsw i32 %80, 1
  %82 = mul nsw i32 %81, 3
  %83 = sdiv i32 %82, 2
  %84 = add nsw i32 6, %83
  store i32 %84, i32* %5, align 4
  br label %87

85:                                               ; preds = %76, %73
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %79
  br label %88

88:                                               ; preds = %87, %67
  br label %89

89:                                               ; preds = %88, %55
  br label %90

90:                                               ; preds = %89, %45
  br label %91

91:                                               ; preds = %90, %35
  br label %92

92:                                               ; preds = %91, %24
  br label %93

93:                                               ; preds = %92, %17
  br label %94

94:                                               ; preds = %93, %2
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
