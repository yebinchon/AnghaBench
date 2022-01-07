; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp-ie.c_uwb_drp_ie_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp-ie.c_uwb_drp_ie_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_ie_drp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@allocs = common dso_local global i32 0, align 4
@UWB_NUM_ZONES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@UWB_IE_DRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uwb_ie_drp* ()* @uwb_drp_ie_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uwb_ie_drp* @uwb_drp_ie_alloc() #0 {
  %1 = alloca %struct.uwb_ie_drp*, align 8
  %2 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %1, align 8
  %3 = load i32, i32* @allocs, align 4
  %4 = load i32, i32* @UWB_NUM_ZONES, align 4
  %5 = call i32 @struct_size(%struct.uwb_ie_drp* %2, i32 %3, i32 %4)
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.uwb_ie_drp* @kzalloc(i32 %5, i32 %6)
  store %struct.uwb_ie_drp* %7, %struct.uwb_ie_drp** %1, align 8
  %8 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %1, align 8
  %9 = icmp ne %struct.uwb_ie_drp* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = load i32, i32* @UWB_IE_DRP, align 4
  %12 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %1, align 8
  %13 = getelementptr inbounds %struct.uwb_ie_drp, %struct.uwb_ie_drp* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  br label %15

15:                                               ; preds = %10, %0
  %16 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %1, align 8
  ret %struct.uwb_ie_drp* %16
}

declare dso_local %struct.uwb_ie_drp* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.uwb_ie_drp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
