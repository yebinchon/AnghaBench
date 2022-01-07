; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/kyro/extr_fbdev.c_kyrofb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/kyro/extr_fbdev.c_kyrofb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.pci_dev = type { i32 }
%struct.fb_info = type { i32, %struct.kyrofb_info* }
%struct.kyrofb_info = type { i32, i32 }

@deviceInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @kyrofb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kyrofb_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.kyrofb_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.fb_info* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.kyrofb_info*, %struct.kyrofb_info** %8, align 8
  store %struct.kyrofb_info* %9, %struct.kyrofb_info** %4, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 2), align 8
  %11 = call i32 @StopVTG(i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 2), align 8
  %13 = call i32 @DisableRamdacOutput(i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 2), align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i32 @SetCoreClockPLL(i32 %14, %struct.pci_dev* %15)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 0), align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @iounmap(i32 %19)
  %21 = load %struct.kyrofb_info*, %struct.kyrofb_info** %4, align 8
  %22 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @iounmap(i32 %23)
  %25 = load %struct.kyrofb_info*, %struct.kyrofb_info** %4, align 8
  %26 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @arch_phys_wc_del(i32 %27)
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = call i32 @unregister_framebuffer(%struct.fb_info* %29)
  %31 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %32 = call i32 @framebuffer_release(%struct.fb_info* %31)
  ret void
}

declare dso_local %struct.fb_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @StopVTG(i32) #1

declare dso_local i32 @DisableRamdacOutput(i32) #1

declare dso_local i32 @SetCoreClockPLL(i32, %struct.pci_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @arch_phys_wc_del(i32) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
