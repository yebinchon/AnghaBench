; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_dbgp.c_dbgp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_dbgp.c_dbgp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__*, i32, %struct.usb_request* }
%struct.TYPE_5__ = type { i32 }
%struct.usb_request = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_gadget = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.usb_ctrlrequest = type { i64, i32, i32 }

@dbgp = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@USB_REQ_GET_DESCRIPTOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"setup: desc device\0A\00", align 1
@device_desc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"setup: desc debug\0A\00", align 1
@dbg_desc = common dso_local global i32 0, align 4
@USB_REQ_SET_FEATURE = common dso_local global i64 0, align 8
@USB_DEVICE_DEBUG_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"setup: feat debug\0A\00", align 1
@tty_line = common dso_local global i32 0, align 4
@dbgp_setup_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"setup: failure req %x v %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_ctrlrequest*)* @dbgp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgp_setup(%struct.usb_gadget* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %13 = load %struct.usb_request*, %struct.usb_request** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dbgp, i32 0, i32 2), align 8
  store %struct.usb_request* %13, %struct.usb_request** %6, align 8
  %14 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %22 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @USB_REQ_GET_DESCRIPTOR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 8
  switch i32 %32, label %46 [
    i32 128, label %33
    i32 129, label %42
  ]

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dbgp, i32 0, i32 0), align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 4, i32* %12, align 4
  store i8* bitcast (%struct.TYPE_7__* @device_desc to i8*), i8** %11, align 8
  %37 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %38 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @device_desc, i32 0, i32 0), align 4
  br label %47

42:                                               ; preds = %30
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dbgp, i32 0, i32 0), align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 4, i32* %12, align 4
  store i8* bitcast (i32* @dbg_desc to i8*), i8** %11, align 8
  br label %47

46:                                               ; preds = %30
  br label %115

47:                                               ; preds = %42, %33
  store i32 0, i32* %10, align 4
  br label %75

48:                                               ; preds = %2
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @USB_REQ_SET_FEATURE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @USB_DEVICE_DEBUG_MODE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dbgp, i32 0, i32 0), align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %61 = call i32 @dbgp_configure_endpoints(%struct.usb_gadget* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %115

65:                                               ; preds = %56
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dbgp, i32 0, i32 1), align 8
  %67 = load i32, i32* @tty_line, align 4
  %68 = call i32 @gserial_connect(i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %115

72:                                               ; preds = %65
  br label %74

73:                                               ; preds = %52, %48
  br label %115

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74, %47
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @min(i32 %76, i32 %77)
  %79 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %80 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %83 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  %86 = zext i1 %85 to i32
  %87 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %88 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %75
  %92 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %93 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %98 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %11, align 8
  %101 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %102 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i32 %99, i8* %100, i32 %103)
  br label %105

105:                                              ; preds = %96, %91, %75
  %106 = load i32, i32* @dbgp_setup_complete, align 4
  %107 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %108 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %110 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %113 = load i32, i32* @GFP_ATOMIC, align 4
  %114 = call i32 @usb_ep_queue(%struct.TYPE_6__* %111, %struct.usb_request* %112, i32 %113)
  store i32 %114, i32* %3, align 4
  br label %122

115:                                              ; preds = %73, %71, %64, %46
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dbgp, i32 0, i32 0), align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %118, i32 %119)
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %115, %105
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dbgp_configure_endpoints(%struct.usb_gadget*) #1

declare dso_local i32 @gserial_connect(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_ep_queue(%struct.TYPE_6__*, %struct.usb_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
