; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_tg_set_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_tg_set_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.port100 = type { i32 }
%struct.sk_buff = type { i32* }

@NFC_DIGITAL_RF_TECH_LAST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tg_rf_settings = common dso_local global i32* null, align 8
@PORT100_CMD_TG_SET_RF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, i64)* @port100_tg_set_rf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port100_tg_set_rf(%struct.nfc_digital_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.port100*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %11 = call %struct.port100* @nfc_digital_get_drvdata(%struct.nfc_digital_dev* %10)
  store %struct.port100* %11, %struct.port100** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @NFC_DIGITAL_RF_TECH_LAST, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.port100*, %struct.port100** %6, align 8
  %20 = call %struct.sk_buff* @port100_alloc_skb(%struct.port100* %19, i32 4)
  store %struct.sk_buff* %20, %struct.sk_buff** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %18
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = load i32*, i32** @tg_rf_settings, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = call i32 @skb_put_data(%struct.sk_buff* %27, i32* %30, i32 4)
  %32 = load %struct.port100*, %struct.port100** %6, align 8
  %33 = load i32, i32* @PORT100_CMD_TG_SET_RF, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call %struct.sk_buff* @port100_send_cmd_sync(%struct.port100* %32, i32 %33, %struct.sk_buff* %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = call i64 @IS_ERR(%struct.sk_buff* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = call i32 @PTR_ERR(%struct.sk_buff* %40)
  store i32 %41, i32* %3, align 4
  br label %51

42:                                               ; preds = %26
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i32 @dev_kfree_skb(%struct.sk_buff* %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %42, %39, %23, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.port100* @nfc_digital_get_drvdata(%struct.nfc_digital_dev*) #1

declare dso_local %struct.sk_buff* @port100_alloc_skb(%struct.port100*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

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
