; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_set_phy_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_94xx.c_set_phy_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.phy_tuning = type { i32, i32, i32, i32 }

@VANIR_A0_REV = common dso_local global i64 0, align 8
@GENERATION_1_SETTING = common dso_local global i32 0, align 4
@GENERATION_1_2_SETTING = common dso_local global i32 0, align 4
@GENERATION_2_3_SETTING = common dso_local global i32 0, align 4
@GENERATION_3_4_SETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32, i64, i64)* @set_phy_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_phy_tuning(%struct.mvs_info* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.phy_tuning, align 4
  %6 = alloca %struct.mvs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast %struct.phy_tuning* %5 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %2, i64* %13, align 4
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %3, i64* %14, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %16 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VANIR_A0_REV, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %87

23:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %84, %23
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %87

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  switch i32 %28, label %38 [
    i32 0, label %29
    i32 1, label %32
    i32 2, label %35
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @GENERATION_1_SETTING, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @GENERATION_1_2_SETTING, align 4
  store i32 %31, i32* %10, align 4
  br label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @GENERATION_1_2_SETTING, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @GENERATION_2_3_SETTING, align 4
  store i32 %34, i32* %10, align 4
  br label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @GENERATION_2_3_SETTING, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @GENERATION_3_4_SETTING, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %27, %35, %32, %29
  %39 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @mvs_write_port_vsr_addr(%struct.mvs_info* %39, i32 %40, i32 %41)
  %43 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @mvs_read_port_vsr_data(%struct.mvs_info* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, -264110081
  store i32 %47, i32* %8, align 4
  %48 = getelementptr inbounds %struct.phy_tuning, %struct.phy_tuning* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 11
  %51 = getelementptr inbounds %struct.phy_tuning, %struct.phy_tuning* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 7
  %54 = or i32 %50, %53
  %55 = getelementptr inbounds %struct.phy_tuning, %struct.phy_tuning* %5, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 1
  %58 = or i32 %54, %57
  %59 = shl i32 %58, 16
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @mvs_write_port_vsr_data(%struct.mvs_info* %62, i32 %63, i32 %64)
  %66 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @mvs_write_port_vsr_addr(%struct.mvs_info* %66, i32 %67, i32 %68)
  %70 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @mvs_read_port_vsr_data(%struct.mvs_info* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, -49153
  store i32 %74, i32* %8, align 4
  %75 = getelementptr inbounds %struct.phy_tuning, %struct.phy_tuning* %5, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 14
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @mvs_write_port_vsr_data(%struct.mvs_info* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %38
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %24

87:                                               ; preds = %22, %24
  ret void
}

declare dso_local i32 @mvs_write_port_vsr_addr(%struct.mvs_info*, i32, i32) #1

declare dso_local i32 @mvs_read_port_vsr_data(%struct.mvs_info*, i32) #1

declare dso_local i32 @mvs_write_port_vsr_data(%struct.mvs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
