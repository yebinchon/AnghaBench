; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tahvo.c_check_vbus_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-tahvo.c_check_vbus_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tahvo_usb = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.retu_dev = type { i32 }

@TAHVO_REG_IDSR = common dso_local global i32 0, align 4
@TAHVO_STAT_VBUS = common dso_local global i32 0, align 4
@USB_EVENT_ENUMERATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"USB cable connected\0A\00", align 1
@USB_EVENT_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"USB cable disconnected\0A\00", align 1
@EXTCON_USB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"vbus_state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tahvo_usb*)* @check_vbus_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_vbus_state(%struct.tahvo_usb* %0) #0 {
  %2 = alloca %struct.tahvo_usb*, align 8
  %3 = alloca %struct.retu_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tahvo_usb* %0, %struct.tahvo_usb** %2, align 8
  %6 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %7 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.retu_dev* @dev_get_drvdata(i32 %11)
  store %struct.retu_dev* %12, %struct.retu_dev** %3, align 8
  %13 = load %struct.retu_dev*, %struct.retu_dev** %3, align 8
  %14 = load i32, i32* @TAHVO_REG_IDSR, align 4
  %15 = call i32 @retu_read(%struct.retu_dev* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TAHVO_STAT_VBUS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %1
  %21 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %22 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %59 [
    i32 129, label %27
    i32 130, label %53
  ]

27:                                               ; preds = %20
  %28 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %29 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %37 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usb_gadget_vbus_connect(i32 %41)
  br label %43

43:                                               ; preds = %35, %27
  %44 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %45 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 128, i32* %48, align 4
  %49 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %50 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %49, i32 0, i32 3
  %51 = load i32, i32* @USB_EVENT_ENUMERATED, align 4
  %52 = call i32 @usb_phy_set_event(%struct.TYPE_7__* %50, i32 %51)
  br label %60

53:                                               ; preds = %20
  %54 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %55 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 131, i32* %58, align 4
  br label %60

59:                                               ; preds = %20
  br label %60

60:                                               ; preds = %59, %53, %43
  %61 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %62 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @dev_info(%struct.TYPE_8__* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %112

66:                                               ; preds = %1
  %67 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %68 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %105 [
    i32 128, label %73
    i32 131, label %99
  ]

73:                                               ; preds = %66
  %74 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %75 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %83 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @usb_gadget_vbus_disconnect(i32 %87)
  br label %89

89:                                               ; preds = %81, %73
  %90 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %91 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 129, i32* %94, align 4
  %95 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %96 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %95, i32 0, i32 3
  %97 = load i32, i32* @USB_EVENT_NONE, align 4
  %98 = call i32 @usb_phy_set_event(%struct.TYPE_7__* %96, i32 %97)
  br label %106

99:                                               ; preds = %66
  %100 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %101 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 130, i32* %104, align 4
  br label %106

105:                                              ; preds = %66
  br label %106

106:                                              ; preds = %105, %99, %89
  %107 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %108 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = call i32 @dev_info(%struct.TYPE_8__* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %106, %60
  %113 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %114 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @TAHVO_STAT_VBUS, align 4
  %118 = and i32 %116, %117
  %119 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %120 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %123 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %121, %124
  br i1 %125, label %126, label %141

126:                                              ; preds = %112
  %127 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %128 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @EXTCON_USB, align 4
  %131 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %132 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @extcon_set_state_sync(i32 %129, i32 %130, i32 %133)
  %135 = load %struct.tahvo_usb*, %struct.tahvo_usb** %2, align 8
  %136 = getelementptr inbounds %struct.tahvo_usb, %struct.tahvo_usb* %135, i32 0, i32 1
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = call i32 @sysfs_notify(i32* %139, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %141

141:                                              ; preds = %126, %112
  ret void
}

declare dso_local %struct.retu_dev* @dev_get_drvdata(i32) #1

declare dso_local i32 @retu_read(%struct.retu_dev*, i32) #1

declare dso_local i32 @usb_gadget_vbus_connect(i32) #1

declare dso_local i32 @usb_phy_set_event(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @usb_gadget_vbus_disconnect(i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
