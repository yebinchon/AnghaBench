; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_alloc_new_cmdskb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_alloc_new_cmdskb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.qlink_cmd = type { i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@QTNF_MAX_CMD_BUF_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"VIF%u.%u CMD %u: alloc failed\0A\00", align 1
@QLINK_MSG_TYPE_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i8*, i8*, i32, i64)* @qtnf_cmd_alloc_new_cmdskb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.qlink_cmd*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* @QTNF_MAX_CMD_BUF_SIZE, align 8
  %13 = add i64 40, %12
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sk_buff* @__dev_alloc_skb(i64 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %11, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24, i32 %25)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %58

27:                                               ; preds = %4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @skb_put_zero(%struct.sk_buff* %28, i64 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.qlink_cmd*
  store %struct.qlink_cmd* %34, %struct.qlink_cmd** %10, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = load %struct.qlink_cmd*, %struct.qlink_cmd** %10, align 8
  %40 = getelementptr inbounds %struct.qlink_cmd, %struct.qlink_cmd* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8* %38, i8** %41, align 8
  %42 = load i32, i32* @QLINK_MSG_TYPE_CMD, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.qlink_cmd*, %struct.qlink_cmd** %10, align 8
  %45 = getelementptr inbounds %struct.qlink_cmd, %struct.qlink_cmd* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.qlink_cmd*, %struct.qlink_cmd** %10, align 8
  %50 = getelementptr inbounds %struct.qlink_cmd, %struct.qlink_cmd* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.qlink_cmd*, %struct.qlink_cmd** %10, align 8
  %53 = getelementptr inbounds %struct.qlink_cmd, %struct.qlink_cmd* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.qlink_cmd*, %struct.qlink_cmd** %10, align 8
  %56 = getelementptr inbounds %struct.qlink_cmd, %struct.qlink_cmd* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %5, align 8
  br label %58

58:                                               ; preds = %27, %22
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %59
}

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i8*, i32) #1

declare dso_local i32 @skb_put_zero(%struct.sk_buff*, i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
