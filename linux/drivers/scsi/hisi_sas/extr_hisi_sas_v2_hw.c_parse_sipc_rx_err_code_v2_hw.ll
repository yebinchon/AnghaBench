; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_parse_sipc_rx_err_code_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_parse_sipc_rx_err_code_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parse_sipc_rx_err_code_v2_hw.sipc_rx_err_code_prio = internal constant [11 x i32] [i32 136, i32 133, i32 137, i32 129, i32 128, i32 131, i32 134, i32 135, i32 132, i32 130, i32 138], align 16
@SIPC_RX_ERR_BASE = common dso_local global i32 0, align 4
@SIPC_RX_ERR_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @parse_sipc_rx_err_code_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_sipc_rx_err_code_v2_hw(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([11 x i32], [11 x i32]* @parse_sipc_rx_err_code_v2_hw.sipc_rx_err_code_prio, i64 0, i64 0))
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [11 x i32], [11 x i32]* @parse_sipc_rx_err_code_v2_hw.sipc_rx_err_code_prio, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SIPC_RX_ERR_BASE, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SIPC_RX_ERR_MSK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 16
  %23 = shl i32 1, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %10
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [11 x i32], [11 x i32]* @parse_sipc_rx_err_code_v2_hw.sipc_rx_err_code_prio, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %10
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %6

35:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
