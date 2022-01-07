; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_codec_mpeg12.c_codec_mpeg12_threaded_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_codec_mpeg12.c_codec_mpeg12_threaded_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_session = type { %struct.amvdec_core* }
%struct.amvdec_core = type { i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@ASSIST_MBOX1_CLR_REG = common dso_local global i32 0, align 4
@MREG_FATAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MPEG1/2 fatal error\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MREG_BUFFEROUT = common dso_local global i32 0, align 4
@MREG_PIC_INFO = common dso_local global i32 0, align 4
@PICINFO_PROG = common dso_local global i32 0, align 4
@PICINFO_TOP_FIRST = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED_TB = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED_BT = common dso_local global i32 0, align 4
@MREG_FRAME_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amvdec_session*)* @codec_mpeg12_threaded_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codec_mpeg12_threaded_isr(%struct.amvdec_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amvdec_session*, align 8
  %4 = alloca %struct.amvdec_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amvdec_session* %0, %struct.amvdec_session** %3, align 8
  %11 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %12 = getelementptr inbounds %struct.amvdec_session, %struct.amvdec_session* %11, i32 0, i32 0
  %13 = load %struct.amvdec_core*, %struct.amvdec_core** %12, align 8
  store %struct.amvdec_core* %13, %struct.amvdec_core** %4, align 8
  %14 = load i32, i32* @V4L2_FIELD_NONE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %16 = load i32, i32* @ASSIST_MBOX1_CLR_REG, align 4
  %17 = call i32 @amvdec_write_dos(%struct.amvdec_core* %15, i32 %16, i32 1)
  %18 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %19 = load i32, i32* @MREG_FATAL_ERROR, align 4
  %20 = call i32 @amvdec_read_dos(%struct.amvdec_core* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %25 = getelementptr inbounds %struct.amvdec_core, %struct.amvdec_core* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %29 = call i32 @amvdec_abort(%struct.amvdec_session* %28)
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %2, align 4
  br label %86

31:                                               ; preds = %1
  %32 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %33 = load i32, i32* @MREG_BUFFEROUT, align 4
  %34 = call i32 @amvdec_read_dos(%struct.amvdec_core* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %2, align 4
  br label %86

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @GENMASK(i32 23, i32 17)
  %42 = and i32 %40, %41
  %43 = call i32 @GENMASK(i32 23, i32 17)
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %81

46:                                               ; preds = %39
  %47 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %48 = load i32, i32* @MREG_PIC_INFO, align 4
  %49 = call i32 @amvdec_read_dos(%struct.amvdec_core* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @PICINFO_PROG, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @PICINFO_TOP_FIRST, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @V4L2_FIELD_INTERLACED_TB, align 4
  br label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @V4L2_FIELD_INTERLACED_BT, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %46
  %67 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %68 = call i32 @codec_mpeg12_update_dar(%struct.amvdec_session* %67)
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, 15
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %71, 7
  store i32 %72, i32* %8, align 4
  %73 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %74 = load i32, i32* @MREG_FRAME_OFFSET, align 4
  %75 = call i32 @amvdec_read_dos(%struct.amvdec_core* %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load %struct.amvdec_session*, %struct.amvdec_session** %3, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @amvdec_dst_buf_done_idx(%struct.amvdec_session* %76, i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %66, %45
  %82 = load %struct.amvdec_core*, %struct.amvdec_core** %4, align 8
  %83 = load i32, i32* @MREG_BUFFEROUT, align 4
  %84 = call i32 @amvdec_write_dos(%struct.amvdec_core* %82, i32 %83, i32 0)
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %37, %23
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @amvdec_write_dos(%struct.amvdec_core*, i32, i32) #1

declare dso_local i32 @amvdec_read_dos(%struct.amvdec_core*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @amvdec_abort(%struct.amvdec_session*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @codec_mpeg12_update_dar(%struct.amvdec_session*) #1

declare dso_local i32 @amvdec_dst_buf_done_idx(%struct.amvdec_session*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
