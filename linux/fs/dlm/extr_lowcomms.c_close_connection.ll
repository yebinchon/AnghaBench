; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_close_connection.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_close_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i64, i32*, %struct.connection*, i32*, i32, i32, i32 }

@CF_CLOSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"canceled swork for node %d\00", align 1
@CF_WRITE_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"canceled rwork for node %d\00", align 1
@CF_READ_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*, i32, i32, i32)* @close_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_connection(%struct.connection* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @CF_CLOSING, align 4
  %11 = load %struct.connection*, %struct.connection** %5, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 0
  %13 = call i32 @test_and_set_bit(i32 %10, i32* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %16
  %20 = load %struct.connection*, %struct.connection** %5, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 8
  %22 = call i64 @cancel_work_sync(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.connection*, %struct.connection** %5, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @CF_WRITE_PENDING, align 4
  %30 = load %struct.connection*, %struct.connection** %5, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 0
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %24, %19, %16, %4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %36
  %40 = load %struct.connection*, %struct.connection** %5, align 8
  %41 = getelementptr inbounds %struct.connection, %struct.connection* %40, i32 0, i32 7
  %42 = call i64 @cancel_work_sync(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.connection*, %struct.connection** %5, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @CF_READ_PENDING, align 4
  %50 = load %struct.connection*, %struct.connection** %5, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 0
  %52 = call i32 @clear_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %44, %39, %36, %33
  %54 = load %struct.connection*, %struct.connection** %5, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 1
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.connection*, %struct.connection** %5, align 8
  %58 = getelementptr inbounds %struct.connection, %struct.connection* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load %struct.connection*, %struct.connection** %5, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @restore_callbacks(i32* %64)
  %66 = load %struct.connection*, %struct.connection** %5, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @sock_release(i32* %68)
  %70 = load %struct.connection*, %struct.connection** %5, align 8
  %71 = getelementptr inbounds %struct.connection, %struct.connection* %70, i32 0, i32 5
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %61, %53
  %73 = load %struct.connection*, %struct.connection** %5, align 8
  %74 = getelementptr inbounds %struct.connection, %struct.connection* %73, i32 0, i32 4
  %75 = load %struct.connection*, %struct.connection** %74, align 8
  %76 = icmp ne %struct.connection* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.connection*, %struct.connection** %5, align 8
  %82 = getelementptr inbounds %struct.connection, %struct.connection* %81, i32 0, i32 4
  %83 = load %struct.connection*, %struct.connection** %82, align 8
  call void @close_connection(%struct.connection* %83, i32 0, i32 1, i32 1)
  br label %84

84:                                               ; preds = %80, %77, %72
  %85 = load %struct.connection*, %struct.connection** %5, align 8
  %86 = getelementptr inbounds %struct.connection, %struct.connection* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.connection*, %struct.connection** %5, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @__free_page(i32* %92)
  %94 = load %struct.connection*, %struct.connection** %5, align 8
  %95 = getelementptr inbounds %struct.connection, %struct.connection* %94, i32 0, i32 3
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %89, %84
  %97 = load %struct.connection*, %struct.connection** %5, align 8
  %98 = getelementptr inbounds %struct.connection, %struct.connection* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = load %struct.connection*, %struct.connection** %5, align 8
  %100 = getelementptr inbounds %struct.connection, %struct.connection* %99, i32 0, i32 1
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* @CF_CLOSING, align 4
  %103 = load %struct.connection*, %struct.connection** %5, align 8
  %104 = getelementptr inbounds %struct.connection, %struct.connection* %103, i32 0, i32 0
  %105 = call i32 @clear_bit(i32 %102, i32* %104)
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @cancel_work_sync(i32*) #1

declare dso_local i32 @log_print(i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @restore_callbacks(i32*) #1

declare dso_local i32 @sock_release(i32*) #1

declare dso_local i32 @__free_page(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
