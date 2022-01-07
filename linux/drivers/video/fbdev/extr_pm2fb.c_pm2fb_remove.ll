; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2fb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm2fb.c_pm2fb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fb_info = type { %struct.TYPE_2__, i32, i32, %struct.pm2fb_par*, %struct.fb_fix_screeninfo }
%struct.TYPE_2__ = type { i32 }
%struct.pm2fb_par = type { i32, i32 }
%struct.fb_fix_screeninfo = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pm2fb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm2fb_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fix_screeninfo*, align 8
  %5 = alloca %struct.pm2fb_par*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.fb_info* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.fb_info* %7, %struct.fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 4
  store %struct.fb_fix_screeninfo* %9, %struct.fb_fix_screeninfo** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 3
  %12 = load %struct.pm2fb_par*, %struct.pm2fb_par** %11, align 8
  store %struct.pm2fb_par* %12, %struct.pm2fb_par** %5, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = call i32 @unregister_framebuffer(%struct.fb_info* %13)
  %15 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %16 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @arch_phys_wc_del(i32 %17)
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @iounmap(i32 %21)
  %23 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %24 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @release_mem_region(i32 %25, i32 %28)
  %30 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %31 = getelementptr inbounds %struct.pm2fb_par, %struct.pm2fb_par* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iounmap(i32 %32)
  %34 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %35 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %38 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @release_mem_region(i32 %36, i32 %39)
  %41 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 1
  %43 = call i32 @fb_dealloc_cmap(i32* %42)
  %44 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kfree(i32 %47)
  %49 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %50 = call i32 @framebuffer_release(%struct.fb_info* %49)
  ret void
}

declare dso_local %struct.fb_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @arch_phys_wc_del(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
