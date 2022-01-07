; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_ch9setfeature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_ch9setfeature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_udc = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32 }

@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_STATE_CONFIGURED = common dso_local global i32 0, align 4
@USB_STATE_ADDRESS = common dso_local global i32 0, align 4
@USB_STATE_DEFAULT = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@EP_DIR_IN = common dso_local global i32 0, align 4
@EP_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_udc*, %struct.usb_ctrlrequest*)* @ch9setfeature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch9setfeature(%struct.mv_udc* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.mv_udc*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mv_udc* %0, %struct.mv_udc** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %7 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %8 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @USB_TYPE_MASK, align 4
  %11 = load i32, i32* @USB_RECIP_MASK, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %15 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %16 = or i32 %14, %15
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %2
  %19 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %69 [
    i32 130, label %22
    i32 129, label %25
  ]

22:                                               ; preds = %18
  %23 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %24 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %70

25:                                               ; preds = %18
  %26 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %27 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 255
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %33 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @USB_SPEED_HIGH, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31, %25
  %39 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %40 = call i32 @ep0_stall(%struct.mv_udc* %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %43 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %49 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @USB_STATE_ADDRESS, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %55 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @USB_STATE_DEFAULT, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %61 = call i32 @ep0_stall(%struct.mv_udc* %60)
  br label %62

62:                                               ; preds = %59, %53, %47, %41
  %63 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %64 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %65 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 8
  %68 = call i32 @mv_udc_testmode(%struct.mv_udc* %63, i32 %67)
  br label %145

69:                                               ; preds = %18
  br label %145

70:                                               ; preds = %22
  br label %136

71:                                               ; preds = %2
  %72 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %73 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @USB_TYPE_MASK, align 4
  %76 = load i32, i32* @USB_RECIP_MASK, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %80 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %81 = or i32 %79, %80
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %134

83:                                               ; preds = %71
  %84 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %85 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %132 [
    i32 128, label %87
  ]

87:                                               ; preds = %83
  %88 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %89 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %5, align 4
  %93 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %94 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %87
  %100 = load i32, i32* @EP_DIR_IN, align 4
  br label %103

101:                                              ; preds = %87
  %102 = load i32, i32* @EP_DIR_OUT, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  store i32 %104, i32* %6, align 4
  %105 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %106 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %103
  %110 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %111 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %117 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114, %109, %103
  br label %145

121:                                              ; preds = %114
  %122 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %123 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %122, i32 0, i32 2
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @ep_set_stall(%struct.mv_udc* %125, i32 %126, i32 %127, i32 1)
  %129 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %130 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %129, i32 0, i32 2
  %131 = call i32 @spin_lock(i32* %130)
  br label %133

132:                                              ; preds = %83
  br label %145

133:                                              ; preds = %121
  br label %135

134:                                              ; preds = %71
  br label %145

135:                                              ; preds = %133
  br label %136

136:                                              ; preds = %135, %70
  %137 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %138 = load i32, i32* @EP_DIR_IN, align 4
  %139 = call i64 @udc_prime_status(%struct.mv_udc* %137, i32 %138, i32 0, i32 1)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %143 = call i32 @ep0_stall(%struct.mv_udc* %142)
  br label %144

144:                                              ; preds = %141, %136
  br label %145

145:                                              ; preds = %144, %134, %132, %120, %69, %62
  ret void
}

declare dso_local i32 @ep0_stall(%struct.mv_udc*) #1

declare dso_local i32 @mv_udc_testmode(%struct.mv_udc*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ep_set_stall(%struct.mv_udc*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @udc_prime_status(%struct.mv_udc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
