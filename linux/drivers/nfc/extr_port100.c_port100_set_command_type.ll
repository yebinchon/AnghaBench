; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_set_command_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_set_command_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port100 = type { i32 }
%struct.sk_buff = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@PORT100_CMD_SET_COMMAND_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port100*, i32)* @port100_set_command_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port100_set_command_type(%struct.port100* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.port100*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.port100* %0, %struct.port100** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.port100*, %struct.port100** %4, align 8
  %10 = call %struct.sk_buff* @port100_alloc_skb(%struct.port100* %9, i32 1)
  store %struct.sk_buff* %10, %struct.sk_buff** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @skb_put_u8(%struct.sk_buff* %17, i32 %18)
  %20 = load %struct.port100*, %struct.port100** %4, align 8
  %21 = load i32, i32* @PORT100_CMD_SET_COMMAND_TYPE, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.sk_buff* @port100_send_cmd_sync(%struct.port100* %20, i32 %21, %struct.sk_buff* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i64 @IS_ERR(%struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call i32 @PTR_ERR(%struct.sk_buff* %28)
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %16
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call i32 @dev_kfree_skb(%struct.sk_buff* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %30, %27, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.sk_buff* @port100_alloc_skb(%struct.port100*, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

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
