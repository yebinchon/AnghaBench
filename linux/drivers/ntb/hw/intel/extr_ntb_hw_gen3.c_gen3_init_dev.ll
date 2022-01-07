; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen3.c_gen3_init_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen3.c_gen3_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@gen3_reg = common dso_local global i32 0, align 4
@XEON_PPD_OFFSET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ppd %#x topo %s\0A\00", align 1
@NTB_TOPO_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NTB_HWERR_MSIX_VECTOR32_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen3_init_dev(%struct.intel_ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_ntb_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %3, align 8
  %7 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %8 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %12 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %11, i32 0, i32 2
  store i32* @gen3_reg, i32** %12, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = load i32, i32* @XEON_PPD_OFFSET, align 4
  %15 = call i32 @pci_read_config_byte(%struct.pci_dev* %13, i32 %14, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %61

21:                                               ; preds = %1
  %22 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @xeon_ppd_topo(%struct.intel_ntb_dev* %22, i32 %23)
  %25 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %26 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %32 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ntb_topo_string(i32 %34)
  %36 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %35)
  %37 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %38 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NTB_TOPO_NONE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %21
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %61

46:                                               ; preds = %21
  %47 = load i32, i32* @NTB_HWERR_MSIX_VECTOR32_BAD, align 4
  %48 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %49 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %53 = call i32 @gen3_init_ntb(%struct.intel_ntb_dev* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %46
  %59 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %60 = call i32 @gen3_init_isr(%struct.intel_ntb_dev* %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %56, %43, %18
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @xeon_ppd_topo(%struct.intel_ntb_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @ntb_topo_string(i32) #1

declare dso_local i32 @gen3_init_ntb(%struct.intel_ntb_dev*) #1

declare dso_local i32 @gen3_init_isr(%struct.intel_ntb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
