; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_omap4iss_pipeline_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_omap4iss_pipeline_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_pipeline = type { i32 }

@ISS_PIPELINE_STREAM_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4iss_pipeline_set_stream(%struct.iss_pipeline* %0, i32 %1) #0 {
  %3 = alloca %struct.iss_pipeline*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iss_pipeline* %0, %struct.iss_pipeline** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ISS_PIPELINE_STREAM_STOPPED, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.iss_pipeline*, %struct.iss_pipeline** %3, align 8
  %11 = call i32 @iss_pipeline_disable(%struct.iss_pipeline* %10, i32* null)
  store i32 %11, i32* %5, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.iss_pipeline*, %struct.iss_pipeline** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @iss_pipeline_enable(%struct.iss_pipeline* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ISS_PIPELINE_STREAM_STOPPED, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.iss_pipeline*, %struct.iss_pipeline** %3, align 8
  %26 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @iss_pipeline_disable(%struct.iss_pipeline*, i32*) #1

declare dso_local i32 @iss_pipeline_enable(%struct.iss_pipeline*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
