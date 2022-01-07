; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_aux_edid.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_aux_edid.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_aux_drv = type { %struct.fb_monspecs* }
%struct.fb_monspecs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via_aux_drv*)* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup(%struct.via_aux_drv* %0) #0 {
  %2 = alloca %struct.via_aux_drv*, align 8
  %3 = alloca %struct.fb_monspecs*, align 8
  store %struct.via_aux_drv* %0, %struct.via_aux_drv** %2, align 8
  %4 = load %struct.via_aux_drv*, %struct.via_aux_drv** %2, align 8
  %5 = getelementptr inbounds %struct.via_aux_drv, %struct.via_aux_drv* %4, i32 0, i32 0
  %6 = load %struct.fb_monspecs*, %struct.fb_monspecs** %5, align 8
  store %struct.fb_monspecs* %6, %struct.fb_monspecs** %3, align 8
  %7 = load %struct.fb_monspecs*, %struct.fb_monspecs** %3, align 8
  %8 = icmp ne %struct.fb_monspecs* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.fb_monspecs*, %struct.fb_monspecs** %3, align 8
  %11 = getelementptr inbounds %struct.fb_monspecs, %struct.fb_monspecs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @fb_destroy_modedb(i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @fb_destroy_modedb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
