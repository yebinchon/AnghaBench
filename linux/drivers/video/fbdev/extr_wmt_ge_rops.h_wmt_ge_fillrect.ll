; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wmt_ge_rops.h_wmt_ge_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wmt_ge_rops.h_wmt_ge_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_fillrect = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @wmt_ge_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmt_ge_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %6 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %7 = call i32 @sys_fillrect(%struct.fb_info* %5, %struct.fb_fillrect* %6)
  ret void
}

declare dso_local i32 @sys_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
