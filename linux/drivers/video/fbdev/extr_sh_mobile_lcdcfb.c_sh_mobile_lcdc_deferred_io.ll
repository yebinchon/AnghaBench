; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_deferred_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_deferred_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.sh_mobile_lcdc_chan* }
%struct.sh_mobile_lcdc_chan = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.sh_mobile_lcdc_panel_cfg }
%struct.sh_mobile_lcdc_panel_cfg = type { i32 (%struct.sh_mobile_lcdc_chan.0*, i32*)* }
%struct.sh_mobile_lcdc_chan.0 = type opaque
%struct.list_head = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@sh_mobile_lcdc_sys_bus_ops = common dso_local global i32 0, align 4
@LDSM2R = common dso_local global i32 0, align 4
@LDSM2R_OSTRG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.list_head*)* @sh_mobile_lcdc_deferred_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_lcdc_deferred_io(%struct.fb_info* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %6 = alloca %struct.sh_mobile_lcdc_panel_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %9, align 8
  store %struct.sh_mobile_lcdc_chan* %10, %struct.sh_mobile_lcdc_chan** %5, align 8
  %11 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %12 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.sh_mobile_lcdc_panel_cfg* %14, %struct.sh_mobile_lcdc_panel_cfg** %6, align 8
  %15 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %16 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @sh_mobile_lcdc_clk_on(%struct.TYPE_4__* %17)
  %19 = load %struct.list_head*, %struct.list_head** %4, align 8
  %20 = call i32 @list_empty(%struct.list_head* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %64, label %22

22:                                               ; preds = %2
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = load %struct.list_head*, %struct.list_head** %4, align 8
  %25 = call i32 @sh_mobile_lcdc_sginit(%struct.fb_info* %23, %struct.list_head* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %27 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %32 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i32 @dma_map_sg(i32 %30, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.sh_mobile_lcdc_panel_cfg*, %struct.sh_mobile_lcdc_panel_cfg** %6, align 8
  %38 = getelementptr inbounds %struct.sh_mobile_lcdc_panel_cfg, %struct.sh_mobile_lcdc_panel_cfg* %37, i32 0, i32 0
  %39 = load i32 (%struct.sh_mobile_lcdc_chan.0*, i32*)*, i32 (%struct.sh_mobile_lcdc_chan.0*, i32*)** %38, align 8
  %40 = icmp ne i32 (%struct.sh_mobile_lcdc_chan.0*, i32*)* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %22
  %42 = load %struct.sh_mobile_lcdc_panel_cfg*, %struct.sh_mobile_lcdc_panel_cfg** %6, align 8
  %43 = getelementptr inbounds %struct.sh_mobile_lcdc_panel_cfg, %struct.sh_mobile_lcdc_panel_cfg* %42, i32 0, i32 0
  %44 = load i32 (%struct.sh_mobile_lcdc_chan.0*, i32*)*, i32 (%struct.sh_mobile_lcdc_chan.0*, i32*)** %43, align 8
  %45 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %46 = bitcast %struct.sh_mobile_lcdc_chan* %45 to %struct.sh_mobile_lcdc_chan.0*
  %47 = call i32 %44(%struct.sh_mobile_lcdc_chan.0* %46, i32* @sh_mobile_lcdc_sys_bus_ops)
  br label %48

48:                                               ; preds = %41, %22
  %49 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %50 = load i32, i32* @LDSM2R, align 4
  %51 = load i32, i32* @LDSM2R_OSTRG, align 4
  %52 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %49, i32 %50, i32 %51)
  %53 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %54 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %59 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @DMA_TO_DEVICE, align 4
  %63 = call i32 @dma_unmap_sg(i32 %57, i32 %60, i32 %61, i32 %62)
  br label %81

64:                                               ; preds = %2
  %65 = load %struct.sh_mobile_lcdc_panel_cfg*, %struct.sh_mobile_lcdc_panel_cfg** %6, align 8
  %66 = getelementptr inbounds %struct.sh_mobile_lcdc_panel_cfg, %struct.sh_mobile_lcdc_panel_cfg* %65, i32 0, i32 0
  %67 = load i32 (%struct.sh_mobile_lcdc_chan.0*, i32*)*, i32 (%struct.sh_mobile_lcdc_chan.0*, i32*)** %66, align 8
  %68 = icmp ne i32 (%struct.sh_mobile_lcdc_chan.0*, i32*)* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.sh_mobile_lcdc_panel_cfg*, %struct.sh_mobile_lcdc_panel_cfg** %6, align 8
  %71 = getelementptr inbounds %struct.sh_mobile_lcdc_panel_cfg, %struct.sh_mobile_lcdc_panel_cfg* %70, i32 0, i32 0
  %72 = load i32 (%struct.sh_mobile_lcdc_chan.0*, i32*)*, i32 (%struct.sh_mobile_lcdc_chan.0*, i32*)** %71, align 8
  %73 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %74 = bitcast %struct.sh_mobile_lcdc_chan* %73 to %struct.sh_mobile_lcdc_chan.0*
  %75 = call i32 %72(%struct.sh_mobile_lcdc_chan.0* %74, i32* @sh_mobile_lcdc_sys_bus_ops)
  br label %76

76:                                               ; preds = %69, %64
  %77 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %5, align 8
  %78 = load i32, i32* @LDSM2R, align 4
  %79 = load i32, i32* @LDSM2R_OSTRG, align 4
  %80 = call i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %48
  ret void
}

declare dso_local i32 @sh_mobile_lcdc_clk_on(%struct.TYPE_4__*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @sh_mobile_lcdc_sginit(%struct.fb_info*, %struct.list_head*) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @lcdc_write_chan(%struct.sh_mobile_lcdc_chan*, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
