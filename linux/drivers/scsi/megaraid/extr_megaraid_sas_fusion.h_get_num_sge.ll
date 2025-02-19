; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.h_get_num_sge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.h_get_num_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RAID_CONTEXT_G35 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@NUM_SGE_MASK_UPPER = common dso_local global i32 0, align 4
@NUM_SGE_SHIFT_UPPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.RAID_CONTEXT_G35*)* @get_num_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_num_sge(%struct.RAID_CONTEXT_G35* %0) #0 {
  %2 = alloca %struct.RAID_CONTEXT_G35*, align 8
  %3 = alloca i64, align 8
  store %struct.RAID_CONTEXT_G35* %0, %struct.RAID_CONTEXT_G35** %2, align 8
  %4 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %2, align 8
  %5 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @NUM_SGE_MASK_UPPER, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @NUM_SGE_SHIFT_UPPER, align 4
  %13 = shl i32 %11, %12
  %14 = load %struct.RAID_CONTEXT_G35*, %struct.RAID_CONTEXT_G35** %2, align 8
  %15 = getelementptr inbounds %struct.RAID_CONTEXT_G35, %struct.RAID_CONTEXT_G35* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %13, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
