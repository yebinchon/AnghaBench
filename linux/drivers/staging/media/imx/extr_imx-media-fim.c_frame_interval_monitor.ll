; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-fim.c_frame_interval_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-fim.c_frame_interval_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_fim = type { i64, i64, i64, i64, i32, i64, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@NSEC_PER_USEC = common dso_local global i64 0, align 8
@U32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"FIM: %llu ignored, out of tolerance bounds\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"FIM: error: %lu usec%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" (!!!)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_media_fim*, i32)* @frame_interval_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_interval_monitor(%struct.imx_media_fim* %0, i32 %1) #0 {
  %3 = alloca %struct.imx_media_fim*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.imx_media_fim* %0, %struct.imx_media_fim** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %10 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %15 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %2
  br label %112

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %23 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ktime_sub(i32 %21, i32 %24)
  %26 = call i64 @ktime_to_ns(i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @NSEC_PER_USEC, align 8
  %29 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %30 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = mul nsw i64 %28, %31
  %33 = sub nsw i64 %27, %32
  %34 = call i64 @abs(i64 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @U32_MAX, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = load i64, i64* @U32_MAX, align 8
  store i64 %39, i64* %6, align 8
  br label %45

40:                                               ; preds = %20
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @NSEC_PER_USEC, align 8
  %43 = sdiv i64 %41, %42
  %44 = call i64 @abs(i64 %43)
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %40, %38
  %46 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %47 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %53 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %58 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %57, i32 0, i32 6
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %6, align 8
  %63 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %65 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %65, align 8
  br label %112

68:                                               ; preds = %50, %45
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %71 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %75 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %78 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %111

81:                                               ; preds = %68
  %82 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %83 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %86 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @DIV_ROUND_CLOSEST(i64 %84, i64 %87)
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %91 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ugt i64 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  store i32 1, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %81
  %96 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %97 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %96, i32 0, i32 6
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %106 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %101, i8* %105)
  %107 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %108 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %110 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %109, i32 0, i32 5
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %95, %68
  br label %112

112:                                              ; preds = %111, %56, %19
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %115 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.imx_media_fim*, %struct.imx_media_fim** %3, align 8
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @send_fim_event(%struct.imx_media_fim* %119, i64 %120)
  br label %122

122:                                              ; preds = %118, %112
  ret void
}

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, ...) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i64) #1

declare dso_local i32 @send_fim_event(%struct.imx_media_fim*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
