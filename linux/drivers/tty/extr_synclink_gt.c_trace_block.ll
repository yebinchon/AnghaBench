; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_trace_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_trace_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s %s data:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*, i8*, i32, i8*)* @trace_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_block(%struct.slgt_info* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.slgt_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %12 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %14)
  br label %16

16:                                               ; preds = %86, %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %95

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 16
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 16, %22 ], [ %24, %23 ]
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %39, %25
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %27

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %48, %42
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 17
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %43

51:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %83, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %52
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sge i32 %62, 32
  br i1 %63, label %64, label %80

64:                                               ; preds = %56
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 126
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %82

80:                                               ; preds = %64, %56
  %81 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %72
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %52

86:                                               ; preds = %52
  %87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* %10, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %16

95:                                               ; preds = %16
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
