; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_test.c_handle_vq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_test.c_handle_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_test = type { i32, %struct.vhost_virtqueue* }
%struct.vhost_virtqueue = type { i32, i32, i32, i8* }

@VHOST_TEST_VQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Unexpected descriptor format for TX: out %d, int %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unexpected 0 len for TX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_test*)* @handle_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_vq(%struct.vhost_test* %0) #0 {
  %2 = alloca %struct.vhost_test*, align 8
  %3 = alloca %struct.vhost_virtqueue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.vhost_test* %0, %struct.vhost_test** %2, align 8
  %10 = load %struct.vhost_test*, %struct.vhost_test** %2, align 8
  %11 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %10, i32 0, i32 1
  %12 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %11, align 8
  %13 = load i64, i64* @VHOST_TEST_VQ, align 8
  %14 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %12, i64 %13
  store %struct.vhost_virtqueue* %14, %struct.vhost_virtqueue** %3, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %16 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %19 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %25 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  br label %106

27:                                               ; preds = %1
  %28 = load %struct.vhost_test*, %struct.vhost_test** %2, align 8
  %29 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %28, i32 0, i32 0
  %30 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %31 = call i32 @vhost_disable_notify(i32* %29, %struct.vhost_virtqueue* %30)
  br label %32

32:                                               ; preds = %101, %61, %27
  %33 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %34 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %35 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %38 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = call i32 @vhost_get_vq_desc(%struct.vhost_virtqueue* %33, i32 %36, i32 %40, i32* %4, i32* %5, i32* null, i32* null)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %102

48:                                               ; preds = %32
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %51 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load %struct.vhost_test*, %struct.vhost_test** %2, align 8
  %56 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %55, i32 0, i32 0
  %57 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %58 = call i32 @vhost_enable_notify(i32* %56, %struct.vhost_virtqueue* %57)
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.vhost_test*, %struct.vhost_test** %2, align 8
  %63 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %62, i32 0, i32 0
  %64 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %65 = call i32 @vhost_disable_notify(i32* %63, %struct.vhost_virtqueue* %64)
  br label %32

66:                                               ; preds = %54
  br label %102

67:                                               ; preds = %48
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (%struct.vhost_virtqueue*, i8*, ...) @vq_err(%struct.vhost_virtqueue* %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  br label %102

75:                                               ; preds = %67
  %76 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %77 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @iov_length(i32 %78, i32 %79)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %85 = call i32 (%struct.vhost_virtqueue*, i8*, ...) @vq_err(%struct.vhost_virtqueue* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %102

86:                                               ; preds = %75
  %87 = load %struct.vhost_test*, %struct.vhost_test** %2, align 8
  %88 = getelementptr inbounds %struct.vhost_test, %struct.vhost_test* %87, i32 0, i32 0
  %89 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @vhost_add_used_and_signal(i32* %88, %struct.vhost_virtqueue* %89, i32 %90, i32 0)
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %8, align 8
  %95 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @vhost_exceeds_weight(%struct.vhost_virtqueue* %95, i32 0, i64 %96)
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %86
  br label %102

101:                                              ; preds = %86
  br label %32

102:                                              ; preds = %100, %83, %70, %66, %47
  %103 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %104 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  br label %106

106:                                              ; preds = %102, %23
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vhost_disable_notify(i32*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_get_vq_desc(%struct.vhost_virtqueue*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vhost_enable_notify(i32*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*, ...) #1

declare dso_local i64 @iov_length(i32, i32) #1

declare dso_local i32 @vhost_add_used_and_signal(i32*, %struct.vhost_virtqueue*, i32, i32) #1

declare dso_local i32 @vhost_exceeds_weight(%struct.vhost_virtqueue*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
