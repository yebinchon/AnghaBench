; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pm3fb.c_pm3fb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fb_info = type { %struct.TYPE_2__, i32, i32, %struct.pm3_par*, %struct.fb_fix_screeninfo }
%struct.TYPE_2__ = type { i32 }
%struct.pm3_par = type { i32, i32 }
%struct.fb_fix_screeninfo = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pm3fb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm3fb_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fix_screeninfo*, align 8
  %5 = alloca %struct.pm3_par*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.fb_info* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.fb_info* %7, %struct.fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = icmp ne %struct.fb_info* %8, null
  br i1 %9, label %10, label %54

10:                                               ; preds = %1
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 4
  store %struct.fb_fix_screeninfo* %12, %struct.fb_fix_screeninfo** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 3
  %15 = load %struct.pm3_par*, %struct.pm3_par** %14, align 8
  store %struct.pm3_par* %15, %struct.pm3_par** %5, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = call i32 @unregister_framebuffer(%struct.fb_info* %16)
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 2
  %20 = call i32 @fb_dealloc_cmap(i32* %19)
  %21 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %22 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @arch_phys_wc_del(i32 %23)
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iounmap(i32 %27)
  %29 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %30 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %33 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @release_mem_region(i32 %31, i32 %34)
  %36 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %37 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @iounmap(i32 %38)
  %40 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %41 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @release_mem_region(i32 %42, i32 %45)
  %47 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @kfree(i32 %50)
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = call i32 @framebuffer_release(%struct.fb_info* %52)
  br label %54

54:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.fb_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @arch_phys_wc_del(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
