; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_ndlc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_ndlc.c_ndlc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_phy_ops = type { i32 }
%struct.device = type { i32 }
%struct.llt_ndlc = type { i32, i32, i32, i32, i32, i32, i64, %struct.device*, i8*, %struct.nfc_phy_ops* }
%struct.st_nci_se_status = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ndlc_t1_timeout = common dso_local global i32 0, align 4
@ndlc_t2_timeout = common dso_local global i32 0, align 4
@llt_ndlc_sm_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndlc_probe(i8* %0, %struct.nfc_phy_ops* %1, %struct.device* %2, i32 %3, i32 %4, %struct.llt_ndlc** %5, %struct.st_nci_se_status* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nfc_phy_ops*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.llt_ndlc**, align 8
  %15 = alloca %struct.st_nci_se_status*, align 8
  %16 = alloca %struct.llt_ndlc*, align 8
  store i8* %0, i8** %9, align 8
  store %struct.nfc_phy_ops* %1, %struct.nfc_phy_ops** %10, align 8
  store %struct.device* %2, %struct.device** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.llt_ndlc** %5, %struct.llt_ndlc*** %14, align 8
  store %struct.st_nci_se_status* %6, %struct.st_nci_se_status** %15, align 8
  %17 = load %struct.device*, %struct.device** %11, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.llt_ndlc* @devm_kzalloc(%struct.device* %17, i32 56, i32 %18)
  store %struct.llt_ndlc* %19, %struct.llt_ndlc** %16, align 8
  %20 = load %struct.llt_ndlc*, %struct.llt_ndlc** %16, align 8
  %21 = icmp ne %struct.llt_ndlc* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %65

25:                                               ; preds = %7
  %26 = load %struct.nfc_phy_ops*, %struct.nfc_phy_ops** %10, align 8
  %27 = load %struct.llt_ndlc*, %struct.llt_ndlc** %16, align 8
  %28 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %27, i32 0, i32 9
  store %struct.nfc_phy_ops* %26, %struct.nfc_phy_ops** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.llt_ndlc*, %struct.llt_ndlc** %16, align 8
  %31 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  %32 = load %struct.device*, %struct.device** %11, align 8
  %33 = load %struct.llt_ndlc*, %struct.llt_ndlc** %16, align 8
  %34 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %33, i32 0, i32 7
  store %struct.device* %32, %struct.device** %34, align 8
  %35 = load %struct.llt_ndlc*, %struct.llt_ndlc** %16, align 8
  %36 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.llt_ndlc*, %struct.llt_ndlc** %16, align 8
  %38 = load %struct.llt_ndlc**, %struct.llt_ndlc*** %14, align 8
  store %struct.llt_ndlc* %37, %struct.llt_ndlc** %38, align 8
  %39 = load %struct.llt_ndlc*, %struct.llt_ndlc** %16, align 8
  %40 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %39, i32 0, i32 5
  %41 = load i32, i32* @ndlc_t1_timeout, align 4
  %42 = call i32 @timer_setup(i32* %40, i32 %41, i32 0)
  %43 = load %struct.llt_ndlc*, %struct.llt_ndlc** %16, align 8
  %44 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %43, i32 0, i32 4
  %45 = load i32, i32* @ndlc_t2_timeout, align 4
  %46 = call i32 @timer_setup(i32* %44, i32 %45, i32 0)
  %47 = load %struct.llt_ndlc*, %struct.llt_ndlc** %16, align 8
  %48 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %47, i32 0, i32 3
  %49 = call i32 @skb_queue_head_init(i32* %48)
  %50 = load %struct.llt_ndlc*, %struct.llt_ndlc** %16, align 8
  %51 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %50, i32 0, i32 2
  %52 = call i32 @skb_queue_head_init(i32* %51)
  %53 = load %struct.llt_ndlc*, %struct.llt_ndlc** %16, align 8
  %54 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %53, i32 0, i32 1
  %55 = call i32 @skb_queue_head_init(i32* %54)
  %56 = load %struct.llt_ndlc*, %struct.llt_ndlc** %16, align 8
  %57 = getelementptr inbounds %struct.llt_ndlc, %struct.llt_ndlc* %56, i32 0, i32 0
  %58 = load i32, i32* @llt_ndlc_sm_work, align 4
  %59 = call i32 @INIT_WORK(i32* %57, i32 %58)
  %60 = load %struct.llt_ndlc*, %struct.llt_ndlc** %16, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.st_nci_se_status*, %struct.st_nci_se_status** %15, align 8
  %64 = call i32 @st_nci_probe(%struct.llt_ndlc* %60, i32 %61, i32 %62, %struct.st_nci_se_status* %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %25, %22
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local %struct.llt_ndlc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @st_nci_probe(%struct.llt_ndlc*, i32, i32, %struct.st_nci_se_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
