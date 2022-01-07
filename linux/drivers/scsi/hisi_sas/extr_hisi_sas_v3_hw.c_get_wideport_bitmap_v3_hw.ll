; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_get_wideport_bitmap_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_get_wideport_bitmap_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }

@PHY_PORT_NUM_MA = common dso_local global i32 0, align 4
@PHY_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, i32)* @get_wideport_bitmap_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_wideport_bitmap_v3_hw(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %10 = load i32, i32* @PHY_PORT_NUM_MA, align 4
  %11 = call i32 @hisi_sas_read32(%struct.hisi_hba* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %13 = load i32, i32* @PHY_STATE, align 4
  %14 = call i32 @hisi_sas_read32(%struct.hisi_hba* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %42, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %18 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 4
  %31 = ashr i32 %28, %30
  %32 = and i32 %31, 15
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %27
  br label %41

41:                                               ; preds = %40, %21
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %15

45:                                               ; preds = %15
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
