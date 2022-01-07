; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_coredump_add_custom_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_coredump_add_custom_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32 }
%struct.rproc_dump_segment = type { i64, void (%struct.rproc.0*, %struct.rproc_dump_segment*, i8*)*, i32, i8*, i32 }
%struct.rproc.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rproc_coredump_add_custom_segment(%struct.rproc* %0, i32 %1, i64 %2, void (%struct.rproc*, %struct.rproc_dump_segment*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rproc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca void (%struct.rproc*, %struct.rproc_dump_segment*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rproc_dump_segment*, align 8
  store %struct.rproc* %0, %struct.rproc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store void (%struct.rproc*, %struct.rproc_dump_segment*, i8*)* %3, void (%struct.rproc*, %struct.rproc_dump_segment*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.rproc_dump_segment* @kzalloc(i32 40, i32 %13)
  store %struct.rproc_dump_segment* %14, %struct.rproc_dump_segment** %12, align 8
  %15 = load %struct.rproc_dump_segment*, %struct.rproc_dump_segment** %12, align 8
  %16 = icmp ne %struct.rproc_dump_segment* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %39

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.rproc_dump_segment*, %struct.rproc_dump_segment** %12, align 8
  %23 = getelementptr inbounds %struct.rproc_dump_segment, %struct.rproc_dump_segment* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.rproc_dump_segment*, %struct.rproc_dump_segment** %12, align 8
  %26 = getelementptr inbounds %struct.rproc_dump_segment, %struct.rproc_dump_segment* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.rproc_dump_segment*, %struct.rproc_dump_segment** %12, align 8
  %29 = getelementptr inbounds %struct.rproc_dump_segment, %struct.rproc_dump_segment* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load void (%struct.rproc*, %struct.rproc_dump_segment*, i8*)*, void (%struct.rproc*, %struct.rproc_dump_segment*, i8*)** %10, align 8
  %31 = bitcast void (%struct.rproc*, %struct.rproc_dump_segment*, i8*)* %30 to void (%struct.rproc.0*, %struct.rproc_dump_segment*, i8*)*
  %32 = load %struct.rproc_dump_segment*, %struct.rproc_dump_segment** %12, align 8
  %33 = getelementptr inbounds %struct.rproc_dump_segment, %struct.rproc_dump_segment* %32, i32 0, i32 1
  store void (%struct.rproc.0*, %struct.rproc_dump_segment*, i8*)* %31, void (%struct.rproc.0*, %struct.rproc_dump_segment*, i8*)** %33, align 8
  %34 = load %struct.rproc_dump_segment*, %struct.rproc_dump_segment** %12, align 8
  %35 = getelementptr inbounds %struct.rproc_dump_segment, %struct.rproc_dump_segment* %34, i32 0, i32 2
  %36 = load %struct.rproc*, %struct.rproc** %7, align 8
  %37 = getelementptr inbounds %struct.rproc, %struct.rproc* %36, i32 0, i32 0
  %38 = call i32 @list_add_tail(i32* %35, i32* %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %20, %17
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.rproc_dump_segment* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
