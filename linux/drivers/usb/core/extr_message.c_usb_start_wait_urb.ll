; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_start_wait_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_start_wait_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.urb = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.api_context* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.api_context = type { i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s timed out on ep%d%s len=%u/%u\0A\00", align 1
@current = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, i32, i32*)* @usb_start_wait_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_start_wait_urb(%struct.urb* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.api_context, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = getelementptr inbounds %struct.api_context, %struct.api_context* %7, i32 0, i32 1
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.urb*, %struct.urb** %4, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 4
  store %struct.api_context* %7, %struct.api_context** %13, align 8
  %14 = load %struct.urb*, %struct.urb** %4, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.urb*, %struct.urb** %4, align 8
  %17 = load i32, i32* @GFP_NOIO, align 4
  %18 = call i32 @usb_submit_urb(%struct.urb* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %81

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @msecs_to_jiffies(i32 %27)
  br label %31

29:                                               ; preds = %23
  %30 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i64 [ %28, %26 ], [ %30, %29 ]
  store i64 %32, i64* %8, align 8
  %33 = getelementptr inbounds %struct.api_context, %struct.api_context* %7, i32 0, i32 1
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @wait_for_completion_timeout(i32* %33, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %77, label %37

37:                                               ; preds = %31
  %38 = load %struct.urb*, %struct.urb** %4, align 8
  %39 = call i32 @usb_kill_urb(%struct.urb* %38)
  %40 = getelementptr inbounds %struct.api_context, %struct.api_context* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  br label %51

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.api_context, %struct.api_context* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i32 [ %47, %45 ], [ %50, %48 ]
  store i32 %52, i32* %9, align 4
  %53 = load %struct.urb*, %struct.urb** %4, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.urb*, %struct.urb** %4, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @usb_endpoint_num(i32* %63)
  %65 = load %struct.urb*, %struct.urb** %4, align 8
  %66 = call i64 @usb_urb_dir_in(%struct.urb* %65)
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %70 = load %struct.urb*, %struct.urb** %4, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.urb*, %struct.urb** %4, align 8
  %74 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %64, i8* %69, i32 %72, i32 %75)
  br label %80

77:                                               ; preds = %31
  %78 = getelementptr inbounds %struct.api_context, %struct.api_context* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %77, %51
  br label %81

81:                                               ; preds = %80, %22
  %82 = load i32*, i32** %6, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.urb*, %struct.urb** %4, align 8
  %86 = getelementptr inbounds %struct.urb, %struct.urb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %84, %81
  %90 = load %struct.urb*, %struct.urb** %4, align 8
  %91 = call i32 @usb_free_urb(%struct.urb* %90)
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_endpoint_num(i32*) #1

declare dso_local i64 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
