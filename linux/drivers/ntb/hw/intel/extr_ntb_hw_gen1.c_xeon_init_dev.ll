; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_xeon_init_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen1.c_xeon_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_ntb_dev = type { i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }

@NTB_HWERR_SDOORBELL_LOCKUP = common dso_local global i32 0, align 4
@NTB_HWERR_SB01BASE_LOCKUP = common dso_local global i32 0, align 4
@NTB_HWERR_B2BDOORBELL_BIT14 = common dso_local global i32 0, align 4
@xeon_reg = common dso_local global i32 0, align 4
@XEON_PPD_OFFSET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ppd %#x topo %s\0A\00", align 1
@NTB_TOPO_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NTB_TOPO_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ppd %#x bar4_split %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@HSX_SPLIT_BAR_MW_COUNT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"mem %#x bar4_split %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ntb_dev*)* @xeon_init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xeon_init_dev(%struct.intel_ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_ntb_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %3, align 8
  %8 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %9 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %21 [
    i32 129, label %15
    i32 134, label %15
    i32 139, label %15
    i32 128, label %15
    i32 133, label %15
    i32 138, label %15
    i32 130, label %15
    i32 135, label %15
    i32 140, label %15
    i32 131, label %15
    i32 136, label %15
    i32 141, label %15
    i32 132, label %15
    i32 137, label %15
    i32 142, label %15
  ]

15:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %16 = load i32, i32* @NTB_HWERR_SDOORBELL_LOCKUP, align 4
  %17 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %18 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %1, %15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %31 [
    i32 130, label %25
    i32 135, label %25
    i32 140, label %25
    i32 131, label %25
    i32 136, label %25
    i32 141, label %25
    i32 132, label %25
    i32 137, label %25
    i32 142, label %25
  ]

25:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21
  %26 = load i32, i32* @NTB_HWERR_SB01BASE_LOCKUP, align 4
  %27 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %28 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %21, %25
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %41 [
    i32 129, label %35
    i32 134, label %35
    i32 139, label %35
    i32 128, label %35
    i32 133, label %35
    i32 138, label %35
    i32 130, label %35
    i32 135, label %35
    i32 140, label %35
    i32 131, label %35
    i32 136, label %35
    i32 141, label %35
    i32 132, label %35
    i32 137, label %35
    i32 142, label %35
  ]

35:                                               ; preds = %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31, %31
  %36 = load i32, i32* @NTB_HWERR_B2BDOORBELL_BIT14, align 4
  %37 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %38 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %31, %35
  %42 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %43 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %42, i32 0, i32 2
  store i32* @xeon_reg, i32** %43, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load i32, i32* @XEON_PPD_OFFSET, align 4
  %46 = call i32 @pci_read_config_byte(%struct.pci_dev* %44, i32 %45, i32* %5)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %126

52:                                               ; preds = %41
  %53 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @xeon_ppd_topo(%struct.intel_ntb_dev* %53, i32 %54)
  %56 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %57 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %63 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ntb_topo_string(i32 %65)
  %67 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %66)
  %68 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %69 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @NTB_TOPO_NONE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %52
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %126

77:                                               ; preds = %52
  %78 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %79 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NTB_TOPO_SEC, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @xeon_ppd_bar4_split(%struct.intel_ntb_dev* %85, i32 %86)
  %88 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %89 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 1
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %94 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_dbg(i32* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %95)
  br label %116

97:                                               ; preds = %77
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = load i32, i32* @IORESOURCE_MEM, align 4
  %100 = call i32 @pci_select_bars(%struct.pci_dev* %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i64 @hweight32(i32 %101)
  %103 = load i64, i64* @HSX_SPLIT_BAR_MW_COUNT, align 8
  %104 = add nsw i64 %103, 1
  %105 = icmp eq i64 %102, %104
  %106 = zext i1 %105 to i32
  %107 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %108 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 1
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %113 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dev_dbg(i32* %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %97, %84
  %117 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %118 = call i32 @xeon_init_ntb(%struct.intel_ntb_dev* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %2, align 4
  br label %126

123:                                              ; preds = %116
  %124 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %125 = call i32 @xeon_init_isr(%struct.intel_ntb_dev* %124)
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %123, %121, %74, %49
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @xeon_ppd_topo(%struct.intel_ntb_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @ntb_topo_string(i32) #1

declare dso_local i32 @xeon_ppd_bar4_split(%struct.intel_ntb_dev*, i32) #1

declare dso_local i32 @pci_select_bars(%struct.pci_dev*, i32) #1

declare dso_local i64 @hweight32(i32) #1

declare dso_local i32 @xeon_init_ntb(%struct.intel_ntb_dev*) #1

declare dso_local i32 @xeon_init_isr(%struct.intel_ntb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
