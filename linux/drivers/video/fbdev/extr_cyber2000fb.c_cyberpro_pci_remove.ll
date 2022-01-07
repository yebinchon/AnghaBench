; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cyber2000fb.c_cyberpro_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cyber2000fb.c_cyberpro_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfb_info = type { i32 }
%struct.pci_dev = type { i32 }

@int_cfb_info = common dso_local global %struct.cfb_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cyberpro_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyberpro_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.cfb_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.cfb_info* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.cfb_info* %5, %struct.cfb_info** %3, align 8
  %6 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %7 = icmp ne %struct.cfb_info* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %10 = call i32 @cyberpro_common_remove(%struct.cfb_info* %9)
  %11 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %12 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iounmap(i32 %13)
  %15 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %16 = call i32 @cyberpro_free_fb_info(%struct.cfb_info* %15)
  %17 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %18 = load %struct.cfb_info*, %struct.cfb_info** @int_cfb_info, align 8
  %19 = icmp eq %struct.cfb_info* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  store %struct.cfb_info* null, %struct.cfb_info** @int_cfb_info, align 8
  br label %21

21:                                               ; preds = %20, %8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i32 @pci_release_regions(%struct.pci_dev* %22)
  br label %24

24:                                               ; preds = %21, %1
  ret void
}

declare dso_local %struct.cfb_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @cyberpro_common_remove(%struct.cfb_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @cyberpro_free_fb_info(%struct.cfb_info*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
