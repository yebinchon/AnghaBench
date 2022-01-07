; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_omap2430.c_omap_musb_set_mailbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_omap2430.c_omap_musb_set_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap2430_glue = type { i32, i32 }
%struct.musb = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.musb_hdrc_platform_data = type { %struct.omap_musb_board_data* }
%struct.omap_musb_board_data = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"ID GND\0A\00", align 1
@OTG_STATE_A_IDLE = common dso_local global i32 0, align 4
@USB_EVENT_ID = common dso_local global i32 0, align 4
@USB_MODE_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"VBUS Connect\0A\00", align 1
@OTG_STATE_B_IDLE = common dso_local global i32 0, align 4
@USB_EVENT_VBUS = common dso_local global i32 0, align 4
@USB_MODE_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"VBUS Disconnect\0A\00", align 1
@USB_EVENT_NONE = common dso_local global i32 0, align 4
@MUSB_INTERFACE_UTMI = common dso_local global i32 0, align 4
@USB_MODE_DISCONNECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"ID float\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap2430_glue*)* @omap_musb_set_mailbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_musb_set_mailbox(%struct.omap2430_glue* %0) #0 {
  %2 = alloca %struct.omap2430_glue*, align 8
  %3 = alloca %struct.musb*, align 8
  %4 = alloca %struct.musb_hdrc_platform_data*, align 8
  %5 = alloca %struct.omap_musb_board_data*, align 8
  store %struct.omap2430_glue* %0, %struct.omap2430_glue** %2, align 8
  %6 = load %struct.omap2430_glue*, %struct.omap2430_glue** %2, align 8
  %7 = call %struct.musb* @glue_to_musb(%struct.omap2430_glue* %6)
  store %struct.musb* %7, %struct.musb** %3, align 8
  %8 = load %struct.musb*, %struct.musb** %3, align 8
  %9 = getelementptr inbounds %struct.musb, %struct.musb* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.musb_hdrc_platform_data* @dev_get_platdata(i32 %10)
  store %struct.musb_hdrc_platform_data* %11, %struct.musb_hdrc_platform_data** %4, align 8
  %12 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %4, align 8
  %13 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %12, i32 0, i32 0
  %14 = load %struct.omap_musb_board_data*, %struct.omap_musb_board_data** %13, align 8
  store %struct.omap_musb_board_data* %14, %struct.omap_musb_board_data** %5, align 8
  %15 = load %struct.musb*, %struct.musb** %3, align 8
  %16 = getelementptr inbounds %struct.musb, %struct.musb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  %19 = load %struct.omap2430_glue*, %struct.omap2430_glue** %2, align 8
  %20 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %110 [
    i32 130, label %22
    i32 128, label %52
    i32 131, label %74
    i32 129, label %74
  ]

22:                                               ; preds = %1
  %23 = load %struct.musb*, %struct.musb** %3, align 8
  %24 = getelementptr inbounds %struct.musb, %struct.musb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @OTG_STATE_A_IDLE, align 4
  %28 = load %struct.musb*, %struct.musb** %3, align 8
  %29 = getelementptr inbounds %struct.musb, %struct.musb* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %27, i32* %33, align 4
  %34 = load i32, i32* @USB_EVENT_ID, align 4
  %35 = load %struct.musb*, %struct.musb** %3, align 8
  %36 = getelementptr inbounds %struct.musb, %struct.musb* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 8
  %39 = load %struct.musb*, %struct.musb** %3, align 8
  %40 = getelementptr inbounds %struct.musb, %struct.musb* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %22
  %44 = load %struct.omap2430_glue*, %struct.omap2430_glue** %2, align 8
  %45 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @USB_MODE_HOST, align 4
  %48 = call i32 @omap_control_usb_set_mode(i32 %46, i32 %47)
  %49 = load %struct.musb*, %struct.musb** %3, align 8
  %50 = call i32 @omap2430_musb_set_vbus(%struct.musb* %49, i32 1)
  br label %51

51:                                               ; preds = %43, %22
  br label %115

52:                                               ; preds = %1
  %53 = load %struct.musb*, %struct.musb** %3, align 8
  %54 = getelementptr inbounds %struct.musb, %struct.musb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @OTG_STATE_B_IDLE, align 4
  %58 = load %struct.musb*, %struct.musb** %3, align 8
  %59 = getelementptr inbounds %struct.musb, %struct.musb* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %57, i32* %63, align 4
  %64 = load i32, i32* @USB_EVENT_VBUS, align 4
  %65 = load %struct.musb*, %struct.musb** %3, align 8
  %66 = getelementptr inbounds %struct.musb, %struct.musb* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  %69 = load %struct.omap2430_glue*, %struct.omap2430_glue** %2, align 8
  %70 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @USB_MODE_DEVICE, align 4
  %73 = call i32 @omap_control_usb_set_mode(i32 %71, i32 %72)
  br label %115

74:                                               ; preds = %1, %1
  %75 = load %struct.musb*, %struct.musb** %3, align 8
  %76 = getelementptr inbounds %struct.musb, %struct.musb* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @USB_EVENT_NONE, align 4
  %80 = load %struct.musb*, %struct.musb** %3, align 8
  %81 = getelementptr inbounds %struct.musb, %struct.musb* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 8
  %84 = load %struct.musb*, %struct.musb** %3, align 8
  %85 = getelementptr inbounds %struct.musb, %struct.musb* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %74
  %89 = load %struct.musb*, %struct.musb** %3, align 8
  %90 = call i32 @omap2430_musb_set_vbus(%struct.musb* %89, i32 0)
  br label %91

91:                                               ; preds = %88, %74
  %92 = load %struct.omap_musb_board_data*, %struct.omap_musb_board_data** %5, align 8
  %93 = getelementptr inbounds %struct.omap_musb_board_data, %struct.omap_musb_board_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MUSB_INTERFACE_UTMI, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.musb*, %struct.musb** %3, align 8
  %99 = getelementptr inbounds %struct.musb, %struct.musb* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = call i32 @otg_set_vbus(%struct.TYPE_4__* %102, i32 0)
  br label %104

104:                                              ; preds = %97, %91
  %105 = load %struct.omap2430_glue*, %struct.omap2430_glue** %2, align 8
  %106 = getelementptr inbounds %struct.omap2430_glue, %struct.omap2430_glue* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @USB_MODE_DISCONNECT, align 4
  %109 = call i32 @omap_control_usb_set_mode(i32 %107, i32 %108)
  br label %115

110:                                              ; preds = %1
  %111 = load %struct.musb*, %struct.musb** %3, align 8
  %112 = getelementptr inbounds %struct.musb, %struct.musb* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @dev_dbg(i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %110, %104, %52, %51
  %116 = load %struct.musb*, %struct.musb** %3, align 8
  %117 = getelementptr inbounds %struct.musb, %struct.musb* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @pm_runtime_mark_last_busy(i32 %118)
  %120 = load %struct.musb*, %struct.musb** %3, align 8
  %121 = getelementptr inbounds %struct.musb, %struct.musb* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @pm_runtime_put_autosuspend(i32 %122)
  %124 = load %struct.musb*, %struct.musb** %3, align 8
  %125 = getelementptr inbounds %struct.musb, %struct.musb* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load %struct.musb*, %struct.musb** %3, align 8
  %129 = getelementptr inbounds %struct.musb, %struct.musb* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @atomic_notifier_call_chain(i32* %127, i32 %132, i32* null)
  ret void
}

declare dso_local %struct.musb* @glue_to_musb(%struct.omap2430_glue*) #1

declare dso_local %struct.musb_hdrc_platform_data* @dev_get_platdata(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @omap_control_usb_set_mode(i32, i32) #1

declare dso_local i32 @omap2430_musb_set_vbus(%struct.musb*, i32) #1

declare dso_local i32 @otg_set_vbus(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
