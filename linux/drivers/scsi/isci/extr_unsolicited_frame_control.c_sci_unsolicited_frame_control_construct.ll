; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_unsolicited_frame_control.c_sci_unsolicited_frame_control_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_unsolicited_frame_control.c_sci_unsolicited_frame_control_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32, i8*, %struct.sci_unsolicited_frame_control }
%struct.sci_unsolicited_frame_control = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { %struct.sci_unsolicited_frame* }
%struct.sci_unsolicited_frame = type { i32, i32*, i8* }

@SCI_UFI_BUF_SIZE = common dso_local global i32 0, align 4
@SCI_UFI_HDR_SIZE = common dso_local global i32 0, align 4
@SCU_MAX_UNSOLICITED_FRAMES = common dso_local global i32 0, align 4
@UNSOLICITED_FRAME_EMPTY = common dso_local global i32 0, align 4
@SCU_UNSOLICITED_FRAME_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_unsolicited_frame_control_construct(%struct.isci_host* %0) #0 {
  %2 = alloca %struct.isci_host*, align 8
  %3 = alloca %struct.sci_unsolicited_frame_control*, align 8
  %4 = alloca %struct.sci_unsolicited_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %2, align 8
  %8 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %9 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %8, i32 0, i32 2
  store %struct.sci_unsolicited_frame_control* %9, %struct.sci_unsolicited_frame_control** %3, align 8
  %10 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %11 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.isci_host*, %struct.isci_host** %2, align 8
  %14 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SCI_UFI_BUF_SIZE, align 4
  %18 = add nsw i32 %16, %17
  %19 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %3, align 8
  %20 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @SCI_UFI_BUF_SIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %22, i64 %24
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %3, align 8
  %28 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32* %26, i32** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SCI_UFI_BUF_SIZE, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* @SCI_UFI_HDR_SIZE, align 4
  %34 = add nsw i32 %32, %33
  %35 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %3, align 8
  %36 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @SCI_UFI_BUF_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, i8* %38, i64 %40
  %42 = load i32, i32* @SCI_UFI_HDR_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %3, align 8
  %47 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32* %45, i32** %48, align 8
  %49 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %3, align 8
  %50 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %93, %1
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @SCU_MAX_UNSOLICITED_FRAMES, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %51
  %56 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %3, align 8
  %57 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.sci_unsolicited_frame*, %struct.sci_unsolicited_frame** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sci_unsolicited_frame, %struct.sci_unsolicited_frame* %59, i64 %61
  store %struct.sci_unsolicited_frame* %62, %struct.sci_unsolicited_frame** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %3, align 8
  %65 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %63, i32* %70, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.sci_unsolicited_frame*, %struct.sci_unsolicited_frame** %4, align 8
  %73 = getelementptr inbounds %struct.sci_unsolicited_frame, %struct.sci_unsolicited_frame* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %3, align 8
  %75 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load %struct.sci_unsolicited_frame*, %struct.sci_unsolicited_frame** %4, align 8
  %82 = getelementptr inbounds %struct.sci_unsolicited_frame, %struct.sci_unsolicited_frame* %81, i32 0, i32 1
  store i32* %80, i32** %82, align 8
  %83 = load i32, i32* @UNSOLICITED_FRAME_EMPTY, align 4
  %84 = load %struct.sci_unsolicited_frame*, %struct.sci_unsolicited_frame** %4, align 8
  %85 = getelementptr inbounds %struct.sci_unsolicited_frame, %struct.sci_unsolicited_frame* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @SCU_UNSOLICITED_FRAME_BUFFER_SIZE, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr i8, i8* %87, i64 %88
  store i8* %89, i8** %6, align 8
  %90 = load i32, i32* @SCU_UNSOLICITED_FRAME_BUFFER_SIZE, align 4
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %55
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %51

96:                                               ; preds = %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
