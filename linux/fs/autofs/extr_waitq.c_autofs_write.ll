; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_waitq.c_autofs_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_waitq.c_autofs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.autofs_sb_info = type { i32 }
%struct.file = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@SIGPIPE = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.autofs_sb_info*, %struct.file*, i8*, i32)* @autofs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_write(%struct.autofs_sb_info* %0, %struct.file* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.autofs_sb_info*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.autofs_sb_info* %0, %struct.autofs_sb_info** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* @SIGPIPE, align 4
  %18 = call i64 @sigismember(i32* %16, i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %20 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  br label %22

22:                                               ; preds = %35, %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.file*, %struct.file** %6, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = call i32 @__kernel_write(%struct.file* %26, i8* %27, i32 %28, i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %43

35:                                               ; preds = %25
  %36 = load i32, i32* %12, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %22

43:                                               ; preds = %34, %22
  %44 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %45 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @EPIPE, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %43
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* @SIGPIPE, align 4
  %65 = call i32 @sigdelset(i32* %63, i32 %64)
  %66 = call i32 (...) @recalc_sigpending()
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  br label %73

73:                                               ; preds = %54, %51, %43
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %87

77:                                               ; preds = %73
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  br label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi i32 [ %81, %80 ], [ %84, %82 ]
  br label %87

87:                                               ; preds = %85, %76
  %88 = phi i32 [ 0, %76 ], [ %86, %85 ]
  ret i32 %88
}

declare dso_local i64 @sigismember(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__kernel_write(%struct.file*, i8*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @recalc_sigpending(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
