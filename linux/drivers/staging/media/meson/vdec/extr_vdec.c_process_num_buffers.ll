; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_process_num_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_vdec.c_process_num_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, i32 }
%struct.amvdec_session = type { i32, %struct.amvdec_format* }
%struct.amvdec_format = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*, %struct.amvdec_session*, i32*, i32)* @process_num_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_num_buffers(%struct.vb2_queue* %0, %struct.amvdec_session* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca %struct.amvdec_session*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.amvdec_format*, align 8
  %10 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %5, align 8
  store %struct.amvdec_session* %1, %struct.amvdec_session** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %12 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %11, i32 0, i32 1
  %13 = load %struct.amvdec_format*, %struct.amvdec_format** %12, align 8
  store %struct.amvdec_format* %13, %struct.amvdec_format** %9, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %15 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %16, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.amvdec_format*, %struct.amvdec_format** %9, align 8
  %25 = getelementptr inbounds %struct.amvdec_format, %struct.amvdec_format* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.amvdec_format*, %struct.amvdec_format** %9, align 8
  %30 = getelementptr inbounds %struct.amvdec_format, %struct.amvdec_format* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %33 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub i32 %31, %34
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %28, %22, %4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.amvdec_format*, %struct.amvdec_format** %9, align 8
  %40 = getelementptr inbounds %struct.amvdec_format, %struct.amvdec_format* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ugt i32 %38, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.amvdec_format*, %struct.amvdec_format** %9, align 8
  %45 = getelementptr inbounds %struct.amvdec_format, %struct.amvdec_format* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %48 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %46, %49
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %37
  %53 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %54 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add i32 %55, %57
  %59 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %60 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.amvdec_format*, %struct.amvdec_format** %9, align 8
  %62 = getelementptr inbounds %struct.amvdec_format, %struct.amvdec_format* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.amvdec_session*, %struct.amvdec_session** %6, align 8
  %65 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @max(i32 %63, i32 %66)
  %68 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %69 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  ret void
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
