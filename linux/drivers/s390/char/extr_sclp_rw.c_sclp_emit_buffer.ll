; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_rw.c_sclp_emit_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_rw.c_sclp_emit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_buffer = type { i64, void (%struct.sclp_buffer*, i32)*, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32, %struct.sclp_buffer*, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@SCLP_CMDW_WRITE_EVENT_DATA = common dso_local global i32 0, align 4
@SCLP_REQ_FILLED = common dso_local global i32 0, align 4
@sclp_writedata_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_emit_buffer(%struct.sclp_buffer* %0, void (%struct.sclp_buffer*, i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sclp_buffer*, align 8
  %5 = alloca void (%struct.sclp_buffer*, i32)*, align 8
  store %struct.sclp_buffer* %0, %struct.sclp_buffer** %4, align 8
  store void (%struct.sclp_buffer*, i32)* %1, void (%struct.sclp_buffer*, i32)** %5, align 8
  %6 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %12 = call i32 @sclp_finalize_mto(%struct.sclp_buffer* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %50

21:                                               ; preds = %13
  %22 = load i32, i32* @SCLP_CMDW_WRITE_EVENT_DATA, align 4
  %23 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @SCLP_REQ_FILLED, align 4
  %27 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @sclp_writedata_callback, align 4
  %31 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %35 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store %struct.sclp_buffer* %34, %struct.sclp_buffer** %37, align 8
  %38 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load void (%struct.sclp_buffer*, i32)*, void (%struct.sclp_buffer*, i32)** %5, align 8
  %45 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %45, i32 0, i32 1
  store void (%struct.sclp_buffer*, i32)* %44, void (%struct.sclp_buffer*, i32)** %46, align 8
  %47 = load %struct.sclp_buffer*, %struct.sclp_buffer** %4, align 8
  %48 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %47, i32 0, i32 2
  %49 = call i32 @sclp_add_request(%struct.TYPE_2__* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %21, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @sclp_finalize_mto(%struct.sclp_buffer*) #1

declare dso_local i32 @sclp_add_request(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
