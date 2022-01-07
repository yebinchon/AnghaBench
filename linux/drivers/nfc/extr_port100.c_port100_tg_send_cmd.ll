; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_tg_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_tg_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.port100 = type { i32 }
%struct.port100_tg_comm_rf_cmd = type { i8*, i8*, i8* }
%struct.port100_cb_arg = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PORT100_CMD_TG_COMM_RF = common dso_local global i32 0, align 4
@port100_tg_comm_rf_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, %struct.sk_buff*, i32, i32, i8*)* @port100_tg_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port100_tg_send_cmd(%struct.nfc_digital_dev* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfc_digital_dev*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.port100*, align 8
  %13 = alloca %struct.port100_tg_comm_rf_cmd*, align 8
  %14 = alloca %struct.port100_cb_arg*, align 8
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %7, align 8
  %16 = call %struct.port100* @nfc_digital_get_drvdata(%struct.nfc_digital_dev* %15)
  store %struct.port100* %16, %struct.port100** %12, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.port100_cb_arg* @kzalloc(i32 16, i32 %17)
  store %struct.port100_cb_arg* %18, %struct.port100_cb_arg** %14, align 8
  %19 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %14, align 8
  %20 = icmp ne %struct.port100_cb_arg* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %55

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %14, align 8
  %27 = getelementptr inbounds %struct.port100_cb_arg, %struct.port100_cb_arg* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %14, align 8
  %30 = getelementptr inbounds %struct.port100_cb_arg, %struct.port100_cb_arg* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call i32 @skb_push(%struct.sk_buff* %31, i32 24)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.port100_tg_comm_rf_cmd*
  store %struct.port100_tg_comm_rf_cmd* %36, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %37 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %38 = call i32 @memset(%struct.port100_tg_comm_rf_cmd* %37, i32 0, i32 24)
  %39 = call i8* @cpu_to_le16(i32 500)
  %40 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %41 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = call i8* @cpu_to_le16(i32 65535)
  %43 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %44 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = load %struct.port100_tg_comm_rf_cmd*, %struct.port100_tg_comm_rf_cmd** %13, align 8
  %48 = getelementptr inbounds %struct.port100_tg_comm_rf_cmd, %struct.port100_tg_comm_rf_cmd* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.port100*, %struct.port100** %12, align 8
  %50 = load i32, i32* @PORT100_CMD_TG_COMM_RF, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = load i32, i32* @port100_tg_comm_rf_complete, align 4
  %53 = load %struct.port100_cb_arg*, %struct.port100_cb_arg** %14, align 8
  %54 = call i32 @port100_send_cmd_async(%struct.port100* %49, i32 %50, %struct.sk_buff* %51, i32 %52, %struct.port100_cb_arg* %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %24, %21
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.port100* @nfc_digital_get_drvdata(%struct.nfc_digital_dev*) #1

declare dso_local %struct.port100_cb_arg* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.port100_tg_comm_rf_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @port100_send_cmd_async(%struct.port100*, i32, %struct.sk_buff*, i32, %struct.port100_cb_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
