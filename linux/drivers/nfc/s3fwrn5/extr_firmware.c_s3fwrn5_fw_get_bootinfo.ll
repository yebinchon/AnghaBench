; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_firmware.c_s3fwrn5_fw_get_bootinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_firmware.c_s3fwrn5_fw_get_bootinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3fwrn5_fw_info = type { i32 }
%struct.s3fwrn5_fw_cmd_get_bootinfo_rsp = type { i32 }
%struct.sk_buff = type { i64 }
%struct.s3fwrn5_fw_header = type { i64 }

@S3FWRN5_FW_MSG_CMD = common dso_local global i32 0, align 4
@S3FWRN5_FW_CMD_GET_BOOTINFO = common dso_local global i32 0, align 4
@S3FWRN5_FW_RET_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@S3FWRN5_FW_HDR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_cmd_get_bootinfo_rsp*)* @s3fwrn5_fw_get_bootinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fwrn5_fw_get_bootinfo(%struct.s3fwrn5_fw_info* %0, %struct.s3fwrn5_fw_cmd_get_bootinfo_rsp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3fwrn5_fw_info*, align 8
  %5 = alloca %struct.s3fwrn5_fw_cmd_get_bootinfo_rsp*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.s3fwrn5_fw_header*, align 8
  %9 = alloca i32, align 4
  store %struct.s3fwrn5_fw_info* %0, %struct.s3fwrn5_fw_info** %4, align 8
  store %struct.s3fwrn5_fw_cmd_get_bootinfo_rsp* %1, %struct.s3fwrn5_fw_cmd_get_bootinfo_rsp** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %10 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %4, align 8
  %11 = load i32, i32* @S3FWRN5_FW_MSG_CMD, align 4
  %12 = load i32, i32* @S3FWRN5_FW_CMD_GET_BOOTINFO, align 4
  %13 = call i32 @s3fwrn5_fw_prep_msg(%struct.s3fwrn5_fw_info* %10, %struct.sk_buff** %6, i32 %11, i32 %12, i32* null, i32 0)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.s3fwrn5_fw_info*, %struct.s3fwrn5_fw_info** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i32 @s3fwrn5_fw_send_msg(%struct.s3fwrn5_fw_info* %19, %struct.sk_buff* %20, %struct.sk_buff** %7)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @kfree_skb(%struct.sk_buff* %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %53

28:                                               ; preds = %18
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.s3fwrn5_fw_header*
  store %struct.s3fwrn5_fw_header* %32, %struct.s3fwrn5_fw_header** %8, align 8
  %33 = load %struct.s3fwrn5_fw_header*, %struct.s3fwrn5_fw_header** %8, align 8
  %34 = getelementptr inbounds %struct.s3fwrn5_fw_header, %struct.s3fwrn5_fw_header* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @S3FWRN5_FW_RET_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %49

41:                                               ; preds = %28
  %42 = load %struct.s3fwrn5_fw_cmd_get_bootinfo_rsp*, %struct.s3fwrn5_fw_cmd_get_bootinfo_rsp** %5, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @S3FWRN5_FW_HDR_SIZE, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @memcpy(%struct.s3fwrn5_fw_cmd_get_bootinfo_rsp* %42, i64 %47, i32 10)
  br label %49

49:                                               ; preds = %41, %38
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %26, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @s3fwrn5_fw_prep_msg(%struct.s3fwrn5_fw_info*, %struct.sk_buff**, i32, i32, i32*, i32) #1

declare dso_local i32 @s3fwrn5_fw_send_msg(%struct.s3fwrn5_fw_info*, %struct.sk_buff*, %struct.sk_buff**) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.s3fwrn5_fw_cmd_get_bootinfo_rsp*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
