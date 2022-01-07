; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_xfer_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_xfer_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_xfer = type { %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_9__ = type { %struct.wa_rpipe* }
%struct.wa_rpipe = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.wa_xfer_abort_buffer = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@WA_XFER_ABORT = common dso_local global i32 0, align 4
@__wa_xfer_abort_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"xfer %p: Can't submit abort request: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wa_xfer*)* @__wa_xfer_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wa_xfer_abort(%struct.wa_xfer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wa_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wa_xfer_abort_buffer*, align 8
  %7 = alloca %struct.wa_rpipe*, align 8
  store %struct.wa_xfer* %0, %struct.wa_xfer** %3, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %11 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %17 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.wa_rpipe*, %struct.wa_rpipe** %19, align 8
  store %struct.wa_rpipe* %20, %struct.wa_rpipe** %7, align 8
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.wa_xfer_abort_buffer* @kmalloc(i32 24, i32 %21)
  store %struct.wa_xfer_abort_buffer* %22, %struct.wa_xfer_abort_buffer** %6, align 8
  %23 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %6, align 8
  %24 = icmp eq %struct.wa_xfer_abort_buffer* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %104

26:                                               ; preds = %1
  %27 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  store i32 16, i32* %29, align 4
  %30 = load i32, i32* @WA_XFER_ABORT, align 4
  %31 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load %struct.wa_rpipe*, %struct.wa_rpipe** %7, align 8
  %35 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %42 = call i32 @wa_xfer_id_le32(%struct.wa_xfer* %41)
  %43 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %6, align 8
  %44 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %47 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = call i32 @wa_get(%struct.TYPE_12__* %48)
  %50 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %52, i32 0, i32 0
  %54 = call i32 @usb_init_urb(i32* %53)
  %55 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %55, i32 0, i32 0
  %57 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %58 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %63 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %68 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_sndbulkpipe(i32 %66, i32 %73)
  %75 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %6, align 8
  %76 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %75, i32 0, i32 1
  %77 = load i32, i32* @__wa_xfer_abort_cb, align 4
  %78 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %6, align 8
  %79 = call i32 @usb_fill_bulk_urb(i32* %56, i32 %61, i32 %74, %struct.TYPE_13__* %76, i32 16, i32 %77, %struct.wa_xfer_abort_buffer* %78)
  %80 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %6, align 8
  %81 = getelementptr inbounds %struct.wa_xfer_abort_buffer, %struct.wa_xfer_abort_buffer* %80, i32 0, i32 0
  %82 = load i32, i32* @GFP_ATOMIC, align 4
  %83 = call i32 @usb_submit_urb(i32* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %26
  br label %89

87:                                               ; preds = %26
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %106

89:                                               ; preds = %86
  %90 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %91 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = call i32 @wa_put(%struct.TYPE_12__* %92)
  %94 = call i64 (...) @printk_ratelimit()
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = load %struct.wa_xfer*, %struct.wa_xfer** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.wa_xfer* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %89
  %102 = load %struct.wa_xfer_abort_buffer*, %struct.wa_xfer_abort_buffer** %6, align 8
  %103 = call i32 @kfree(%struct.wa_xfer_abort_buffer* %102)
  br label %104

104:                                              ; preds = %101, %25
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %87
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.wa_xfer_abort_buffer* @kmalloc(i32, i32) #1

declare dso_local i32 @wa_xfer_id_le32(%struct.wa_xfer*) #1

declare dso_local i32 @wa_get(%struct.TYPE_12__*) #1

declare dso_local i32 @usb_init_urb(i32*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, i32, i32, %struct.TYPE_13__*, i32, i32, %struct.wa_xfer_abort_buffer*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @wa_put(%struct.TYPE_12__*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.wa_xfer*, i32) #1

declare dso_local i32 @kfree(%struct.wa_xfer_abort_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
