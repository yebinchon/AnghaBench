; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fb_info = type { i32, i32, %struct.i740fb_par* }
%struct.i740fb_par = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @i740fb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i740fb_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.i740fb_par*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.fb_info* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = icmp ne %struct.fb_info* %7, null
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 2
  %12 = load %struct.i740fb_par*, %struct.i740fb_par** %11, align 8
  store %struct.i740fb_par* %12, %struct.i740fb_par** %4, align 8
  %13 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %14 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @arch_phys_wc_del(i32 %15)
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = call i32 @unregister_framebuffer(%struct.fb_info* %17)
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = call i32 @fb_dealloc_cmap(i32* %20)
  %22 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %23 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %9
  %27 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %28 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %27, i32 0, i32 1
  %29 = call i32 @i2c_del_adapter(i32* %28)
  br label %30

30:                                               ; preds = %26, %9
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %33 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pci_iounmap(%struct.pci_dev* %31, i32 %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pci_iounmap(%struct.pci_dev* %36, i32 %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = call i32 @pci_release_regions(%struct.pci_dev* %41)
  %43 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %44 = call i32 @framebuffer_release(%struct.fb_info* %43)
  br label %45

45:                                               ; preds = %30, %1
  ret void
}

declare dso_local %struct.fb_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @arch_phys_wc_del(i32) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
