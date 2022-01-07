; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm712fb.c_smtc_unmap_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm712fb.c_smtc_unmap_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smtcfb_info = type { i32 }

@smtc_regbaseaddress = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smtcfb_info*)* @smtc_unmap_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smtc_unmap_mmio(%struct.smtcfb_info* %0) #0 {
  %2 = alloca %struct.smtcfb_info*, align 8
  store %struct.smtcfb_info* %0, %struct.smtcfb_info** %2, align 8
  %3 = load %struct.smtcfb_info*, %struct.smtcfb_info** %2, align 8
  %4 = icmp ne %struct.smtcfb_info* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32*, i32** @smtc_regbaseaddress, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32* null, i32** @smtc_regbaseaddress, align 8
  br label %9

9:                                                ; preds = %8, %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
