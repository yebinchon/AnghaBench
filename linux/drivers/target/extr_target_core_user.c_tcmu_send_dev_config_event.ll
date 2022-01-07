; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_send_dev_config_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_send_dev_config_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_dev = type { i32 }
%struct.sk_buff = type { i32 }

@TCMU_CMD_RECONFIG_DEVICE = common dso_local global i32 0, align 4
@TCMU_ATTR_DEV_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_dev*, i8*)* @tcmu_send_dev_config_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_send_dev_config_event(%struct.tcmu_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcmu_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.tcmu_dev* %0, %struct.tcmu_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %10 = load i32, i32* @TCMU_CMD_RECONFIG_DEVICE, align 4
  %11 = call i32 @tcmu_netlink_event_init(%struct.tcmu_dev* %9, i32 %10, %struct.sk_buff** %6, i8** %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load i32, i32* @TCMU_ATTR_DEV_CFG, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @nla_put_string(%struct.sk_buff* %17, i32 %18, i8* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @nlmsg_free(%struct.sk_buff* %24)
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %16
  %28 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %29 = load i32, i32* @TCMU_CMD_RECONFIG_DEVICE, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @tcmu_netlink_event_send(%struct.tcmu_dev* %28, i32 %29, %struct.sk_buff* %30, i8* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %23, %14
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @tcmu_netlink_event_init(%struct.tcmu_dev*, i32, %struct.sk_buff**, i8**) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @tcmu_netlink_event_send(%struct.tcmu_dev*, i32, %struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
