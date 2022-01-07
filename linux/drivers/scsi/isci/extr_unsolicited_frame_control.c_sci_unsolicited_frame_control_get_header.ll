; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_unsolicited_frame_control.c_sci_unsolicited_frame_control_get_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_unsolicited_frame_control.c_sci_unsolicited_frame_control_get_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_unsolicited_frame_control = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SCU_MAX_UNSOLICITED_FRAMES = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sci_unsolicited_frame_control_get_header(%struct.sci_unsolicited_frame_control* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sci_unsolicited_frame_control*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  store %struct.sci_unsolicited_frame_control* %0, %struct.sci_unsolicited_frame_control** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @SCU_MAX_UNSOLICITED_FRAMES, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load %struct.sci_unsolicited_frame_control*, %struct.sci_unsolicited_frame_control** %5, align 8
  %13 = getelementptr inbounds %struct.sci_unsolicited_frame_control, %struct.sci_unsolicited_frame_control* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = bitcast i32* %20 to i8*
  %22 = load i8**, i8*** %7, align 8
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %23, i32* %4, align 4
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %11
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
