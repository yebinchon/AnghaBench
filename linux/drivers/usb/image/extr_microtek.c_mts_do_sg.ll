; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/image/extr_microtek.c_mts_do_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/image/extr_microtek.c_mts_do_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Processing fragment %d of %d\0A\00", align 1
@context = common dso_local global %struct.TYPE_9__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @mts_do_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mts_do_sg(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = call i32 (...) @MTS_INT_INIT()
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @context, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @context, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = call i32 @scsi_sg_count(%struct.TYPE_8__* %13)
  %15 = call i32 @MTS_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @DID_ABORT, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @DID_ERROR, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = shl i32 %29, 16
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @context, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.urb*, %struct.urb** %2, align 8
  %36 = call i32 @mts_transfer_cleanup(%struct.urb* %35)
  br label %37

37:                                               ; preds = %28, %1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @context, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = call %struct.TYPE_7__* @sg_next(%struct.TYPE_7__* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @context, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %43, align 8
  %44 = load %struct.urb*, %struct.urb** %2, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @context, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @context, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @sg_virt(%struct.TYPE_7__* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @context, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** @context, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = call i64 @sg_is_last(%struct.TYPE_7__* %59)
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, void (%struct.urb*)* @mts_data_done, void (%struct.urb*)* @mts_do_sg
  %64 = call i32 @mts_int_submit_urb(%struct.urb* %44, i32 %47, i32 %51, i32 %56, void (%struct.urb*)* %63)
  ret void
}

declare dso_local i32 @MTS_INT_INIT(...) #1

declare dso_local i32 @MTS_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @scsi_sg_count(%struct.TYPE_8__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mts_transfer_cleanup(%struct.urb*) #1

declare dso_local %struct.TYPE_7__* @sg_next(%struct.TYPE_7__*) #1

declare dso_local i32 @mts_int_submit_urb(%struct.urb*, i32, i32, i32, void (%struct.urb*)*) #1

declare dso_local i32 @sg_virt(%struct.TYPE_7__*) #1

declare dso_local i64 @sg_is_last(%struct.TYPE_7__*) #1

declare dso_local void @mts_data_done(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
