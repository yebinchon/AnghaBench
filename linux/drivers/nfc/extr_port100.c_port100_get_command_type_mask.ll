; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_get_command_type_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_get_command_type_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port100 = type { i32 }
%struct.sk_buff = type { i32, i64 }

@ENOMEM = common dso_local global i64 0, align 8
@PORT100_CMD_GET_COMMAND_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.port100*)* @port100_get_command_type_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @port100_get_command_type_mask(%struct.port100* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.port100*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  store %struct.port100* %0, %struct.port100** %3, align 8
  %7 = load %struct.port100*, %struct.port100** %3, align 8
  %8 = call %struct.sk_buff* @port100_alloc_skb(%struct.port100* %7, i32 0)
  store %struct.sk_buff* %8, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @ENOMEM, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %2, align 8
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.port100*, %struct.port100** %3, align 8
  %16 = load i32, i32* @PORT100_CMD_GET_COMMAND_TYPE, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.sk_buff* @port100_send_cmd_sync(%struct.port100* %15, i32 %16, %struct.sk_buff* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i64 @IS_ERR(%struct.sk_buff* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i64 @PTR_ERR(%struct.sk_buff* %23)
  store i64 %24, i64* %2, align 8
  br label %42

25:                                               ; preds = %14
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i64 0, i64* %6, align 8
  br label %38

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @be64_to_cpu(i32 %36)
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %31, %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @dev_kfree_skb(%struct.sk_buff* %39)
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %38, %22, %11
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local %struct.sk_buff* @port100_alloc_skb(%struct.port100*, i32) #1

declare dso_local %struct.sk_buff* @port100_send_cmd_sync(%struct.port100*, i32, %struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i64 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
