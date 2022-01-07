; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_eval_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_eval_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEADS = common dso_local global i32 0, align 4
@SECS = common dso_local global i32 0, align 4
@MAXCYLS = common dso_local global i32 0, align 4
@MEDHEADS = common dso_local global i32 0, align 4
@MEDSECS = common dso_local global i32 0, align 4
@BIGHEADS = common dso_local global i32 0, align 4
@BIGSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*)* @gdth_eval_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdth_eval_mapping(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @HEADS, align 4
  %11 = sdiv i32 %9, %10
  %12 = load i32, i32* @SECS, align 4
  %13 = sdiv i32 %11, %12
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAXCYLS, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* @HEADS, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @SECS, align 4
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  br label %52

24:                                               ; preds = %4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MEDHEADS, align 4
  %27 = sdiv i32 %25, %26
  %28 = load i32, i32* @MEDSECS, align 4
  %29 = sdiv i32 %27, %28
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MAXCYLS, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load i32, i32* @MEDHEADS, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @MEDSECS, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  br label %51

40:                                               ; preds = %24
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @BIGHEADS, align 4
  %43 = sdiv i32 %41, %42
  %44 = load i32, i32* @BIGSECS, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @BIGHEADS, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @BIGSECS, align 4
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %40, %35
  br label %52

52:                                               ; preds = %51, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
