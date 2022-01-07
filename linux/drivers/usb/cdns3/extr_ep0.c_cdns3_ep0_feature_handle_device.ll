; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_ep0_feature_handle_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_ep0_feature_handle_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_ctrlrequest = type { i32, i32 }

@USB_STATE_CONFIGURED = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_CMD_STMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3_device*, %struct.usb_ctrlrequest*, i32)* @cdns3_ep0_feature_handle_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_ep0_feature_handle_device(%struct.cdns3_device* %0, %struct.usb_ctrlrequest* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdns3_device*, align 8
  %6 = alloca %struct.usb_ctrlrequest*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdns3_device* %0, %struct.cdns3_device** %5, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %14 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %18 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %22 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %121 [
    i32 131, label %26
    i32 129, label %34
    i32 128, label %53
    i32 132, label %72
    i32 130, label %75
  ]

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %33 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %124

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @USB_SPEED_SUPER, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %126

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %52 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %124

53:                                               ; preds = %3
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @USB_SPEED_SUPER, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %53
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %126

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %71 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %124

72:                                               ; preds = %3
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %124

75:                                               ; preds = %3
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @USB_SPEED_HIGH, align 4
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79, %75
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %126

86:                                               ; preds = %79
  %87 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %88 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* %12, align 4
  %95 = and i32 %94, 255
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93, %86
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %126

100:                                              ; preds = %93
  %101 = load i32, i32* %12, align 4
  %102 = ashr i32 %101, 8
  switch i32 %102, label %117 [
    i32 136, label %103
    i32 135, label %103
    i32 133, label %103
    i32 134, label %103
  ]

103:                                              ; preds = %100, %100, %100, %100
  %104 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %105 = call i32 @cdns3_ep0_complete_setup(%struct.cdns3_device* %104, i32 0, i32 1)
  %106 = call i32 @mdelay(i32 1)
  %107 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %108 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %107, i32 0, i32 3
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* @USB_CMD_STMODE, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @USB_STS_TMODE_SEL(i32 %113)
  %115 = or i32 %111, %114
  %116 = call i32 @cdns3_set_register_bit(i32* %110, i32 %115)
  br label %120

117:                                              ; preds = %100
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %117, %103
  br label %124

121:                                              ; preds = %3
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %121, %120, %72, %64, %45, %26
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %97, %83, %61, %42
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cdns3_ep0_complete_setup(%struct.cdns3_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @cdns3_set_register_bit(i32*, i32) #1

declare dso_local i32 @USB_STS_TMODE_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
