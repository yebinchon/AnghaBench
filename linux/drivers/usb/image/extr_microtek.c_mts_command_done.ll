; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/image/extr_microtek.c_mts_command_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/image/extr_microtek.c_mts_command_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i64*, i64 }
%struct.urb = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@context = common dso_local global %struct.TYPE_4__* null, align 8
@DID_ERROR = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i64 0, align 8
@mts_data_done = common dso_local global i32 0, align 4
@mts_do_sg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @mts_command_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mts_command_done(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = call i32 (...) @MTS_INT_INIT()
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = call i32 (...) @MTS_DEBUG_GOT_HERE()
  %18 = load i32, i32* @DID_ABORT, align 4
  %19 = shl i32 %18, 16
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @context, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 8
  br label %32

24:                                               ; preds = %11
  %25 = call i32 (...) @MTS_DEBUG_GOT_HERE()
  %26 = load i32, i32* @DID_ERROR, align 4
  %27 = shl i32 %26, 16
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @context, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  br label %32

32:                                               ; preds = %24, %16
  %33 = load %struct.urb*, %struct.urb** %2, align 8
  %34 = call i32 @mts_transfer_cleanup(%struct.urb* %33)
  br label %92

35:                                               ; preds = %1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @context, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REQUEST_SENSE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %35
  %46 = load %struct.urb*, %struct.urb** %2, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @context, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @context, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @context, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @mts_data_done, align 4
  %59 = call i32 @mts_int_submit_urb(%struct.urb* %46, i32 %49, i64 %54, i32 %57, i32 %58)
  br label %92

60:                                               ; preds = %35
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @context, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %60
  %66 = load %struct.urb*, %struct.urb** %2, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @context, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @context, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @context, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @context, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = call i32 @scsi_sg_count(%struct.TYPE_3__* %78)
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %65
  %82 = load i32, i32* @mts_do_sg, align 4
  br label %85

83:                                               ; preds = %65
  %84 = load i32, i32* @mts_data_done, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = call i32 @mts_int_submit_urb(%struct.urb* %66, i32 %69, i64 %72, i32 %75, i32 %86)
  br label %91

88:                                               ; preds = %60
  %89 = load %struct.urb*, %struct.urb** %2, align 8
  %90 = call i32 @mts_get_status(%struct.urb* %89)
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %32, %91, %45
  ret void
}

declare dso_local i32 @MTS_INT_INIT(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @MTS_DEBUG_GOT_HERE(...) #1

declare dso_local i32 @mts_transfer_cleanup(%struct.urb*) #1

declare dso_local i32 @mts_int_submit_urb(%struct.urb*, i32, i64, i32, i32) #1

declare dso_local i32 @scsi_sg_count(%struct.TYPE_3__*) #1

declare dso_local i32 @mts_get_status(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
