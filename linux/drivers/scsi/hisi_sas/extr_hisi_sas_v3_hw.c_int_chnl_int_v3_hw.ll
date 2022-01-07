; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_int_chnl_int_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_int_chnl_int_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }

@CHNL_INT_STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @int_chnl_int_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_chnl_int_v3_hw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hisi_hba*
  store %struct.hisi_hba* %9, %struct.hisi_hba** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %11 = load i32, i32* @CHNL_INT_STATUS, align 4
  %12 = call i32 @hisi_sas_read32(%struct.hisi_hba* %10, i32 %11)
  %13 = and i32 %12, -286331154
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %50, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, 4
  %21 = shl i32 2, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @handle_chl_int0_v3_hw(%struct.hisi_hba* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 4
  %32 = shl i32 4, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @handle_chl_int1_v3_hw(%struct.hisi_hba* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %41, 4
  %43 = shl i32 8, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @handle_chl_int2_v3_hw(%struct.hisi_hba* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %39
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %51, 4
  %53 = shl i32 14, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %14

59:                                               ; preds = %14
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %60
}

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @handle_chl_int0_v3_hw(%struct.hisi_hba*, i32) #1

declare dso_local i32 @handle_chl_int1_v3_hw(%struct.hisi_hba*, i32) #1

declare dso_local i32 @handle_chl_int2_v3_hw(%struct.hisi_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
