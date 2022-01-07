; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_netlink_event_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_netlink_event_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_dev = type { i32 }
%struct.sk_buff = type { i32 }

@tcmu_genl_family = common dso_local global i32 0, align 4
@TCMU_MCGRP_CONFIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@TCMU_CMD_ADDED_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_dev*, i32, %struct.sk_buff*, i8*)* @tcmu_netlink_event_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_netlink_event_send(%struct.tcmu_dev* %0, i32 %1, %struct.sk_buff* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcmu_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.tcmu_dev* %0, %struct.tcmu_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i32 @genlmsg_end(%struct.sk_buff* %11, i8* %12)
  %14 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @tcmu_init_genl_cmd_reply(%struct.tcmu_dev* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call i32 @nlmsg_free(%struct.sk_buff* %20)
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %47

23:                                               ; preds = %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = load i32, i32* @TCMU_MCGRP_CONFIG, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @genlmsg_multicast_allns(i32* @tcmu_genl_family, %struct.sk_buff* %24, i32 0, i32 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @ESRCH, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @TCMU_CMD_ADDED_DEVICE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %23
  %40 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %41 = call i32 @tcmu_wait_genl_cmd_reply(%struct.tcmu_dev* %40)
  store i32 %41, i32* %5, align 4
  br label %47

42:                                               ; preds = %35, %30
  %43 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %44 = call i32 @tcmu_destroy_genl_cmd_reply(%struct.tcmu_dev* %43)
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %39, %19
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @tcmu_init_genl_cmd_reply(%struct.tcmu_dev*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_multicast_allns(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @tcmu_wait_genl_cmd_reply(%struct.tcmu_dev*) #1

declare dso_local i32 @tcmu_destroy_genl_cmd_reply(%struct.tcmu_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
