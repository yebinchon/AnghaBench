; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_core.c_s3fwrn5_nci_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_core.c_s3fwrn5_nci_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.s3fwrn5_info = type { i32 }

@S3FWRN5_MODE_NCI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*, %struct.sk_buff*)* @s3fwrn5_nci_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fwrn5_nci_send(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.s3fwrn5_info*, align 8
  %7 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %9 = call %struct.s3fwrn5_info* @nci_get_drvdata(%struct.nci_dev* %8)
  store %struct.s3fwrn5_info* %9, %struct.s3fwrn5_info** %6, align 8
  %10 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %6, align 8
  %11 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %6, align 8
  %14 = call i64 @s3fwrn5_get_mode(%struct.s3fwrn5_info* %13)
  %15 = load i64, i64* @S3FWRN5_MODE_NCI, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %6, align 8
  %19 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %37

23:                                               ; preds = %2
  %24 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @s3fwrn5_write(%struct.s3fwrn5_info* %24, %struct.sk_buff* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %6, align 8
  %34 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.s3fwrn5_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @s3fwrn5_get_mode(%struct.s3fwrn5_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @s3fwrn5_write(%struct.s3fwrn5_info*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
