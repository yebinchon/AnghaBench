; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_start_auto_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_start_auto_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb2_device = type { %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type { i32 }
%struct.omap_dss_device = type { i32 }
%struct.omapfb_display_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"omapfb_auto_update\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to create workqueue for auto-update\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omapfb_start_auto_update(%struct.omapfb2_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca %struct.omapfb2_device*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omapfb_display_data*, align 8
  %6 = alloca %struct.workqueue_struct*, align 8
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %3, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %4, align 8
  %7 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %8 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %7, i32 0, i32 0
  %9 = load %struct.workqueue_struct*, %struct.workqueue_struct** %8, align 8
  %10 = icmp eq %struct.workqueue_struct* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = call %struct.workqueue_struct* @create_singlethread_workqueue(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.workqueue_struct* %12, %struct.workqueue_struct** %6, align 8
  %13 = load %struct.workqueue_struct*, %struct.workqueue_struct** %6, align 8
  %14 = icmp eq %struct.workqueue_struct* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %17 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %37

20:                                               ; preds = %11
  %21 = load %struct.workqueue_struct*, %struct.workqueue_struct** %6, align 8
  %22 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %23 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %22, i32 0, i32 0
  store %struct.workqueue_struct* %21, %struct.workqueue_struct** %23, align 8
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.omapfb2_device*, %struct.omapfb2_device** %3, align 8
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %27 = call %struct.omapfb_display_data* @get_display_data(%struct.omapfb2_device* %25, %struct.omap_dss_device* %26)
  store %struct.omapfb_display_data* %27, %struct.omapfb_display_data** %5, align 8
  %28 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %5, align 8
  %29 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %28, i32 0, i32 1
  %30 = call i32 @INIT_DELAYED_WORK(%struct.TYPE_2__* %29, i32 (i32*)* @omapfb_auto_update_work)
  %31 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %5, align 8
  %32 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %5, align 8
  %34 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @omapfb_auto_update_work(i32* %35)
  br label %37

37:                                               ; preds = %24, %15
  ret void
}

declare dso_local %struct.workqueue_struct* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.omapfb_display_data* @get_display_data(%struct.omapfb2_device*, %struct.omap_dss_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(%struct.TYPE_2__*, i32 (i32*)*) #1

declare dso_local i32 @omapfb_auto_update_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
