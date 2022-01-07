; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_get_wideport_bitmap_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_get_wideport_bitmap_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }

@PHY_PORT_NUM_MA = common dso_local global i32 0, align 4
@PHY_STATE = common dso_local global i32 0, align 4
@PORT_STATE = common dso_local global i32 0, align 4
@PORT_STATE_PHY8_PORT_NUM_MSK = common dso_local global i32 0, align 4
@PORT_STATE_PHY8_PORT_NUM_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, i32)* @get_wideport_bitmap_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_wideport_bitmap_v2_hw(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %11 = load i32, i32* @PHY_PORT_NUM_MA, align 4
  %12 = call i32 @hisi_sas_read32(%struct.hisi_hba* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %14 = load i32, i32* @PHY_STATE, align 4
  %15 = call i32 @hisi_sas_read32(%struct.hisi_hba* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %51, %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %19 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 9
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %24 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ %25, %22 ], [ 8, %26 ]
  %29 = icmp slt i32 %17, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 4
  %40 = ashr i32 %37, %39
  %41 = and i32 %40, 15
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %44, %36
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %16

54:                                               ; preds = %27
  %55 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %56 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 9
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %61 = load i32, i32* @PORT_STATE, align 4
  %62 = call i32 @hisi_sas_read32(%struct.hisi_hba* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 256
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @PORT_STATE_PHY8_PORT_NUM_MSK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @PORT_STATE_PHY8_PORT_NUM_OFF, align 4
  %71 = ashr i32 %69, %70
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, 512
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %66
  br label %78

78:                                               ; preds = %77, %59
  br label %79

79:                                               ; preds = %78, %54
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
