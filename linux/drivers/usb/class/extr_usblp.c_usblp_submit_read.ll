; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_submit_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_submit_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usblp = type { i64, i32, i32, i32, %struct.TYPE_6__*, i64, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.urb = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@USBLP_BUF_SIZE_IN = common dso_local global i32 0, align 4
@usblp_bulk_read = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error submitting urb (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usblp*)* @usblp_submit_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usblp_submit_read(%struct.usblp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usblp*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.usblp* %0, %struct.usblp** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %9)
  store %struct.urb* %10, %struct.urb** %4, align 8
  %11 = load %struct.urb*, %struct.urb** %4, align 8
  %12 = icmp eq %struct.urb* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %87

14:                                               ; preds = %1
  %15 = load %struct.urb*, %struct.urb** %4, align 8
  %16 = load %struct.usblp*, %struct.usblp** %3, align 8
  %17 = getelementptr inbounds %struct.usblp, %struct.usblp* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.usblp*, %struct.usblp** %3, align 8
  %20 = getelementptr inbounds %struct.usblp, %struct.usblp* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.usblp*, %struct.usblp** %3, align 8
  %23 = getelementptr inbounds %struct.usblp, %struct.usblp* %22, i32 0, i32 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load %struct.usblp*, %struct.usblp** %3, align 8
  %26 = getelementptr inbounds %struct.usblp, %struct.usblp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_rcvbulkpipe(i32 %21, i32 %32)
  %34 = load %struct.usblp*, %struct.usblp** %3, align 8
  %35 = getelementptr inbounds %struct.usblp, %struct.usblp* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @USBLP_BUF_SIZE_IN, align 4
  %38 = load i32, i32* @usblp_bulk_read, align 4
  %39 = load %struct.usblp*, %struct.usblp** %3, align 8
  %40 = call i32 @usb_fill_bulk_urb(%struct.urb* %15, i32 %18, i32 %33, i32 %36, i32 %37, i32 %38, %struct.usblp* %39)
  %41 = load %struct.urb*, %struct.urb** %4, align 8
  %42 = load %struct.usblp*, %struct.usblp** %3, align 8
  %43 = getelementptr inbounds %struct.usblp, %struct.usblp* %42, i32 0, i32 6
  %44 = call i32 @usb_anchor_urb(%struct.urb* %41, i32* %43)
  %45 = load %struct.usblp*, %struct.usblp** %3, align 8
  %46 = getelementptr inbounds %struct.usblp, %struct.usblp* %45, i32 0, i32 3
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.usblp*, %struct.usblp** %3, align 8
  %50 = getelementptr inbounds %struct.usblp, %struct.usblp* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.usblp*, %struct.usblp** %3, align 8
  %52 = getelementptr inbounds %struct.usblp, %struct.usblp* %51, i32 0, i32 1
  store i32 0, i32* %52, align 8
  %53 = load %struct.usblp*, %struct.usblp** %3, align 8
  %54 = getelementptr inbounds %struct.usblp, %struct.usblp* %53, i32 0, i32 3
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.urb*, %struct.urb** %4, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32 @usb_submit_urb(%struct.urb* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %14
  %62 = load %struct.usblp*, %struct.usblp** %3, align 8
  %63 = getelementptr inbounds %struct.usblp, %struct.usblp* %62, i32 0, i32 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.usblp*, %struct.usblp** %3, align 8
  %69 = getelementptr inbounds %struct.usblp, %struct.usblp* %68, i32 0, i32 3
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.usblp*, %struct.usblp** %3, align 8
  %74 = getelementptr inbounds %struct.usblp, %struct.usblp* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.usblp*, %struct.usblp** %3, align 8
  %76 = getelementptr inbounds %struct.usblp, %struct.usblp* %75, i32 0, i32 1
  store i32 1, i32* %76, align 8
  %77 = load %struct.usblp*, %struct.usblp** %3, align 8
  %78 = getelementptr inbounds %struct.usblp, %struct.usblp* %77, i32 0, i32 3
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  br label %82

81:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %89

82:                                               ; preds = %61
  %83 = load %struct.urb*, %struct.urb** %4, align 8
  %84 = call i32 @usb_unanchor_urb(%struct.urb* %83)
  %85 = load %struct.urb*, %struct.urb** %4, align 8
  %86 = call i32 @usb_free_urb(%struct.urb* %85)
  br label %87

87:                                               ; preds = %82, %13
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %81
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.usblp*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
