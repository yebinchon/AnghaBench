; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3.c_imgu_dummybufs_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3.c_imgu_dummybufs_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css_buffer = type { i32 }
%struct.imgu_device = type { %struct.imgu_media_pipe* }
%struct.imgu_media_pipe = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.imgu_css_buffer*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IPU3_CSS_QUEUE_IN = common dso_local global i32 0, align 4
@IMGU_MAX_QUEUE_DEPTH = common dso_local global i32 0, align 4
@IPU3_CSS_BUFFER_QUEUED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.imgu_css_buffer* (%struct.imgu_device*, i32, i32)* @imgu_dummybufs_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.imgu_css_buffer* @imgu_dummybufs_get(%struct.imgu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.imgu_css_buffer*, align 8
  %5 = alloca %struct.imgu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.imgu_media_pipe*, align 8
  store %struct.imgu_device* %0, %struct.imgu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.imgu_device*, %struct.imgu_device** %5, align 8
  %11 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %10, i32 0, i32 0
  %12 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %12, i64 %14
  store %struct.imgu_media_pipe* %15, %struct.imgu_media_pipe** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IPU3_CSS_QUEUE_IN, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.imgu_css_buffer* null, %struct.imgu_css_buffer** %4, align 8
  br label %100

20:                                               ; preds = %3
  %21 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %9, align 8
  %22 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store %struct.imgu_css_buffer* null, %struct.imgu_css_buffer** %4, align 8
  br label %100

36:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @IMGU_MAX_QUEUE_DEPTH, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %9, align 8
  %43 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %49, i64 %51
  %53 = call i64 @imgu_css_buf_state(%struct.imgu_css_buffer* %52)
  %54 = load i64, i64* @IPU3_CSS_BUFFER_QUEUED, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %61

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %37

61:                                               ; preds = %56, %37
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @IMGU_MAX_QUEUE_DEPTH, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store %struct.imgu_css_buffer* null, %struct.imgu_css_buffer** %4, align 8
  br label %100

66:                                               ; preds = %61
  %67 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %9, align 8
  %68 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %74, i64 %76
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %9, align 8
  %80 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @imgu_css_buf_init(%struct.imgu_css_buffer* %77, i32 %78, i32 %87)
  %89 = load %struct.imgu_media_pipe*, %struct.imgu_media_pipe** %9, align 8
  %90 = getelementptr inbounds %struct.imgu_media_pipe, %struct.imgu_media_pipe* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %96, i64 %98
  store %struct.imgu_css_buffer* %99, %struct.imgu_css_buffer** %4, align 8
  br label %100

100:                                              ; preds = %66, %65, %35, %19
  %101 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %4, align 8
  ret %struct.imgu_css_buffer* %101
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @imgu_css_buf_state(%struct.imgu_css_buffer*) #1

declare dso_local i32 @imgu_css_buf_init(%struct.imgu_css_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
