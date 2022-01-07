; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_bind.c_cachefiles_daemon_bind.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_bind.c_cachefiles_daemon_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"{%u,%u,%u,%u,%u,%u},%s\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"'bind' command doesn't take an argument\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"No cache directory specified\0A\00", align 1
@CACHEFILES_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Cache already bound\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"CacheFiles\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cachefiles_daemon_bind(%struct.cachefiles_cache* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cachefiles_cache*, align 8
  %5 = alloca i8*, align 8
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %7 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %10 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %13 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %16 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %19 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %22 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @_enter(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %8, i64 %11, i64 %14, i64 %17, i64 %20, i64 %23, i8* %24)
  %26 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %27 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %2
  %31 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %32 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %35 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %40 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %43 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %48 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 100
  br label %51

51:                                               ; preds = %46, %38, %30, %2
  %52 = phi i1 [ false, %38 ], [ false, %30 ], [ false, %2 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %56 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %51
  %60 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %61 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %64 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %59
  %68 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %69 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %72 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %77 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %78, 100
  br label %80

80:                                               ; preds = %75, %67, %59, %51
  %81 = phi i1 [ false, %67 ], [ false, %59 ], [ false, %51 ], [ %79, %75 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @ASSERT(i32 %82)
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %131

91:                                               ; preds = %80
  %92 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %93 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %131

100:                                              ; preds = %91
  %101 = load i32, i32* @CACHEFILES_READY, align 4
  %102 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %103 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %102, i32 0, i32 7
  %104 = call i64 @test_bit(i32 %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @EBUSY, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %131

110:                                              ; preds = %100
  %111 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %112 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i64 @kstrdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %119 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %118, i32 0, i32 6
  store i64 %117, i64* %119, align 8
  %120 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %121 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %115
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %131

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127, %110
  %129 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %130 = call i32 @cachefiles_daemon_add_cache(%struct.cachefiles_cache* %129)
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %124, %106, %96, %87
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @_enter(i8*, i64, i64, i64, i64, i64, i64, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @kstrdup(i8*, i32) #1

declare dso_local i32 @cachefiles_daemon_add_cache(%struct.cachefiles_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
