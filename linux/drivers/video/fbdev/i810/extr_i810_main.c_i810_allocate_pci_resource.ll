; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810_allocate_pci_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810_allocate_pci_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i810fb_par = type { i32, i8*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i8* }
%struct.pci_device_id = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"i810fb_init: cannot enable device\0A\00", align 1
@PCI_DEVICE_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"i810fb_init: device is disabled\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@i810_pci_list = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"i810fb_init: cannot request framebuffer region\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@FRAMEBUFFER_REQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"i810fb_init: cannot remap framebuffer region\0A\00", align 1
@MMIO_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"i810fb_init: cannot request mmio region\0A\00", align 1
@MMIO_REQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"i810fb_init: cannot remap mmio region\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i810fb_par*, %struct.pci_device_id*)* @i810_allocate_pci_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810_allocate_pci_resource(%struct.i810fb_par* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i810fb_par*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.i810fb_par* %0, %struct.i810fb_par** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %8 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pci_enable_device(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %165

15:                                               ; preds = %2
  %16 = load i32, i32* @PCI_DEVICE_ENABLED, align 4
  %17 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %18 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %22 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pci_resource_len(i32 %23, i32 0)
  %25 = icmp sgt i32 %24, 524288
  br i1 %25, label %26, label %47

26:                                               ; preds = %15
  %27 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %28 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @pci_resource_start(i32 %29, i32 0)
  %31 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %32 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i8* %30, i8** %33, align 8
  %34 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %35 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pci_resource_len(i32 %36, i32 0)
  %38 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %39 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %42 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @pci_resource_start(i32 %43, i32 1)
  %45 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %46 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %68

47:                                               ; preds = %15
  %48 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %49 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @pci_resource_start(i32 %50, i32 1)
  %52 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %53 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  %55 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %56 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pci_resource_len(i32 %57, i32 1)
  %59 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %60 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %63 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @pci_resource_start(i32 %64, i32 0)
  %66 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %67 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %47, %26
  %69 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %70 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %165

78:                                               ; preds = %68
  %79 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %80 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %84 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** @i810_pci_list, align 8
  %88 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %89 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @request_mem_region(i8* %82, i32 %86, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %78
  %96 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %165

99:                                               ; preds = %78
  %100 = load i32, i32* @FRAMEBUFFER_REQ, align 4
  %101 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %102 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %106 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %110 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ioremap_wc(i8* %108, i32 %112)
  %114 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %115 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %118 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %99
  %123 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @ENODEV, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %165

126:                                              ; preds = %99
  %127 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %128 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* @MMIO_SIZE, align 4
  %131 = load i32*, i32** @i810_pci_list, align 8
  %132 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %133 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @request_mem_region(i8* %129, i32 %130, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %126
  %140 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i32, i32* @ENODEV, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %165

143:                                              ; preds = %126
  %144 = load i32, i32* @MMIO_REQ, align 4
  %145 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %146 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %150 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* @MMIO_SIZE, align 4
  %153 = call i32 @ioremap_nocache(i8* %151, i32 %152)
  %154 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %155 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.i810fb_par*, %struct.i810fb_par** %4, align 8
  %157 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %143
  %161 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %162 = load i32, i32* @ENODEV, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %165

164:                                              ; preds = %143
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %160, %139, %122, %95, %74, %12
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @pci_enable_device(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i8* @pci_resource_start(i32, i32) #1

declare dso_local i32 @request_mem_region(i8*, i32, i32) #1

declare dso_local i32 @ioremap_wc(i8*, i32) #1

declare dso_local i32 @ioremap_nocache(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
