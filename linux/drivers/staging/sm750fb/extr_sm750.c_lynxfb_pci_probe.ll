; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.sm750_dev = type { i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32, %struct.pci_dev*, i32, i32, i32** }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@g_nomtrr = common dso_local global i32 0, align 4
@g_noaccel = common dso_local global i32 0, align 4
@sm750_hw_de_init = common dso_local global i32 0, align 4
@sm750_hw_fillrect = common dso_local global i32 0, align 4
@sm750_hw_copyarea = common dso_local global i32 0, align 4
@sm750_hw_imageblit = common dso_local global i32 0, align 4
@g_settings = common dso_local global i32 0, align 4
@g_dualview = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @lynxfb_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lynxfb_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.sm750_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.sm750_dev* null, %struct.sm750_dev** %6, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @lynxfb_kick_out_firmware_fb(%struct.pci_dev* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %3, align 4
  br label %154

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @pcim_enable_device(%struct.pci_dev* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %154

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.sm750_dev* @devm_kzalloc(i32* %27, i32 80, i32 %28)
  store %struct.sm750_dev* %29, %struct.sm750_dev** %6, align 8
  %30 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %31 = icmp ne %struct.sm750_dev* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %154

34:                                               ; preds = %23
  %35 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %36 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %35, i32 0, i32 11
  %37 = load i32**, i32*** %36, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %40 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %39, i32 0, i32 11
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %47 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %52 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %55 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %54, i32 0, i32 8
  store %struct.pci_dev* %53, %struct.pci_dev** %55, align 8
  %56 = load i32, i32* @g_nomtrr, align 4
  %57 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %58 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %60 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @g_noaccel, align 4
  %63 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %64 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %66 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %65, i32 0, i32 7
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %69 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %34
  %73 = load i32, i32* @sm750_hw_de_init, align 4
  %74 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %75 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @sm750_hw_fillrect, align 4
  %78 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %79 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @sm750_hw_copyarea, align 4
  %82 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %83 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @sm750_hw_imageblit, align 4
  %86 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %87 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %72, %34
  %90 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %91 = load i32, i32* @g_settings, align 4
  %92 = call i32 @sm750fb_setup(%struct.sm750_dev* %90, i32 %91)
  %93 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = call i32 @hw_sm750_map(%struct.sm750_dev* %93, %struct.pci_dev* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %154

100:                                              ; preds = %89
  %101 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %102 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %100
  %106 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %107 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %110 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @arch_phys_wc_add(i32 %108, i32 %111)
  %113 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %114 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i64 %112, i64* %115, align 8
  br label %116

116:                                              ; preds = %105, %100
  %117 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %118 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %121 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @memset_io(i32 %119, i32 0, i32 %122)
  %124 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %125 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %126 = call i32 @pci_set_drvdata(%struct.pci_dev* %124, %struct.sm750_dev* %125)
  %127 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %128 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %129 = call i32 @hw_sm750_inithw(%struct.sm750_dev* %127, %struct.pci_dev* %128)
  %130 = load i64, i64* @g_dualview, align 8
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 2, i32 1
  store i32 %133, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %146, %116
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @sm750fb_framebuffer_alloc(%struct.sm750_dev* %139, i32 %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %150

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %134

149:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %154

150:                                              ; preds = %144
  %151 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %152 = call i32 @sm750fb_framebuffer_release(%struct.sm750_dev* %151)
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %150, %149, %98, %32, %21, %14
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @lynxfb_kick_out_firmware_fb(%struct.pci_dev*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.sm750_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sm750fb_setup(%struct.sm750_dev*, i32) #1

declare dso_local i32 @hw_sm750_map(%struct.sm750_dev*, %struct.pci_dev*) #1

declare dso_local i64 @arch_phys_wc_add(i32, i32) #1

declare dso_local i32 @memset_io(i32, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.sm750_dev*) #1

declare dso_local i32 @hw_sm750_inithw(%struct.sm750_dev*, %struct.pci_dev*) #1

declare dso_local i32 @sm750fb_framebuffer_alloc(%struct.sm750_dev*, i32) #1

declare dso_local i32 @sm750fb_framebuffer_release(%struct.sm750_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
