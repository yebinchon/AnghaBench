; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_link_status_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_link_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_usb = type { i64, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"ab8500_usb_link_status_update %d\0A\00", align 1
@UX500_MUSB_RIDB = common dso_local global i32 0, align 4
@USB_IDLE = common dso_local global i32 0, align 4
@UX500_MUSB_NONE = common dso_local global i32 0, align 4
@OTG_STATE_B_IDLE = common dso_local global i32 0, align 4
@USB_EVENT_NONE = common dso_local global i32 0, align 4
@UX500_MUSB_RIDC = common dso_local global i32 0, align 4
@USB_PERIPHERAL = common dso_local global i32 0, align 4
@UX500_MUSB_PREPARE = common dso_local global i32 0, align 4
@USB_EVENT_ENUMERATED = common dso_local global i32 0, align 4
@UX500_MUSB_VBUS = common dso_local global i32 0, align 4
@UX500_MUSB_RIDA = common dso_local global i32 0, align 4
@USB_HOST = common dso_local global i32 0, align 4
@UX500_MUSB_ID = common dso_local global i32 0, align 4
@USB_DEDICATED_CHG = common dso_local global i32 0, align 4
@UX500_MUSB_CHARGER = common dso_local global i32 0, align 4
@USB_EVENT_CHARGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_usb*, i32)* @ab8500_usb_link_status_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_usb_link_status_update(%struct.ab8500_usb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ab8500_usb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ab8500_usb* %0, %struct.ab8500_usb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %8 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %13 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 137
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 130
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16
  store i32 0, i32* %3, align 4
  br label %157

23:                                               ; preds = %19, %2
  %24 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %25 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 143
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %157

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %36 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %156 [
    i32 142, label %38
    i32 133, label %40
    i32 132, label %40
    i32 139, label %67
    i32 141, label %67
    i32 140, label %67
    i32 128, label %69
    i32 130, label %69
    i32 129, label %69
    i32 134, label %69
    i32 136, label %69
    i32 135, label %69
    i32 143, label %99
    i32 137, label %101
    i32 138, label %139
    i32 131, label %155
  ]

38:                                               ; preds = %32
  %39 = load i32, i32* @UX500_MUSB_RIDB, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %32, %32, %38
  %41 = load i32, i32* @USB_IDLE, align 4
  %42 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %43 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %45 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %50 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %49, i32 0, i32 2
  store i32 0, i32* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @UX500_MUSB_RIDB, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* @UX500_MUSB_NONE, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %40
  %57 = load i32, i32* @OTG_STATE_B_IDLE, align 4
  %58 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %59 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %57, i32* %62, align 4
  %63 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %64 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %63, i32 0, i32 1
  %65 = load i32, i32* @USB_EVENT_NONE, align 4
  %66 = call i32 @usb_phy_set_event(%struct.TYPE_4__* %64, i32 %65)
  br label %156

67:                                               ; preds = %32, %32, %32
  %68 = load i32, i32* @UX500_MUSB_RIDC, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %32, %32, %32, %32, %32, %32, %67
  %70 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %71 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @USB_IDLE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = load i32, i32* @USB_PERIPHERAL, align 4
  %77 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %78 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %80 = call i32 @ab8500_usb_peri_phy_en(%struct.ab8500_usb* %79)
  %81 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %82 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* @UX500_MUSB_PREPARE, align 4
  %85 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %86 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %85, i32 0, i32 2
  %87 = call i32 @atomic_notifier_call_chain(i32* %83, i32 %84, i32* %86)
  %88 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %89 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %88, i32 0, i32 1
  %90 = load i32, i32* @USB_EVENT_ENUMERATED, align 4
  %91 = call i32 @usb_phy_set_event(%struct.TYPE_4__* %89, i32 %90)
  br label %92

92:                                               ; preds = %75, %69
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @UX500_MUSB_RIDC, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @UX500_MUSB_VBUS, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %92
  br label %156

99:                                               ; preds = %32
  %100 = load i32, i32* @UX500_MUSB_RIDA, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %32, %99
  %102 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %103 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @USB_IDLE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %101
  %108 = load i32, i32* @USB_HOST, align 4
  %109 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %110 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %112 = call i32 @ab8500_usb_host_phy_en(%struct.ab8500_usb* %111)
  %113 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %114 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* @UX500_MUSB_PREPARE, align 4
  %117 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %118 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %117, i32 0, i32 2
  %119 = call i32 @atomic_notifier_call_chain(i32* %115, i32 %116, i32* %118)
  br label %120

120:                                              ; preds = %107, %101
  %121 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %122 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @UX500_MUSB_RIDA, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* @UX500_MUSB_ID, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %129, %120
  %132 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %133 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %137 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %136, i32 0, i32 2
  %138 = call i32 @atomic_notifier_call_chain(i32* %134, i32 %135, i32* %137)
  br label %156

139:                                              ; preds = %32
  %140 = load i32, i32* @USB_DEDICATED_CHG, align 4
  %141 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %142 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @UX500_MUSB_CHARGER, align 4
  store i32 %143, i32* %6, align 4
  %144 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %145 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %149 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %148, i32 0, i32 2
  %150 = call i32 @atomic_notifier_call_chain(i32* %146, i32 %147, i32* %149)
  %151 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %152 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %151, i32 0, i32 1
  %153 = load i32, i32* @USB_EVENT_CHARGER, align 4
  %154 = call i32 @usb_phy_set_event(%struct.TYPE_4__* %152, i32 %153)
  br label %156

155:                                              ; preds = %32
  br label %156

156:                                              ; preds = %32, %155, %139, %131, %98, %56
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %31, %22
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @usb_phy_set_event(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ab8500_usb_peri_phy_en(%struct.ab8500_usb*) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, i32*) #1

declare dso_local i32 @ab8500_usb_host_phy_en(%struct.ab8500_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
