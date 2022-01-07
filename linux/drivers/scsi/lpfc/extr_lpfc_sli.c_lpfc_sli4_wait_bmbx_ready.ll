; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_wait_bmbx_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_wait_bmbx_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_register = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@lpfc_bmbx_rdy = common dso_local global i32 0, align 4
@MBXERR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32*)* @lpfc_sli4_wait_bmbx_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_wait_bmbx_ready(%struct.lpfc_hba* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lpfc_register, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba* %9, i32* %10)
  %12 = mul nsw i32 %11, 1000
  %13 = call i64 @msecs_to_jiffies(i32 %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %37, %2
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @readl(i32 %20)
  %22 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @lpfc_bmbx_rdy, align 4
  %24 = call i64 @bf_get(i32 %23, %struct.lpfc_register* %8)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  %28 = call i32 @mdelay(i32 2)
  br label %29

29:                                               ; preds = %27, %16
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @time_after(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @MBXERR_ERROR, align 4
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %16, label %41

41:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @lpfc_mbox_tmo_val(%struct.lpfc_hba*, i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @bf_get(i32, %struct.lpfc_register*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
