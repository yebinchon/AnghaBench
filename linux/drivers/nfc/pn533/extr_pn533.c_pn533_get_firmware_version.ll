; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_get_firmware_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_get_firmware_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { i32 }
%struct.pn533_fw_version = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@PN533_CMD_GET_FIRMWARE_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn533*, %struct.pn533_fw_version*)* @pn533_get_firmware_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_get_firmware_version(%struct.pn533* %0, %struct.pn533_fw_version* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pn533*, align 8
  %5 = alloca %struct.pn533_fw_version*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.pn533* %0, %struct.pn533** %4, align 8
  store %struct.pn533_fw_version* %1, %struct.pn533_fw_version** %5, align 8
  %8 = load %struct.pn533*, %struct.pn533** %4, align 8
  %9 = call %struct.sk_buff* @pn533_alloc_skb(%struct.pn533* %8, i32 0)
  store %struct.sk_buff* %9, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.pn533*, %struct.pn533** %4, align 8
  %17 = load i32, i32* @PN533_CMD_GET_FIRMWARE_VERSION, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call %struct.sk_buff* @pn533_send_cmd_sync(%struct.pn533* %16, i32 %17, %struct.sk_buff* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call i64 @IS_ERR(%struct.sk_buff* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i32 @PTR_ERR(%struct.sk_buff* %24)
  store i32 %25, i32* %3, align 4
  br label %57

26:                                               ; preds = %15
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pn533_fw_version*, %struct.pn533_fw_version** %5, align 8
  %33 = getelementptr inbounds %struct.pn533_fw_version, %struct.pn533_fw_version* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pn533_fw_version*, %struct.pn533_fw_version** %5, align 8
  %40 = getelementptr inbounds %struct.pn533_fw_version, %struct.pn533_fw_version* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pn533_fw_version*, %struct.pn533_fw_version** %5, align 8
  %47 = getelementptr inbounds %struct.pn533_fw_version, %struct.pn533_fw_version* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pn533_fw_version*, %struct.pn533_fw_version** %5, align 8
  %54 = getelementptr inbounds %struct.pn533_fw_version, %struct.pn533_fw_version* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call i32 @dev_kfree_skb(%struct.sk_buff* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %26, %23, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.sk_buff* @pn533_alloc_skb(%struct.pn533*, i32) #1

declare dso_local %struct.sk_buff* @pn533_send_cmd_sync(%struct.pn533*, i32, %struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
