; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_setup_cm_memory_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_pci-mt7621.c_setup_cm_memory_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7621_pcie = type { %struct.device*, %struct.resource }
%struct.device = type { i32 }
%struct.resource = type { i32, i32 }

@CM_GCR_REGn_MASK_CMTGT_IOCU0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"PCI coherence region base: 0x%08llx, mask/settings: 0x%08llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7621_pcie*)* @setup_cm_memory_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_cm_memory_region(%struct.mt7621_pcie* %0) #0 {
  %2 = alloca %struct.mt7621_pcie*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.mt7621_pcie* %0, %struct.mt7621_pcie** %2, align 8
  %6 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %2, align 8
  %7 = getelementptr inbounds %struct.mt7621_pcie, %struct.mt7621_pcie* %6, i32 0, i32 1
  store %struct.resource* %7, %struct.resource** %3, align 8
  %8 = load %struct.mt7621_pcie*, %struct.mt7621_pcie** %2, align 8
  %9 = getelementptr inbounds %struct.mt7621_pcie, %struct.mt7621_pcie* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = call i64 @mips_cps_numiocu(i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load %struct.resource*, %struct.resource** %3, align 8
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.resource*, %struct.resource** %3, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = xor i32 %20, -1
  store i32 %21, i32* %5, align 4
  %22 = load %struct.resource*, %struct.resource** %3, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @write_gcr_reg1_base(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CM_GCR_REGn_MASK_CMTGT_IOCU0, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @write_gcr_reg1_mask(i32 %28)
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i64 (...) @read_gcr_reg1_base()
  %32 = call i64 (...) @read_gcr_reg1_mask()
  %33 = call i32 @dev_info(%struct.device* %30, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32)
  br label %34

34:                                               ; preds = %13, %1
  ret void
}

declare dso_local i64 @mips_cps_numiocu(i32) #1

declare dso_local i32 @write_gcr_reg1_base(i32) #1

declare dso_local i32 @write_gcr_reg1_mask(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i64) #1

declare dso_local i64 @read_gcr_reg1_base(...) #1

declare dso_local i64 @read_gcr_reg1_mask(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
