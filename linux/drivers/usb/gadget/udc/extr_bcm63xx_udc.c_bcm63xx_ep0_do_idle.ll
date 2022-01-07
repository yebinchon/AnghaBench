; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_do_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_ep0_do_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_udc = type { i64, i32, i64, %struct.TYPE_2__, i32, i32*, i32*, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@EP0_IN_FAKE_STATUS_PHASE = common dso_local global i8* null, align 8
@EP0_IDLE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@IUDMA_EP0_RXCHAN = common dso_local global i64 0, align 8
@EP0_SHUTDOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"nuking unexpected reply\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm63xx_udc*)* @bcm63xx_ep0_do_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_ep0_do_idle(%struct.bcm63xx_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm63xx_udc*, align 8
  store %struct.bcm63xx_udc* %0, %struct.bcm63xx_udc** %3, align 8
  %4 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %5 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %4, i32 0, i32 11
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %10 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %9, i32 0, i32 11
  store i64 0, i64* %10, align 8
  br label %115

11:                                               ; preds = %1
  %12 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %13 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %12, i32 0, i32 10
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %18 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %17, i32 0, i32 10
  store i64 0, i64* %18, align 8
  %19 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %20 = call i64 @bcm63xx_ep0_spoof_set_cfg(%struct.bcm63xx_udc* %19)
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i8*, i8** @EP0_IN_FAKE_STATUS_PHASE, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %26 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %22, %16
  br label %114

28:                                               ; preds = %11
  %29 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %30 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %29, i32 0, i32 9
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %35 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %34, i32 0, i32 9
  store i64 0, i64* %35, align 8
  %36 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %37 = call i64 @bcm63xx_ep0_spoof_set_iface(%struct.bcm63xx_udc* %36)
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i8*, i8** @EP0_IN_FAKE_STATUS_PHASE, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %43 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %39, %33
  br label %113

45:                                               ; preds = %28
  %46 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %47 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %52 = call i64 @bcm63xx_ep0_do_setup(%struct.bcm63xx_udc* %51)
  %53 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %54 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %56 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EP0_IDLE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  br label %64

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ %62, %60 ], [ 0, %63 ]
  store i32 %65, i32* %2, align 4
  br label %116

66:                                               ; preds = %45
  %67 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %68 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %67, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %73 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %72, i32 0, i32 8
  store i64 0, i64* %73, align 8
  %74 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %75 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %74, i32 0, i32 7
  store i64 0, i64* %75, align 8
  %76 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %77 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %76, i32 0, i32 6
  store i32* null, i32** %77, align 8
  %78 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %79 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %80 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @IUDMA_EP0_RXCHAN, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = call i32 @iudma_reset_channel(%struct.bcm63xx_udc* %78, i32* %83)
  %85 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %86 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %85, i32 0, i32 4
  %87 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %88 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @usb_gadget_unmap_request(i32* %86, i32* %89, i32 0)
  %91 = call i32 (...) @mb()
  %92 = load i64, i64* @EP0_SHUTDOWN, align 8
  %93 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %94 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %111

95:                                               ; preds = %66
  %96 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %97 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %102 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dev_warn(i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %105 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %3, align 8
  %106 = call i32 @bcm63xx_ep0_nuke_reply(%struct.bcm63xx_udc* %105, i32 0)
  br label %110

107:                                              ; preds = %95
  %108 = load i32, i32* @EAGAIN, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %116

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %71
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112, %44
  br label %114

114:                                              ; preds = %113, %27
  br label %115

115:                                              ; preds = %114, %8
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %107, %64
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @bcm63xx_ep0_spoof_set_cfg(%struct.bcm63xx_udc*) #1

declare dso_local i64 @bcm63xx_ep0_spoof_set_iface(%struct.bcm63xx_udc*) #1

declare dso_local i64 @bcm63xx_ep0_do_setup(%struct.bcm63xx_udc*) #1

declare dso_local i32 @iudma_reset_channel(%struct.bcm63xx_udc*, i32*) #1

declare dso_local i32 @usb_gadget_unmap_request(i32*, i32*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @bcm63xx_ep0_nuke_reply(%struct.bcm63xx_udc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
