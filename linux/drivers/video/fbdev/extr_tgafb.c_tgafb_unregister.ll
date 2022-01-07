; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tgafb.c_tgafb_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tgafb.c_tgafb_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fb_info = type { i32, %struct.tga_par* }
%struct.tga_par = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @tgafb_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgafb_unregister(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca %struct.tga_par*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call i32 @dev_is_pci(%struct.device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i32 @TGA_BUS_TC(%struct.device* %11)
  store i32 %12, i32* %6, align 4
  store %struct.fb_info* null, %struct.fb_info** %7, align 8
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %13)
  store %struct.fb_info* %14, %struct.fb_info** %7, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %16 = icmp ne %struct.fb_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %63

18:                                               ; preds = %1
  %19 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = load %struct.tga_par*, %struct.tga_par** %20, align 8
  store %struct.tga_par* %21, %struct.tga_par** %8, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %23 = call i32 @unregister_framebuffer(%struct.fb_info* %22)
  %24 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = call i32 @fb_dealloc_cmap(i32* %25)
  %27 = load %struct.tga_par*, %struct.tga_par** %8, align 8
  %28 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @iounmap(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %18
  %34 = load %struct.device*, %struct.device** %2, align 8
  %35 = call i32 @to_pci_dev(%struct.device* %34)
  %36 = call i64 @pci_resource_start(i32 %35, i32 0)
  store i64 %36, i64* %3, align 8
  %37 = load %struct.device*, %struct.device** %2, align 8
  %38 = call i32 @to_pci_dev(%struct.device* %37)
  %39 = call i64 @pci_resource_len(i32 %38, i32 0)
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %33, %18
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.device*, %struct.device** %2, align 8
  %45 = call %struct.TYPE_4__* @to_tc_dev(%struct.device* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %3, align 8
  %49 = load %struct.device*, %struct.device** %2, align 8
  %50 = call %struct.TYPE_4__* @to_tc_dev(%struct.device* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %3, align 8
  %55 = sub nsw i64 %53, %54
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %43, %40
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @release_mem_region(i64 %58, i64 %59)
  %61 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %62 = call i32 @framebuffer_release(%struct.fb_info* %61)
  br label %63

63:                                               ; preds = %57, %17
  ret void
}

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @TGA_BUS_TC(%struct.device*) #1

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

declare dso_local %struct.TYPE_4__* @to_tc_dev(%struct.device*) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
