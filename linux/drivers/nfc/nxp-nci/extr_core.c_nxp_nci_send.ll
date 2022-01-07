; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_core.c_nxp_nci_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_core.c_nxp_nci_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nxp_nci_info = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.sk_buff*)* }

@ENOTSUPP = common dso_local global i32 0, align 4
@NXP_NCI_MODE_NCI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*, %struct.sk_buff*)* @nxp_nci_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_nci_send(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nxp_nci_info*, align 8
  %6 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %8 = call %struct.nxp_nci_info* @nci_get_drvdata(%struct.nci_dev* %7)
  store %struct.nxp_nci_info* %8, %struct.nxp_nci_info** %5, align 8
  %9 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %5, align 8
  %10 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %12, align 8
  %14 = icmp ne i32 (i32, %struct.sk_buff*)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %5, align 8
  %20 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NXP_NCI_MODE_NCI, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %44

27:                                               ; preds = %18
  %28 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %5, align 8
  %29 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %31, align 8
  %33 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %5, align 8
  %34 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 %32(i32 %35, %struct.sk_buff* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @kfree_skb(%struct.sk_buff* %41)
  br label %43

43:                                               ; preds = %40, %27
  br label %44

44:                                               ; preds = %43, %24, %15
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.nxp_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
