; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_wait_for_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_wait_for_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_test = type { i32, %struct.TYPE_2__*, %struct.timespec }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timespec = type { i64 }
%struct.sigaction = type { i32, i64, i32 }

@SIGINT = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@handler = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sigaction error\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Poll exit with errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Iteration count did not finish!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loopback_test*)* @wait_for_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_complete(%struct.loopback_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.loopback_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.sigaction, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.loopback_test* %0, %struct.loopback_test** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.timespec* null, %struct.timespec** %8, align 8
  %12 = call i32 @sigemptyset(i32* %11)
  %13 = call i32 @sigemptyset(i32* %10)
  %14 = load i32, i32* @SIGINT, align 4
  %15 = call i32 @sigaddset(i32* %11, i32 %14)
  %16 = load i32, i32* @SIG_BLOCK, align 4
  %17 = call i32 @sigprocmask(i32 %16, i32* %11, i32* %10)
  %18 = load i32, i32* @handler, align 4
  %19 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %9, i32 0, i32 0
  %22 = call i32 @sigemptyset(i32* %21)
  %23 = load i32, i32* @SIGINT, align 4
  %24 = call i32 @sigaction(i32 %23, %struct.sigaction* %9, i32* null)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %107

29:                                               ; preds = %1
  %30 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %31 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %37 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %36, i32 0, i32 2
  store %struct.timespec* %37, %struct.timespec** %8, align 8
  br label %38

38:                                               ; preds = %35, %29
  br label %39

39:                                               ; preds = %38, %98
  %40 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %41 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %44 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.timespec*, %struct.timespec** %8, align 8
  %47 = call i32 @ppoll(%struct.TYPE_2__* %42, i32 %45, %struct.timespec* %46, i32* %10)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %52 = call i32 @stop_tests(%struct.loopback_test* %51)
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store i32 -1, i32* %2, align 4
  br label %107

56:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %88, %56
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %60 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %57
  %64 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %65 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @EPOLLPRI, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %63
  %76 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %77 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @read(i32 %83, i8* %5, i32 1)
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %75, %63
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %57

91:                                               ; preds = %57
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %94 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %99

98:                                               ; preds = %91
  br label %39

99:                                               ; preds = %97
  %100 = load %struct.loopback_test*, %struct.loopback_test** %3, align 8
  %101 = call i32 @is_complete(%struct.loopback_test* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %107

106:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %103, %50, %26
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ppoll(%struct.TYPE_2__*, i32, %struct.timespec*, i32*) #1

declare dso_local i32 @stop_tests(%struct.loopback_test*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @is_complete(%struct.loopback_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
