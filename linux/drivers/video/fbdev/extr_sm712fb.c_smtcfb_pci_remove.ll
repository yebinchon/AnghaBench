; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm712fb.c_smtcfb_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm712fb.c_smtcfb_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.smtcfb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @smtcfb_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smtcfb_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.smtcfb_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.smtcfb_info* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.smtcfb_info* %5, %struct.smtcfb_info** %3, align 8
  %6 = load %struct.smtcfb_info*, %struct.smtcfb_info** %3, align 8
  %7 = call i32 @smtc_unmap_smem(%struct.smtcfb_info* %6)
  %8 = load %struct.smtcfb_info*, %struct.smtcfb_info** %3, align 8
  %9 = call i32 @smtc_unmap_mmio(%struct.smtcfb_info* %8)
  %10 = load %struct.smtcfb_info*, %struct.smtcfb_info** %3, align 8
  %11 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @unregister_framebuffer(i32 %12)
  %14 = load %struct.smtcfb_info*, %struct.smtcfb_info** %3, align 8
  %15 = getelementptr inbounds %struct.smtcfb_info, %struct.smtcfb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @framebuffer_release(i32 %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = call i32 @pci_release_region(%struct.pci_dev* %18, i32 0)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = call i32 @pci_disable_device(%struct.pci_dev* %20)
  ret void
}

declare dso_local %struct.smtcfb_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @smtc_unmap_smem(%struct.smtcfb_info*) #1

declare dso_local i32 @smtc_unmap_mmio(%struct.smtcfb_info*) #1

declare dso_local i32 @unregister_framebuffer(i32) #1

declare dso_local i32 @framebuffer_release(i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
