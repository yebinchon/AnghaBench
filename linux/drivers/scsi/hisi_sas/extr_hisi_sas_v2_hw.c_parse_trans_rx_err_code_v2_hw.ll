; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_parse_trans_rx_err_code_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_parse_trans_rx_err_code_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parse_trans_rx_err_code_v2_hw.trans_rx_err_code_prio = internal constant [32 x i32] [i32 135, i32 139, i32 134, i32 137, i32 138, i32 133, i32 136, i32 140, i32 142, i32 144, i32 145, i32 146, i32 147, i32 148, i32 159, i32 143, i32 141, i32 149, i32 128, i32 129, i32 158, i32 157, i32 156, i32 155, i32 150, i32 131, i32 130, i32 154, i32 153, i32 152, i32 151, i32 132], align 16
@TRANS_RX_FAIL_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @parse_trans_rx_err_code_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_trans_rx_err_code_v2_hw(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @parse_trans_rx_err_code_v2_hw.trans_rx_err_code_prio, i64 0, i64 0))
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* @parse_trans_rx_err_code_v2_hw.trans_rx_err_code_prio, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TRANS_RX_FAIL_BASE, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %10
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32 x i32], [32 x i32]* @parse_trans_rx_err_code_v2_hw.trans_rx_err_code_prio, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %2, align 4
  br label %32

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %22
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
