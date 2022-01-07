; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i64, i32, i32, %struct.urbp* }
%struct.urbp = type { i32, i64, %struct.urb* }
%struct.dummy_hcd = type { i64, %struct.TYPE_2__*, i32, %struct.urbp*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"usb_device address has changed!\0A\00", align 1
@PIPE_CONTROL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @dummy_urb_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_urb_enqueue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dummy_hcd*, align 8
  %9 = alloca %struct.urbp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.urbp* @kmalloc(i32 24, i32 %12)
  store %struct.urbp* %13, %struct.urbp** %9, align 8
  %14 = load %struct.urbp*, %struct.urbp** %9, align 8
  %15 = icmp ne %struct.urbp* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %128

19:                                               ; preds = %3
  %20 = load %struct.urb*, %struct.urb** %6, align 8
  %21 = load %struct.urbp*, %struct.urbp** %9, align 8
  %22 = getelementptr inbounds %struct.urbp, %struct.urbp* %21, i32 0, i32 2
  store %struct.urb* %20, %struct.urb** %22, align 8
  %23 = load %struct.urbp*, %struct.urbp** %9, align 8
  %24 = getelementptr inbounds %struct.urbp, %struct.urbp* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %26 = call %struct.dummy_hcd* @hcd_to_dummy_hcd(%struct.usb_hcd* %25)
  store %struct.dummy_hcd* %26, %struct.dummy_hcd** %8, align 8
  %27 = load %struct.dummy_hcd*, %struct.dummy_hcd** %8, align 8
  %28 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.dummy_hcd*, %struct.dummy_hcd** %8, align 8
  %34 = load %struct.urb*, %struct.urb** %6, align 8
  %35 = call i32 @dummy_validate_stream(%struct.dummy_hcd* %33, %struct.urb* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %19
  %39 = load %struct.urbp*, %struct.urbp** %9, align 8
  %40 = call i32 @kfree(%struct.urbp* %39)
  br label %120

41:                                               ; preds = %19
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %43 = load %struct.urb*, %struct.urb** %6, align 8
  %44 = call i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd* %42, %struct.urb* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.urbp*, %struct.urbp** %9, align 8
  %49 = call i32 @kfree(%struct.urbp* %48)
  br label %120

50:                                               ; preds = %41
  %51 = load %struct.dummy_hcd*, %struct.dummy_hcd** %8, align 8
  %52 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load %struct.urb*, %struct.urb** %6, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dummy_hcd*, %struct.dummy_hcd** %8, align 8
  %60 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.dummy_hcd*, %struct.dummy_hcd** %8, align 8
  %62 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @usb_get_dev(i64 %63)
  br label %81

65:                                               ; preds = %50
  %66 = load %struct.dummy_hcd*, %struct.dummy_hcd** %8, align 8
  %67 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.urb*, %struct.urb** %6, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load %struct.dummy_hcd*, %struct.dummy_hcd** %8, align 8
  %78 = call i32 @dummy_dev(%struct.dummy_hcd* %77)
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %65
  br label %81

81:                                               ; preds = %80, %55
  %82 = load %struct.urbp*, %struct.urbp** %9, align 8
  %83 = getelementptr inbounds %struct.urbp, %struct.urbp* %82, i32 0, i32 0
  %84 = load %struct.dummy_hcd*, %struct.dummy_hcd** %8, align 8
  %85 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %84, i32 0, i32 4
  %86 = call i32 @list_add_tail(i32* %83, i32* %85)
  %87 = load %struct.urbp*, %struct.urbp** %9, align 8
  %88 = load %struct.urb*, %struct.urb** %6, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 3
  store %struct.urbp* %87, %struct.urbp** %89, align 8
  %90 = load %struct.dummy_hcd*, %struct.dummy_hcd** %8, align 8
  %91 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %90, i32 0, i32 3
  %92 = load %struct.urbp*, %struct.urbp** %91, align 8
  %93 = icmp ne %struct.urbp* %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %81
  %95 = load %struct.urbp*, %struct.urbp** %9, align 8
  %96 = load %struct.dummy_hcd*, %struct.dummy_hcd** %8, align 8
  %97 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %96, i32 0, i32 3
  store %struct.urbp* %95, %struct.urbp** %97, align 8
  br label %98

98:                                               ; preds = %94, %81
  %99 = load %struct.urb*, %struct.urb** %6, align 8
  %100 = getelementptr inbounds %struct.urb, %struct.urb* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @usb_pipetype(i32 %101)
  %103 = load i64, i64* @PIPE_CONTROL, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.urb*, %struct.urb** %6, align 8
  %107 = getelementptr inbounds %struct.urb, %struct.urb* %106, i32 0, i32 1
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %98
  %109 = load %struct.dummy_hcd*, %struct.dummy_hcd** %8, align 8
  %110 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %109, i32 0, i32 2
  %111 = call i32 @timer_pending(i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %108
  %114 = load %struct.dummy_hcd*, %struct.dummy_hcd** %8, align 8
  %115 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %114, i32 0, i32 2
  %116 = load i64, i64* @jiffies, align 8
  %117 = add nsw i64 %116, 1
  %118 = call i32 @mod_timer(i32* %115, i64 %117)
  br label %119

119:                                              ; preds = %113, %108
  br label %120

120:                                              ; preds = %119, %47, %38
  %121 = load %struct.dummy_hcd*, %struct.dummy_hcd** %8, align 8
  %122 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %120, %16
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.urbp* @kmalloc(i32, i32) #1

declare dso_local %struct.dummy_hcd* @hcd_to_dummy_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dummy_validate_stream(%struct.dummy_hcd*, %struct.urb*) #1

declare dso_local i32 @kfree(%struct.urbp*) #1

declare dso_local i32 @usb_hcd_link_urb_to_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @usb_get_dev(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dummy_dev(%struct.dummy_hcd*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @usb_pipetype(i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
