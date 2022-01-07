; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeonfb_pci_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeonfb_pci_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fb_info = type { i32, %struct.radeonfb_info* }
%struct.radeonfb_info = type { i64, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@edid1_attr = common dso_local global i32 0, align 4
@edid2_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @radeonfb_pci_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeonfb_pci_unregister(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.radeonfb_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.fb_info* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.radeonfb_info*, %struct.radeonfb_info** %8, align 8
  store %struct.radeonfb_info* %9, %struct.radeonfb_info** %4, align 8
  %10 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %11 = icmp ne %struct.radeonfb_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %86

13:                                               ; preds = %1
  %14 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %15 = call i32 @radeonfb_pm_exit(%struct.radeonfb_info* %14)
  %16 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %17 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %22 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %21, i32 0, i32 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @sysfs_remove_bin_file(i32* %25, i32* @edid1_attr)
  br label %27

27:                                               ; preds = %20, %13
  %28 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %29 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %34 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %33, i32 0, i32 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @sysfs_remove_bin_file(i32* %37, i32* @edid2_attr)
  br label %39

39:                                               ; preds = %32, %27
  %40 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %41 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %40, i32 0, i32 6
  %42 = call i32 @del_timer_sync(i32* %41)
  %43 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %44 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @arch_phys_wc_del(i32 %45)
  %47 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %48 = call i32 @unregister_framebuffer(%struct.fb_info* %47)
  %49 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %50 = call i32 @radeonfb_bl_exit(%struct.radeonfb_info* %49)
  %51 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %52 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @iounmap(i32 %53)
  %55 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %56 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @iounmap(i32 %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %60 = call i32 @pci_release_region(%struct.pci_dev* %59, i32 2)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %62 = call i32 @pci_release_region(%struct.pci_dev* %61, i32 0)
  %63 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %64 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @kfree(i64 %65)
  %67 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %68 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @kfree(i64 %69)
  %71 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %72 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %39
  %76 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %77 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @fb_destroy_modedb(i64 %78)
  br label %80

80:                                               ; preds = %75, %39
  %81 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = call i32 @fb_dealloc_cmap(i32* %82)
  %84 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %85 = call i32 @framebuffer_release(%struct.fb_info* %84)
  br label %86

86:                                               ; preds = %80, %12
  ret void
}

declare dso_local %struct.fb_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @radeonfb_pm_exit(%struct.radeonfb_info*) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @arch_phys_wc_del(i32) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @radeonfb_bl_exit(%struct.radeonfb_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @fb_destroy_modedb(i64) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
