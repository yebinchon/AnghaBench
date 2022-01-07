; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8505_usb_link_status_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8505_usb_link_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_usb = type { i64, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"ab8505_usb_link_status_update %d\0A\00", align 1
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_usb*, i32)* @ab8505_usb_link_status_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8505_usb_link_status_update(%struct.ab8500_usb* %0, i32 %1) #0 {
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
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 128
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %145

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %24 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %143 [
    i32 140, label %26
    i32 135, label %28
    i32 134, label %28
    i32 133, label %28
    i32 132, label %28
    i32 131, label %28
    i32 139, label %55
    i32 128, label %57
    i32 130, label %57
    i32 129, label %57
    i32 138, label %57
    i32 141, label %87
    i32 142, label %87
    i32 136, label %89
    i32 137, label %127
  ]

26:                                               ; preds = %20
  %27 = load i32, i32* @UX500_MUSB_RIDB, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %20, %20, %20, %20, %20, %26
  %29 = load i32, i32* @USB_IDLE, align 4
  %30 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %31 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %33 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %38 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %37, i32 0, i32 2
  store i32 0, i32* %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @UX500_MUSB_RIDB, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* @UX500_MUSB_NONE, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %28
  %45 = load i32, i32* @OTG_STATE_B_IDLE, align 4
  %46 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %47 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %45, i32* %50, align 4
  %51 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %52 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %51, i32 0, i32 1
  %53 = load i32, i32* @USB_EVENT_NONE, align 4
  %54 = call i32 @usb_phy_set_event(%struct.TYPE_4__* %52, i32 %53)
  br label %144

55:                                               ; preds = %20
  %56 = load i32, i32* @UX500_MUSB_RIDC, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %20, %20, %20, %20, %55
  %58 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %59 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @USB_IDLE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load i32, i32* @USB_PERIPHERAL, align 4
  %65 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %66 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %68 = call i32 @ab8500_usb_peri_phy_en(%struct.ab8500_usb* %67)
  %69 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %70 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* @UX500_MUSB_PREPARE, align 4
  %73 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %74 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %73, i32 0, i32 2
  %75 = call i32 @atomic_notifier_call_chain(i32* %71, i32 %72, i32* %74)
  %76 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %77 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %76, i32 0, i32 1
  %78 = load i32, i32* @USB_EVENT_ENUMERATED, align 4
  %79 = call i32 @usb_phy_set_event(%struct.TYPE_4__* %77, i32 %78)
  br label %80

80:                                               ; preds = %63, %57
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @UX500_MUSB_RIDC, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @UX500_MUSB_VBUS, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %80
  br label %144

87:                                               ; preds = %20, %20
  %88 = load i32, i32* @UX500_MUSB_RIDA, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %20, %87
  %90 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %91 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @USB_IDLE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load i32, i32* @USB_HOST, align 4
  %97 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %98 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %100 = call i32 @ab8500_usb_host_phy_en(%struct.ab8500_usb* %99)
  %101 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %102 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* @UX500_MUSB_PREPARE, align 4
  %105 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %106 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %105, i32 0, i32 2
  %107 = call i32 @atomic_notifier_call_chain(i32* %103, i32 %104, i32* %106)
  br label %108

108:                                              ; preds = %95, %89
  %109 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %110 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @UX500_MUSB_RIDA, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* @UX500_MUSB_ID, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %108
  %120 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %121 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %125 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %124, i32 0, i32 2
  %126 = call i32 @atomic_notifier_call_chain(i32* %122, i32 %123, i32* %125)
  br label %144

127:                                              ; preds = %20
  %128 = load i32, i32* @USB_DEDICATED_CHG, align 4
  %129 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %130 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @UX500_MUSB_CHARGER, align 4
  store i32 %131, i32* %6, align 4
  %132 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %133 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %137 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %136, i32 0, i32 2
  %138 = call i32 @atomic_notifier_call_chain(i32* %134, i32 %135, i32* %137)
  %139 = load %struct.ab8500_usb*, %struct.ab8500_usb** %4, align 8
  %140 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %139, i32 0, i32 1
  %141 = load i32, i32* @USB_EVENT_CHARGER, align 4
  %142 = call i32 @usb_phy_set_event(%struct.TYPE_4__* %140, i32 %141)
  br label %144

143:                                              ; preds = %20
  br label %144

144:                                              ; preds = %143, %127, %119, %86, %44
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %19
  %146 = load i32, i32* %3, align 4
  ret i32 %146
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
