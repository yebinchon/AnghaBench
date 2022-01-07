; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen3.c_gen3_init_ntb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/intel/extr_ntb_hw_gen3.c_gen3_init_ntb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.intel_ntb_dev = type { i32, i32, %struct.TYPE_6__*, i64, i64, %struct.TYPE_5__*, %struct.TYPE_4__, i32*, i32*, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 (i64, i64)* }
%struct.TYPE_4__ = type { i32 }

@XEON_MW_COUNT = common dso_local global i32 0, align 4
@GEN3_SPAD_COUNT = common dso_local global i32 0, align 4
@GEN3_DB_COUNT = common dso_local global i32 0, align 4
@GEN3_DB_LINK_BIT = common dso_local global i64 0, align 8
@NTB_HWERR_MSIX_VECTOR32_BAD = common dso_local global i32 0, align 4
@gen3_pri_reg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@gen3_b2b_reg = common dso_local global i32 0, align 4
@gen3_sec_xlat = common dso_local global i32 0, align 4
@xeon_b2b_dsd_addr = common dso_local global i32 0, align 4
@xeon_b2b_usd_addr = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@GEN3_SPCICMD_OFFSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_ntb_dev*)* @gen3_init_ntb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen3_init_ntb(%struct.intel_ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_ntb_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_ntb_dev* %0, %struct.intel_ntb_dev** %3, align 8
  %5 = load i32, i32* @XEON_MW_COUNT, align 4
  %6 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %7 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %6, i32 0, i32 11
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @GEN3_SPAD_COUNT, align 4
  %9 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %10 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %9, i32 0, i32 10
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @GEN3_DB_COUNT, align 4
  %12 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %13 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i64, i64* @GEN3_DB_LINK_BIT, align 8
  %15 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %16 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %15, i32 0, i32 9
  store i64 %14, i64* %16, align 8
  %17 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %18 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NTB_HWERR_MSIX_VECTOR32_BAD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = call i64 @BIT_ULL(i32 31)
  %25 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %26 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %25, i32 0, i32 9
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %27, %24
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %31 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %67 [
    i32 128, label %34
    i32 129, label %34
  ]

34:                                               ; preds = %29, %29
  %35 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %36 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %35, i32 0, i32 2
  store %struct.TYPE_6__* @gen3_pri_reg, %struct.TYPE_6__** %36, align 8
  %37 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %38 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %37, i32 0, i32 8
  store i32* @gen3_b2b_reg, i32** %38, align 8
  %39 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %40 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %39, i32 0, i32 7
  store i32* @gen3_sec_xlat, i32** %40, align 8
  %41 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %42 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 128
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %48 = call i32 @gen3_setup_b2b_mw(%struct.intel_ntb_dev* %47, i32* @xeon_b2b_dsd_addr, i32* @xeon_b2b_usd_addr)
  store i32 %48, i32* %4, align 4
  br label %52

49:                                               ; preds = %34
  %50 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %51 = call i32 @gen3_setup_b2b_mw(%struct.intel_ntb_dev* %50, i32* @xeon_b2b_usd_addr, i32* @xeon_b2b_dsd_addr)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %96

57:                                               ; preds = %52
  %58 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %59 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %62 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @GEN3_SPCICMD_OFFSET, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @iowrite16(i32 %60, i64 %65)
  br label %70

67:                                               ; preds = %29
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %96

70:                                               ; preds = %57
  %71 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %72 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @BIT_ULL(i32 %73)
  %75 = sub nsw i64 %74, 1
  %76 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %77 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %79 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %78, i32 0, i32 5
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32 (i64, i64)*, i32 (i64, i64)** %81, align 8
  %83 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %84 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %87 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.intel_ntb_dev*, %struct.intel_ntb_dev** %3, align 8
  %90 = getelementptr inbounds %struct.intel_ntb_dev, %struct.intel_ntb_dev* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %88, %93
  %95 = call i32 %82(i64 %85, i64 %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %70, %67, %55
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @BIT_ULL(i32) #1

declare dso_local i32 @gen3_setup_b2b_mw(%struct.intel_ntb_dev*, i32*, i32*) #1

declare dso_local i32 @iowrite16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
