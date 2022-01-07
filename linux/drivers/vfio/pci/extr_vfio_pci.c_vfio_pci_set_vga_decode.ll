; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_set_vga_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_set_vga_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8 }

@VGA_RSRC_NORMAL_IO = common dso_local global i32 0, align 4
@VGA_RSRC_NORMAL_MEM = common dso_local global i32 0, align 4
@VGA_RSRC_LEGACY_IO = common dso_local global i32 0, align 4
@VGA_RSRC_LEGACY_MEM = common dso_local global i32 0, align 4
@PCI_CLASS_DISPLAY_VGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @vfio_pci_set_vga_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_set_vga_decode(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfio_pci_device*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.vfio_pci_device*
  store %struct.vfio_pci_device* %12, %struct.vfio_pci_device** %6, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  %13 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %6, align 8
  %14 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = call i32 (...) @vfio_vga_disabled()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call i64 @pci_is_root_bus(%struct.TYPE_4__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21, %18, %2
  %28 = load i32, i32* @VGA_RSRC_NORMAL_IO, align 4
  %29 = load i32, i32* @VGA_RSRC_NORMAL_MEM, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @VGA_RSRC_LEGACY_MEM, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %3, align 4
  br label %105

35:                                               ; preds = %21
  %36 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call zeroext i8 @pci_bus_max_busnr(%struct.TYPE_4__* %38)
  store i8 %39, i8* %9, align 1
  %40 = load i32, i32* @VGA_RSRC_NORMAL_IO, align 4
  %41 = load i32, i32* @VGA_RSRC_NORMAL_MEM, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %102, %69, %35
  %44 = load i32, i32* @PCI_CLASS_DISPLAY_VGA, align 4
  %45 = shl i32 %44, 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %47 = call %struct.pci_dev* @pci_get_class(i32 %45, %struct.pci_dev* %46)
  store %struct.pci_dev* %47, %struct.pci_dev** %7, align 8
  %48 = icmp ne %struct.pci_dev* %47, null
  br i1 %48, label %49, label %103

49:                                               ; preds = %43
  %50 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %52 = icmp eq %struct.pci_dev* %50, %51
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  %54 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i64 @pci_domain_nr(%struct.TYPE_4__* %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i64 @pci_domain_nr(%struct.TYPE_4__* %60)
  %62 = icmp ne i64 %57, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %53
  %64 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = call i64 @pci_is_root_bus(%struct.TYPE_4__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %53, %49
  br label %43

70:                                               ; preds = %63
  %71 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp sge i32 %76, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %70
  %85 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* %9, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp sle i32 %90, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %84
  %95 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %96 = call i32 @pci_dev_put(%struct.pci_dev* %95)
  %97 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %98 = load i32, i32* @VGA_RSRC_LEGACY_MEM, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  br label %103

102:                                              ; preds = %84, %70
  br label %43

103:                                              ; preds = %94, %43
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %27
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @vfio_vga_disabled(...) #1

declare dso_local i64 @pci_is_root_bus(%struct.TYPE_4__*) #1

declare dso_local zeroext i8 @pci_bus_max_busnr(%struct.TYPE_4__*) #1

declare dso_local %struct.pci_dev* @pci_get_class(i32, %struct.pci_dev*) #1

declare dso_local i64 @pci_domain_nr(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
