; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_netlink_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_netlink_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_dev = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@tcmu_genl_family = common dso_local global i32 0, align 4
@TCMU_ATTR_DEVICE = common dso_local global i32 0, align 4
@TCMU_ATTR_MINOR = common dso_local global i32 0, align 4
@TCMU_ATTR_DEVICE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_dev*, i32, %struct.sk_buff**, i8**)* @tcmu_netlink_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_netlink_event_init(%struct.tcmu_dev* %0, i32 %1, %struct.sk_buff** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcmu_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.tcmu_dev* %0, %struct.tcmu_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff** %2, %struct.sk_buff*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sk_buff* @genlmsg_new(i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %74

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i8* @genlmsg_put(%struct.sk_buff* %23, i32 0, i32 0, i32* @tcmu_genl_family, i32 0, i32 %24)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %70

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = load i32, i32* @TCMU_ATTR_DEVICE, align 4
  %32 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %33 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @nla_put_string(%struct.sk_buff* %30, i32 %31, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %70

40:                                               ; preds = %29
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %42 = load i32, i32* @TCMU_ATTR_MINOR, align 4
  %43 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %44 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nla_put_u32(%struct.sk_buff* %41, i32 %42, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %70

53:                                               ; preds = %40
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = load i32, i32* @TCMU_ATTR_DEVICE_ID, align 4
  %56 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %57 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @nla_put_u32(%struct.sk_buff* %54, i32 %55, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %70

64:                                               ; preds = %53
  %65 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %66 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  store %struct.sk_buff* %65, %struct.sk_buff** %66, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8**, i8*** %9, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %5, align 4
  br label %74

70:                                               ; preds = %63, %52, %39, %28
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %72 = call i32 @nlmsg_free(%struct.sk_buff* %71)
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %64, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
