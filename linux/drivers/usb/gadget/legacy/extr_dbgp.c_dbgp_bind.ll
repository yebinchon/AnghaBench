; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_dbgp.c_dbgp_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_dbgp.c_dbgp_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.usb_gadget*, i32, %struct.TYPE_3__* }
%struct.usb_gadget = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_gadget_driver = type { i32 }

@dbgp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DBGP_REQ_EP0_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bind: success\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"bind: failure (%d:%d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@tty_line = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @dbgp_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgp_bind(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget* %8, %struct.usb_gadget** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dbgp, i32 0, i32 0), align 8
  %9 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %10 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_3__* @usb_ep_alloc_request(i32 %11, i32 %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dbgp, i32 0, i32 2), align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dbgp, i32 0, i32 2), align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load i32, i32* @DBGP_REQ_EP0_LEN, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kmalloc(i32 %20, i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dbgp, i32 0, i32 2), align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dbgp, i32 0, i32 2), align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %45

32:                                               ; preds = %19
  %33 = load i32, i32* @DBGP_REQ_EP0_LEN, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dbgp, i32 0, i32 2), align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %37 = call i32 @dbgp_configure_endpoints(%struct.usb_gadget* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 5, i32* %7, align 4
  br label %45

41:                                               ; preds = %32
  %42 = load %struct.usb_gadget*, %struct.usb_gadget** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dbgp, i32 0, i32 0), align 8
  %43 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %42, i32 0, i32 0
  %44 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %54

45:                                               ; preds = %40, %29, %16
  %46 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %47 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %46, i32 0, i32 0
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %52 = call i32 @dbgp_unbind(%struct.usb_gadget* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %41
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_3__* @usb_ep_alloc_request(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @dbgp_configure_endpoints(%struct.usb_gadget*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dbgp_unbind(%struct.usb_gadget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
