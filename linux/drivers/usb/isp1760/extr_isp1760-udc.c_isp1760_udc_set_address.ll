; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_set_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_udc = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"invalid device address %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USB_STATE_DEFAULT = common dso_local global i32 0, align 4
@USB_STATE_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"can't set address in state %u\0A\00", align 1
@DC_ADDRESS = common dso_local global i32 0, align 4
@DC_DEVEN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp1760_udc*, i32)* @isp1760_udc_set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1760_udc_set_address(%struct.isp1760_udc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp1760_udc*, align 8
  %5 = alloca i32, align 4
  store %struct.isp1760_udc* %0, %struct.isp1760_udc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 127
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %10 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %75

18:                                               ; preds = %2
  %19 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %20 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @USB_STATE_DEFAULT, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %18
  %26 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %27 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @USB_STATE_ADDRESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %34 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %39 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %25, %18
  %46 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %47 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %46, i32 0, i32 2
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @USB_STATE_ADDRESS, align 4
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @USB_STATE_DEFAULT, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @usb_gadget_set_state(%struct.TYPE_4__* %47, i32 %55)
  %57 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %58 = load i32, i32* @DC_ADDRESS, align 4
  %59 = load i32, i32* @DC_DEVEN, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @isp1760_udc_write(%struct.isp1760_udc* %57, i32 %58, i32 %61)
  %63 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %64 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %67 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* @USB_DIR_OUT, align 4
  %71 = call i32 @isp1760_udc_ctrl_send_status(i32* %69, i32 %70)
  %72 = load %struct.isp1760_udc*, %struct.isp1760_udc** %4, align 8
  %73 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %54, %32, %8
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @usb_gadget_set_state(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @isp1760_udc_write(%struct.isp1760_udc*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @isp1760_udc_ctrl_send_status(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
