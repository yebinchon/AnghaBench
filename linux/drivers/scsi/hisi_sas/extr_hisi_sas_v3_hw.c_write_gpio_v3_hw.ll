; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_write_gpio_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_write_gpio_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"write gpio: invalid reg range[%d, %d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SAS_GPIO_TX_0_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"write gpio: unsupported or bad reg type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, i32, i32, i32, i32*)* @write_gpio_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_gpio_v3_hw(%struct.hisi_hba* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hisi_hba*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %16 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %15, i32 0, i32 1
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %12, align 8
  %18 = load i32*, i32** %11, align 8
  store i32* %18, i32** %13, align 8
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %63 [
    i32 128, label %20
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %21, %22
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %25 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 3
  %28 = sdiv i32 %27, 4
  %29 = icmp sgt i32 %23, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %33, %34
  %36 = sub nsw i32 %35, 1
  %37 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %70

40:                                               ; preds = %20
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %59, %40
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %47 = load i32, i32* @SAS_GPIO_TX_0_1, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %48, %49
  %51 = mul nsw i32 %50, 4
  %52 = add nsw i32 %47, %51
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @hisi_sas_write32(%struct.hisi_hba* %46, i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %41

62:                                               ; preds = %41
  br label %69

63:                                               ; preds = %5
  %64 = load %struct.device*, %struct.device** %12, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %70

69:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %63, %30
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
