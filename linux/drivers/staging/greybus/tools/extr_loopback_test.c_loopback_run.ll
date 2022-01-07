; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_loopback_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/tools/extr_loopback_test.c_loopback_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.loopback_test = type { i8*, i32 }

@dict = common dso_local global %struct.TYPE_2__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid test %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Error running test\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loopback_run(%struct.loopback_test* %0) #0 {
  %2 = alloca %struct.loopback_test*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.loopback_test* %0, %struct.loopback_test** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dict, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dict, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %21 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strstr(i32* %19, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %13
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dict, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %33 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %25, %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %5

38:                                               ; preds = %5
  %39 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %40 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @stderr, align 4
  %45 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %46 = getelementptr inbounds %struct.loopback_test, %struct.loopback_test* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = call i32 (...) @usage()
  br label %75

50:                                               ; preds = %38
  %51 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %52 = call i32 @prepare_devices(%struct.loopback_test* %51)
  %53 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %54 = call i32 @open_poll_files(%struct.loopback_test* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %73

58:                                               ; preds = %50
  %59 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %60 = call i32 @start(%struct.loopback_test* %59)
  %61 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %62 = call i32 @wait_for_complete(%struct.loopback_test* %61)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %64 = call i32 @close_poll_files(%struct.loopback_test* %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %73

68:                                               ; preds = %58
  %69 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %70 = call i32 @get_results(%struct.loopback_test* %69)
  %71 = load %struct.loopback_test*, %struct.loopback_test** %2, align 8
  %72 = call i32 @log_results(%struct.loopback_test* %71)
  br label %75

73:                                               ; preds = %67, %57
  %74 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %68, %43
  ret void
}

declare dso_local i64 @strstr(i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @prepare_devices(%struct.loopback_test*) #1

declare dso_local i32 @open_poll_files(%struct.loopback_test*) #1

declare dso_local i32 @start(%struct.loopback_test*) #1

declare dso_local i32 @wait_for_complete(%struct.loopback_test*) #1

declare dso_local i32 @close_poll_files(%struct.loopback_test*) #1

declare dso_local i32 @get_results(%struct.loopback_test*) #1

declare dso_local i32 @log_results(%struct.loopback_test*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
