; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2_mnp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2_mnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM2_REFERENCE_CLOCK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*)* @pm2_mnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm2_mnp(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 100000, i64* %14, align 8
  %15 = load i8*, i8** %8, align 8
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %7, align 8
  store i8 0, i8* %16, align 1
  %17 = load i8*, i8** %6, align 8
  store i8 0, i8* %17, align 1
  store i8 2, i8* %10, align 1
  br label %18

18:                                               ; preds = %83, %4
  %19 = load i8, i8* %10, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp slt i32 %20, 15
  br i1 %21, label %22, label %86

22:                                               ; preds = %18
  store i8 2, i8* %9, align 1
  br label %23

23:                                               ; preds = %79, %22
  %24 = load i8, i8* %9, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %82

26:                                               ; preds = %23
  %27 = load i8, i8* @PM2_REFERENCE_CLOCK, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* %9, align 1
  %30 = zext i8 %29 to i32
  %31 = mul nsw i32 %28, %30
  %32 = load i8, i8* %10, align 1
  %33 = zext i8 %32 to i32
  %34 = sdiv i32 %31, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sge i32 %35, 150000
  br i1 %36, label %37, label %78

37:                                               ; preds = %26
  %38 = load i32, i32* %12, align 4
  %39 = icmp sle i32 %38, 300000
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  store i8 0, i8* %11, align 1
  br label %41

41:                                               ; preds = %72, %40
  %42 = load i8, i8* %11, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp slt i32 %43, 5
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %50, %51
  br label %57

53:                                               ; preds = %45
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i32 [ %52, %49 ], [ %56, %53 ]
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %14, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i64, i64* %13, align 8
  store i64 %64, i64* %14, align 8
  %65 = load i8, i8* %9, align 1
  %66 = load i8*, i8** %6, align 8
  store i8 %65, i8* %66, align 1
  %67 = load i8, i8* %10, align 1
  %68 = load i8*, i8** %7, align 8
  store i8 %67, i8* %68, align 1
  %69 = load i8, i8* %11, align 1
  %70 = load i8*, i8** %8, align 8
  store i8 %69, i8* %70, align 1
  br label %71

71:                                               ; preds = %63, %57
  br label %72

72:                                               ; preds = %71
  %73 = load i8, i8* %11, align 1
  %74 = add i8 %73, 1
  store i8 %74, i8* %11, align 1
  %75 = load i32, i32* %12, align 4
  %76 = ashr i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %41

77:                                               ; preds = %41
  br label %78

78:                                               ; preds = %77, %37, %26
  br label %79

79:                                               ; preds = %78
  %80 = load i8, i8* %9, align 1
  %81 = add i8 %80, 1
  store i8 %81, i8* %9, align 1
  br label %23

82:                                               ; preds = %23
  br label %83

83:                                               ; preds = %82
  %84 = load i8, i8* %10, align 1
  %85 = add i8 %84, 1
  store i8 %85, i8* %10, align 1
  br label %18

86:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
