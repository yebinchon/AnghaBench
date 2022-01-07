; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_send_dev_remove_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_send_dev_remove_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_dev = type { i32 }
%struct.sk_buff = type { i32 }

@TCMU_CMD_REMOVED_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_dev*)* @tcmu_send_dev_remove_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_send_dev_remove_event(%struct.tcmu_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcmu_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.tcmu_dev* %0, %struct.tcmu_dev** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %8 = load i32, i32* @TCMU_CMD_REMOVED_DEVICE, align 4
  %9 = call i32 @tcmu_netlink_event_init(%struct.tcmu_dev* %7, i32 %8, %struct.sk_buff** %4, i8** %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %16 = load i32, i32* @TCMU_CMD_REMOVED_DEVICE, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @tcmu_netlink_event_send(%struct.tcmu_dev* %15, i32 %16, %struct.sk_buff* %17, i8* %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %14, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @tcmu_netlink_event_init(%struct.tcmu_dev*, i32, %struct.sk_buff**, i8**) #1

declare dso_local i32 @tcmu_netlink_event_send(%struct.tcmu_dev*, i32, %struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
