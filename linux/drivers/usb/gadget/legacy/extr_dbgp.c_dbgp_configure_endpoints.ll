; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_dbgp.c_dbgp_configure_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_dbgp.c_dbgp_configure_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.usb_gadget = type { i32 }

@i_desc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@dbgp = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@USB_DEBUG_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@o_desc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@dbg_desc = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"ep config: failure (%d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @dbgp_configure_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgp_configure_endpoints(%struct.usb_gadget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  %5 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %6 = call i32 @usb_ep_autoconfig_reset(%struct.usb_gadget* %5)
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %8 = call i8* @usb_ep_autoconfig(%struct.usb_gadget* %7, %struct.TYPE_14__* @i_desc)
  %9 = bitcast i8* %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dbgp, i32 0, i32 3), align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dbgp, i32 0, i32 3), align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load i32, i32* @USB_DEBUG_MAX_PACKET_SIZE, align 4
  %15 = call i8* @cpu_to_le16(i32 %14)
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i_desc, i32 0, i32 1), align 8
  %16 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %17 = call i8* @usb_ep_autoconfig(%struct.usb_gadget* %16, %struct.TYPE_14__* @o_desc)
  %18 = bitcast i8* %17 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dbgp, i32 0, i32 2), align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dbgp, i32 0, i32 2), align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 2, i32* %4, align 4
  br label %27

22:                                               ; preds = %13
  %23 = load i32, i32* @USB_DEBUG_MAX_PACKET_SIZE, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @o_desc, i32 0, i32 1), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @i_desc, i32 0, i32 0), align 8
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dbg_desc, i32 0, i32 1), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @o_desc, i32 0, i32 0), align 8
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dbg_desc, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %34

27:                                               ; preds = %21, %12
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dbgp, i32 0, i32 0), align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %22
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @usb_ep_autoconfig_reset(%struct.usb_gadget*) #1

declare dso_local i8* @usb_ep_autoconfig(%struct.usb_gadget*, %struct.TYPE_14__*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
