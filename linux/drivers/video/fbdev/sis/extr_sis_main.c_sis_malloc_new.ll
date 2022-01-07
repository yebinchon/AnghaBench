; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sis_malloc_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sis_malloc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sis_memreq = type { i32 }
%struct.sis_video_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sis_malloc_new(%struct.pci_dev* %0, %struct.sis_memreq* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.sis_memreq*, align 8
  %5 = alloca %struct.sis_video_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.sis_memreq* %1, %struct.sis_memreq** %4, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.sis_video_info* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.sis_video_info* %7, %struct.sis_video_info** %5, align 8
  %8 = load %struct.sis_video_info*, %struct.sis_video_info** %5, align 8
  %9 = load %struct.sis_memreq*, %struct.sis_memreq** %4, align 8
  %10 = call i32 @sis_int_malloc(%struct.sis_video_info* %8, %struct.sis_memreq* %9)
  ret void
}

declare dso_local %struct.sis_video_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @sis_int_malloc(%struct.sis_video_info*, %struct.sis_memreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
