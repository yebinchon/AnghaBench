; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_clock_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe.c_qe_clock_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@QE_CLK_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"tsync_pin\00", align 1
@QE_TSYNC_PIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"rsync_pin\00", align 1
@QE_RSYNC_PIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"brg\00", align 1
@QE_BRG1 = common dso_local global i32 0, align 4
@QE_CLK_DUMMY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@QE_CLK1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qe_clock_source(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @strcasecmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @QE_CLK_NONE, align 4
  store i32 %9, i32* %2, align 4
  br label %64

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @QE_TSYNC_PIN, align 4
  store i32 %15, i32* %2, align 4
  br label %64

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @QE_RSYNC_PIN, align 4
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @strncasecmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  %29 = call i32 @simple_strtoul(i8* %28, i32* null, i32 10)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp uge i32 %30, 1
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = icmp ule i32 %33, 16
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* @QE_BRG1, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %37, %38
  store i32 %39, i32* %2, align 4
  br label %64

40:                                               ; preds = %32, %26
  %41 = load i32, i32* @QE_CLK_DUMMY, align 4
  store i32 %41, i32* %2, align 4
  br label %64

42:                                               ; preds = %22
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @strncasecmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = call i32 @simple_strtoul(i8* %48, i32* null, i32 10)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp uge i32 %50, 1
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = icmp ule i32 %53, 24
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* @QE_CLK1, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* %4, align 4
  %59 = add i32 %57, %58
  store i32 %59, i32* %2, align 4
  br label %64

60:                                               ; preds = %52, %46
  %61 = load i32, i32* @QE_CLK_DUMMY, align 4
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %42
  %63 = load i32, i32* @QE_CLK_DUMMY, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %60, %55, %40, %35, %20, %14, %8
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
