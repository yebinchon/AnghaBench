; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_trident_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_trident_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.fb_info = type { i32, %struct.TYPE_3__, i32, %struct.tridentfb_par* }
%struct.TYPE_3__ = type { i32 }
%struct.tridentfb_par = type { i32, i32, i64 }

@tridentfb_fix = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @trident_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trident_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.tridentfb_par*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.fb_info* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 3
  %9 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  store %struct.tridentfb_par* %9, %struct.tridentfb_par** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = call i32 @unregister_framebuffer(%struct.fb_info* %10)
  %12 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %13 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %18 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %17, i32 0, i32 1
  %19 = call i32 @i2c_del_adapter(i32* %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %22 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @iounmap(i32 %23)
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @iounmap(i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tridentfb_fix, i32 0, i32 3), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tridentfb_fix, i32 0, i32 2), align 4
  %31 = call i32 @release_mem_region(i32 %29, i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tridentfb_fix, i32 0, i32 1), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tridentfb_fix, i32 0, i32 0), align 4
  %34 = call i32 @release_mem_region(i32 %32, i32 %33)
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kfree(i32 %38)
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = call i32 @fb_dealloc_cmap(i32* %41)
  %43 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %44 = call i32 @framebuffer_release(%struct.fb_info* %43)
  ret void
}

declare dso_local %struct.fb_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
