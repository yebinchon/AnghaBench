; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_usblp.c_usblp_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usblp = type { i32, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@USBLP_REQ_GET_ID = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USBLP_CTL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"usblp_control_msg: rq: 0x%02x dir: %d recip: %d value: %d idx: %d len: %#x result: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usblp*, i32, i32, i32, i32, i32, i8*, i32)* @usblp_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usblp_ctrl_msg(%struct.usblp* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.usblp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.usblp* %0, %struct.usblp** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %19 = load %struct.usblp*, %struct.usblp** %9, align 8
  %20 = getelementptr inbounds %struct.usblp, %struct.usblp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @USBLP_REQ_GET_ID, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @USB_TYPE_CLASS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.usblp*, %struct.usblp** %9, align 8
  %31 = getelementptr inbounds %struct.usblp, %struct.usblp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 8
  %34 = load %struct.usblp*, %struct.usblp** %9, align 8
  %35 = getelementptr inbounds %struct.usblp, %struct.usblp* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.usblp*, %struct.usblp** %9, align 8
  %38 = getelementptr inbounds %struct.usblp, %struct.usblp* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %33, %42
  store i32 %43, i32* %18, align 4
  br label %44

44:                                               ; preds = %29, %25, %8
  %45 = load %struct.usblp*, %struct.usblp** %9, align 8
  %46 = getelementptr inbounds %struct.usblp, %struct.usblp* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.usblp*, %struct.usblp** %9, align 8
  %52 = getelementptr inbounds %struct.usblp, %struct.usblp* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @usb_rcvctrlpipe(i32 %53, i32 0)
  br label %60

55:                                               ; preds = %44
  %56 = load %struct.usblp*, %struct.usblp** %9, align 8
  %57 = getelementptr inbounds %struct.usblp, %struct.usblp* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @usb_sndctrlpipe(i32 %58, i32 0)
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i32 [ %54, %50 ], [ %59, %55 ]
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %13, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @USBLP_CTL_TIMEOUT, align 4
  %73 = call i32 @usb_control_msg(i32 %47, i32 %61, i32 %62, i32 %67, i32 %68, i32 %69, i8* %70, i32 %71, i32 %72)
  store i32 %73, i32* %17, align 4
  %74 = load %struct.usblp*, %struct.usblp** %9, align 8
  %75 = getelementptr inbounds %struct.usblp, %struct.usblp* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = call i32 @dev_dbg(i32* %77, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %17, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %60
  %93 = load i32, i32* %17, align 4
  br label %95

94:                                               ; preds = %60
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i32 [ %93, %92 ], [ 0, %94 ]
  ret i32 %96
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
