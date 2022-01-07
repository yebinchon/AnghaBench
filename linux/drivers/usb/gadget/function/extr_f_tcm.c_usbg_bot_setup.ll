; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_usbg_bot_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_usbg_bot_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32 }
%struct.f_uas = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No LUNs configured?\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Limiting the number of luns to 16\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, %struct.usb_ctrlrequest*)* @usbg_bot_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbg_bot_setup(%struct.usb_function* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca %struct.f_uas*, align 8
  %7 = alloca %struct.usb_composite_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %12 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %13 = call %struct.f_uas* @to_f_uas(%struct.usb_function* %12)
  store %struct.f_uas* %13, %struct.f_uas** %6, align 8
  %14 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %15 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %17, align 8
  store %struct.usb_composite_dev* %18, %struct.usb_composite_dev** %7, align 8
  %19 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %24 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %28 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %99 [
    i32 129, label %30
    i32 128, label %96
  ]

30:                                               ; preds = %2
  %31 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %32 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @USB_DIR_IN, align 4
  %35 = load i32, i32* @USB_TYPE_CLASS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %38 = or i32 %36, %37
  %39 = icmp ne i32 %33, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %102

43:                                               ; preds = %30
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %102

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %102

55:                                               ; preds = %49
  %56 = load %struct.f_uas*, %struct.f_uas** %6, align 8
  %57 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @atomic_read(i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %102

67:                                               ; preds = %55
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 15
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @pr_info_once(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 15, i32* %10, align 4
  br label %74

74:                                               ; preds = %72, %67
  %75 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %7, align 8
  %76 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %11, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32*, i32** %11, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %7, align 8
  %83 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i32 1, i32* %85, align 8
  %86 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %7, align 8
  %87 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %7, align 8
  %92 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i32, i32* @GFP_ATOMIC, align 4
  %95 = call i32 @usb_ep_queue(i32 %90, %struct.TYPE_8__* %93, i32 %94)
  store i32 %95, i32* %3, align 4
  br label %102

96:                                               ; preds = %2
  %97 = load %struct.f_uas*, %struct.f_uas** %6, align 8
  %98 = call i32 @bot_enqueue_cmd_cbw(%struct.f_uas* %97)
  store i32 0, i32* %3, align 4
  br label %102

99:                                               ; preds = %2
  %100 = load i32, i32* @ENOTSUPP, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %96, %74, %63, %52, %46, %40
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.f_uas* @to_f_uas(%struct.usb_function*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_info_once(i8*) #1

declare dso_local i32 @usb_ep_queue(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @bot_enqueue_cmd_cbw(%struct.f_uas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
