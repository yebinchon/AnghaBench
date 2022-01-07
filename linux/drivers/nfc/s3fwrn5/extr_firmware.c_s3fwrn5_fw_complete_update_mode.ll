; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_firmware.c_s3fwrn5_fw_complete_update_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_firmware.c_s3fwrn5_fw_complete_update_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3fwrn5_fw_info = type { i32 }
%struct.sk_buff = type { i64 }
%struct.s3fwrn5_fw_header = type { i64 }

@S3FWRN5_FW_MSG_CMD = common dso_local global i32 0, align 4
@S3FWRN5_FW_CMD_COMPLETE_UPDATE_MODE = common dso_local global i32 0, align 4
@S3FWRN5_FW_RET_SUCCESS = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3fwrn5_fw_info*)* @s3fwrn5_fw_complete_update_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fwrn5_fw_complete_update_mode(%struct.s3fwrn5_fw_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s3fwrn5_fw_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.s3fwrn5_fw_header*, align 8
  %7 = alloca i32, align 4
  store %struct.s3fwrn5_fw_info* %0, %struct.s3fwrn5_fw_info** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %8 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %9 = load i32, i32* @S3FWRN5_FW_MSG_CMD, align 4
  %10 = load i32, i32* @S3FWRN5_FW_CMD_COMPLETE_UPDATE_MODE, align 4
  %11 = call i32 @s3fwrn5_fw_prep_msg(%struct.s3fwrn5_fw_info* %8, %struct.sk_buff** %4, i32 %9, i32 %10, i32* null, i32 0)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %3, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @s3fwrn5_fw_send_msg(%struct.s3fwrn5_fw_info* %17, %struct.sk_buff* %18, %struct.sk_buff** %5)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @kfree_skb(%struct.sk_buff* %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %16
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.s3fwrn5_fw_header*
  store %struct.s3fwrn5_fw_header* %30, %struct.s3fwrn5_fw_header** %6, align 8
  %31 = load %struct.s3fwrn5_fw_header*, %struct.s3fwrn5_fw_header** %6, align 8
  %32 = getelementptr inbounds %struct.s3fwrn5_fw_header, %struct.s3fwrn5_fw_header* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @S3FWRN5_FW_RET_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EPROTO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %26
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %24, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @s3fwrn5_fw_prep_msg(%struct.s3fwrn5_fw_info*, %struct.sk_buff**, i32, i32, i32*, i32) #1

declare dso_local i32 @s3fwrn5_fw_send_msg(%struct.s3fwrn5_fw_info*, %struct.sk_buff*, %struct.sk_buff**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
