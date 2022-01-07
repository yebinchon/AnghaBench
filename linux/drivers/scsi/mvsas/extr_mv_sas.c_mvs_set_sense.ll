; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_set_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_set_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"Length %d of sense buffer too small to fit sense %x:%x:%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32)* @mvs_set_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_set_sense(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @memset(i32* %13, i32 0, i32 %14)
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %6
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @mv_printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 114, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 3
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %43
  br label %90

51:                                               ; preds = %6
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 14
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @mv_printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 112, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 2
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %8, align 4
  %71 = icmp sgt i32 %70, 7
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  store i32 10, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %8, align 4
  %77 = icmp sgt i32 %76, 12
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 12
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %8, align 4
  %84 = icmp sgt i32 %83, 13
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %12, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 13
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %82
  br label %90

90:                                               ; preds = %89, %50
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mv_printk(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
