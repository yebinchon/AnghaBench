; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_dump_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_dump_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"urb: null pointer!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"urb->dev: null pointer!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"   pipe                  :%08x \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"   status                :%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"   transfer_flags        :%08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"   transfer_buffer_length:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"   actual_length         :%d\0A\00", align 1
@PIPE_CONTROL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"   start_frame           :%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"   number_of_packets     :%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"   interval              :%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"   error_count           :%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbip_dump_urb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = icmp ne %struct.urb* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %91

8:                                                ; preds = %1
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 10
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %91

15:                                               ; preds = %8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 10
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %3, align 8
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 10
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @usbip_dump_usb_device(%struct.TYPE_2__* %22)
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.urb*, %struct.urb** %2, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @usbip_dump_pipe(i32 %31)
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load %struct.urb*, %struct.urb** %2, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = load %struct.urb*, %struct.urb** %2, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = load %struct.urb*, %struct.urb** %2, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  %53 = load %struct.urb*, %struct.urb** %2, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %15
  %58 = load %struct.urb*, %struct.urb** %2, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @usb_pipetype(i32 %60)
  %62 = load i64, i64* @PIPE_CONTROL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.urb*, %struct.urb** %2, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.usb_ctrlrequest*
  %69 = call i32 @usbip_dump_usb_ctrlrequest(%struct.usb_ctrlrequest* %68)
  br label %70

70:                                               ; preds = %64, %57, %15
  %71 = load %struct.device*, %struct.device** %3, align 8
  %72 = load %struct.urb*, %struct.urb** %2, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_dbg(%struct.device* %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %74)
  %76 = load %struct.device*, %struct.device** %3, align 8
  %77 = load %struct.urb*, %struct.urb** %2, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_dbg(%struct.device* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %79)
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = load %struct.urb*, %struct.urb** %2, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_dbg(%struct.device* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %84)
  %86 = load %struct.device*, %struct.device** %3, align 8
  %87 = load %struct.urb*, %struct.urb** %2, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_dbg(%struct.device* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %70, %13, %6
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @usbip_dump_usb_device(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @usbip_dump_pipe(i32) #1

declare dso_local i64 @usb_pipetype(i32) #1

declare dso_local i32 @usbip_dump_usb_ctrlrequest(%struct.usb_ctrlrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
