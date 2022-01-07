; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_chips.h_mvs_show_pcie_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_chips.h_mvs_show_pcie_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"UnKnown\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"2.5\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"5.0\00", align 1
@__const.mvs_show_pcie_usage.spd = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)], align 16
@MVF_FLAG_SOC = common dso_local global i32 0, align 4
@PCR_LINK_STAT = common dso_local global i32 0, align 4
@PLS_LINK_SPD = common dso_local global i32 0, align 4
@PLS_LINK_SPD_OFFS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"mvsas: PCI-E x%u, Bandwidth Usage: %s Gbps\0A\00", align 1
@PLS_NEG_LINK_WD = common dso_local global i32 0, align 4
@PLS_NEG_LINK_WD_OFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*)* @mvs_show_pcie_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_show_pcie_usage(%struct.mvs_info* %0) #0 {
  %2 = alloca %struct.mvs_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8*], align 16
  store %struct.mvs_info* %0, %struct.mvs_info** %2, align 8
  %6 = bitcast [3 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([3 x i8*]* @__const.mvs_show_pcie_usage.spd to i8*), i64 24, i1 false)
  %7 = load %struct.mvs_info*, %struct.mvs_info** %2, align 8
  %8 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MVF_FLAG_SOC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.mvs_info*, %struct.mvs_info** %2, align 8
  %15 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  br label %48

19:                                               ; preds = %13
  %20 = load %struct.mvs_info*, %struct.mvs_info** %2, align 8
  %21 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PCR_LINK_STAT, align 4
  %24 = call i32 @pci_read_config_word(i32 %22, i32 %23, i32* %3)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @PLS_LINK_SPD, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @PLS_LINK_SPD_OFFS, align 4
  %29 = ashr i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i32, i32* @KERN_INFO, align 4
  %35 = load %struct.mvs_info*, %struct.mvs_info** %2, align 8
  %36 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @PLS_NEG_LINK_WD, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @PLS_NEG_LINK_WD_OFFS, align 4
  %42 = ashr i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @dev_printk(i32 %34, i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %42, i8* %46)
  br label %48

48:                                               ; preds = %33, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #2

declare dso_local i32 @dev_printk(i32, i32, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
