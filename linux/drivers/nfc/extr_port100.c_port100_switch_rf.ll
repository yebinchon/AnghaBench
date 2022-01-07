; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_switch_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_switch_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.port100 = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PORT100_CMD_SWITCH_RF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, i32)* @port100_switch_rf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port100_switch_rf(%struct.nfc_digital_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.port100*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %10 = call %struct.port100* @nfc_digital_get_drvdata(%struct.nfc_digital_dev* %9)
  store %struct.port100* %10, %struct.port100** %6, align 8
  %11 = load %struct.port100*, %struct.port100** %6, align 8
  %12 = call %struct.sk_buff* @port100_alloc_skb(%struct.port100* %11, i32 1)
  store %struct.sk_buff* %12, %struct.sk_buff** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = call i32 @skb_put_u8(%struct.sk_buff* %19, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %29 = call i32 @port100_abort_cmd(%struct.nfc_digital_dev* %28)
  br label %30

30:                                               ; preds = %27, %18
  %31 = load %struct.port100*, %struct.port100** %6, align 8
  %32 = load i32, i32* @PORT100_CMD_SWITCH_RF, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = call %struct.sk_buff* @port100_send_cmd_sync(%struct.port100* %31, i32 %32, %struct.sk_buff* %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %8, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = call i64 @IS_ERR(%struct.sk_buff* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = call i32 @PTR_ERR(%struct.sk_buff* %39)
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %30
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i32 @dev_kfree_skb(%struct.sk_buff* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %38, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.port100* @nfc_digital_get_drvdata(%struct.nfc_digital_dev*) #1

declare dso_local %struct.sk_buff* @port100_alloc_skb(%struct.port100*, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @port100_abort_cmd(%struct.nfc_digital_dev*) #1

declare dso_local %struct.sk_buff* @port100_send_cmd_sync(%struct.port100*, i32, %struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
