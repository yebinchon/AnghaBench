; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-fim.c_fim_acquire_first_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-fim.c_fim_acquire_first_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_fim = type { i64, i32, i32, i32 }

@IMX_MEDIA_EOF_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"wait first icap event timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_media_fim*)* @fim_acquire_first_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fim_acquire_first_ts(%struct.imx_media_fim* %0) #0 {
  %2 = alloca %struct.imx_media_fim*, align 8
  %3 = alloca i64, align 8
  store %struct.imx_media_fim* %0, %struct.imx_media_fim** %2, align 8
  %4 = load %struct.imx_media_fim*, %struct.imx_media_fim** %2, align 8
  %5 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.imx_media_fim*, %struct.imx_media_fim** %2, align 8
  %10 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  br label %27

14:                                               ; preds = %8
  %15 = load %struct.imx_media_fim*, %struct.imx_media_fim** %2, align 8
  %16 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %15, i32 0, i32 2
  %17 = load i32, i32* @IMX_MEDIA_EOF_TIMEOUT, align 4
  %18 = call i32 @msecs_to_jiffies(i32 %17)
  %19 = call i64 @wait_for_completion_timeout(i32* %16, i32 %18)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.imx_media_fim*, %struct.imx_media_fim** %2, align 8
  %24 = getelementptr inbounds %struct.imx_media_fim, %struct.imx_media_fim* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @v4l2_warn(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %13, %22, %14
  ret void
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @v4l2_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
