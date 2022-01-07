; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2v_mnp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2v_mnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM2_REFERENCE_CLOCK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*)* @pm2v_mnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm2v_mnp(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 1000, i32* %13, align 4
  %14 = load i8*, i8** %8, align 8
  store i8 0, i8* %14, align 1
  %15 = load i8*, i8** %7, align 8
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %6, align 8
  store i8 0, i8* %16, align 1
  store i8 1, i8* %9, align 1
  br label %17

17:                                               ; preds = %88, %4
  %18 = load i8, i8* %9, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp slt i32 %19, 128
  br i1 %20, label %21, label %91

21:                                               ; preds = %17
  %22 = load i8, i8* %9, align 1
  %23 = zext i8 %22 to i32
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 %24, 1
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %10, align 1
  br label %27

27:                                               ; preds = %84, %21
  %28 = load i8, i8* %10, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %27
  store i8 0, i8* %11, align 1
  br label %31

31:                                               ; preds = %80, %30
  %32 = load i8, i8* %11, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %83

35:                                               ; preds = %31
  %36 = load i8, i8* @PM2_REFERENCE_CLOCK, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %11, align 1
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %39, 1
  %41 = ashr i32 %37, %40
  %42 = load i8, i8* %10, align 1
  %43 = zext i8 %42 to i32
  %44 = mul nsw i32 %41, %43
  %45 = load i8, i8* %9, align 1
  %46 = zext i8 %45 to i32
  %47 = sdiv i32 %44, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = sub nsw i32 %49, %50
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %35
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %64, %65
  br label %71

67:                                               ; preds = %59
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sub nsw i32 %68, %69
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %66, %63 ], [ %70, %67 ]
  store i32 %72, i32* %13, align 4
  %73 = load i8, i8* %9, align 1
  %74 = load i8*, i8** %6, align 8
  store i8 %73, i8* %74, align 1
  %75 = load i8, i8* %10, align 1
  %76 = load i8*, i8** %7, align 8
  store i8 %75, i8* %76, align 1
  %77 = load i8, i8* %11, align 1
  %78 = load i8*, i8** %8, align 8
  store i8 %77, i8* %78, align 1
  br label %79

79:                                               ; preds = %71, %53, %35
  br label %80

80:                                               ; preds = %79
  %81 = load i8, i8* %11, align 1
  %82 = add i8 %81, 1
  store i8 %82, i8* %11, align 1
  br label %31

83:                                               ; preds = %31
  br label %84

84:                                               ; preds = %83
  %85 = load i8, i8* %10, align 1
  %86 = add i8 %85, 1
  store i8 %86, i8* %10, align 1
  br label %27

87:                                               ; preds = %27
  br label %88

88:                                               ; preds = %87
  %89 = load i8, i8* %9, align 1
  %90 = add i8 %89, 1
  store i8 %90, i8* %9, align 1
  br label %17

91:                                               ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
