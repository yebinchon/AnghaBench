; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_carminefb.c_carminefb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_carminefb.c_carminefb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.carmine_hw = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.fb_fix_screeninfo }
%struct.fb_fix_screeninfo = type { i32, i32, i32, i32 }

@CARMINE_DISP0_REG = common dso_local global i64 0, align 8
@CARMINE_DISP_REG_DCM1 = common dso_local global i64 0, align 8
@CARMINE_DISP1_REG = common dso_local global i64 0, align 8
@CARMINE_CTL_REG = common dso_local global i64 0, align 8
@CARMINE_CTL_REG_CLOCK_ENABLE = common dso_local global i64 0, align 8
@MAX_DISPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @carminefb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carminefb_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.carmine_hw*, align 8
  %4 = alloca %struct.fb_fix_screeninfo, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.carmine_hw* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.carmine_hw* %7, %struct.carmine_hw** %3, align 8
  %8 = load %struct.carmine_hw*, %struct.carmine_hw** %3, align 8
  %9 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.carmine_hw*, %struct.carmine_hw** %3, align 8
  %16 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast %struct.fb_fix_screeninfo* %4 to i8*
  %22 = bitcast %struct.fb_fix_screeninfo* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 16, i1 false)
  br label %32

23:                                               ; preds = %1
  %24 = load %struct.carmine_hw*, %struct.carmine_hw** %3, align 8
  %25 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast %struct.fb_fix_screeninfo* %4 to i8*
  %31 = bitcast %struct.fb_fix_screeninfo* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 16, i1 false)
  br label %32

32:                                               ; preds = %23, %14
  %33 = load %struct.carmine_hw*, %struct.carmine_hw** %3, align 8
  %34 = load i64, i64* @CARMINE_DISP0_REG, align 8
  %35 = load i64, i64* @CARMINE_DISP_REG_DCM1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @c_set_hw_reg(%struct.carmine_hw* %33, i64 %36, i32 0)
  %38 = load %struct.carmine_hw*, %struct.carmine_hw** %3, align 8
  %39 = load i64, i64* @CARMINE_DISP1_REG, align 8
  %40 = load i64, i64* @CARMINE_DISP_REG_DCM1, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @c_set_hw_reg(%struct.carmine_hw* %38, i64 %41, i32 0)
  %43 = load %struct.carmine_hw*, %struct.carmine_hw** %3, align 8
  %44 = load i64, i64* @CARMINE_CTL_REG, align 8
  %45 = load i64, i64* @CARMINE_CTL_REG_CLOCK_ENABLE, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @c_set_hw_reg(%struct.carmine_hw* %43, i64 %46, i32 0)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %61, %32
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MAX_DISPLAY, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.carmine_hw*, %struct.carmine_hw** %3, align 8
  %54 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %55, i64 %57
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = call i32 @cleanup_fb_device(%struct.TYPE_2__* %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %48

64:                                               ; preds = %48
  %65 = load %struct.carmine_hw*, %struct.carmine_hw** %3, align 8
  %66 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @iounmap(i32 %67)
  %69 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %4, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %4, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @release_mem_region(i32 %70, i32 %72)
  %74 = load %struct.carmine_hw*, %struct.carmine_hw** %3, align 8
  %75 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @iounmap(i32 %76)
  %78 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %4, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %4, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @release_mem_region(i32 %79, i32 %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %84 = call i32 @pci_disable_device(%struct.pci_dev* %83)
  %85 = load %struct.carmine_hw*, %struct.carmine_hw** %3, align 8
  %86 = call i32 @kfree(%struct.carmine_hw* %85)
  ret void
}

declare dso_local %struct.carmine_hw* @pci_get_drvdata(%struct.pci_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @c_set_hw_reg(%struct.carmine_hw*, i64, i32) #1

declare dso_local i32 @cleanup_fb_device(%struct.TYPE_2__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.carmine_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
