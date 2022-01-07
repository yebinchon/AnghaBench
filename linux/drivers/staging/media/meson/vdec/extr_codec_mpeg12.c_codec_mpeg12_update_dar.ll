; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_codec_mpeg12.c_codec_mpeg12_update_dar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_codec_mpeg12.c_codec_mpeg12_update_dar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { %struct.TYPE_2__, %struct.amvdec_core* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.amvdec_core = type { i32 }

@MREG_SEQ_INFO = common dso_local global i32 0, align 4
@MPEG2_SEQ_DAR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amvdec_session*)* @codec_mpeg12_update_dar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codec_mpeg12_update_dar(%struct.amvdec_session* %0) #0 {
  %2 = alloca %struct.amvdec_session*, align 8
  %3 = alloca %struct.amvdec_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amvdec_session* %0, %struct.amvdec_session** %2, align 8
  %6 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %7 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %6, i32 0, i32 1
  %8 = load %struct.amvdec_core*, %struct.amvdec_core** %7, align 8
  store %struct.amvdec_core* %8, %struct.amvdec_core** %3, align 8
  %9 = load %struct.amvdec_core*, %struct.amvdec_core** %3, align 8
  %10 = load i32, i32* @MREG_SEQ_INFO, align 4
  %11 = call i32 @amvdec_read_dos(%struct.amvdec_core* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MPEG2_SEQ_DAR_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %25 [
    i32 128, label %16
    i32 130, label %19
    i32 129, label %22
  ]

16:                                               ; preds = %1
  %17 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %18 = call i32 @amvdec_set_par_from_dar(%struct.amvdec_session* %17, i32 4, i32 3)
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %21 = call i32 @amvdec_set_par_from_dar(%struct.amvdec_session* %20, i32 16, i32 9)
  br label %32

22:                                               ; preds = %1
  %23 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %24 = call i32 @amvdec_set_par_from_dar(%struct.amvdec_session* %23, i32 221, i32 100)
  br label %32

25:                                               ; preds = %1
  %26 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %27 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.amvdec_session*, %struct.amvdec_session** %2, align 8
  %30 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %22, %19, %16
  ret void
}

declare dso_local i32 @amvdec_read_dos(%struct.amvdec_core*, i32) #1

declare dso_local i32 @amvdec_set_par_from_dar(%struct.amvdec_session*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
