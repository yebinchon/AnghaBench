; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_netlink_k.c_netlink_rcv_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_netlink_k.c_netlink_rcv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.nlmsghdr = type { i64, i32 }
%struct.net_device = type { i32 }

@NLMSG_HDRLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"nl cb - invalid skb length\0A\00", align 1
@ND_MAX_MSG_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"nl cb - invalid length (%d,%d)\0A\00", align 1
@ND_IFINDEX_LEN = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"nl cb - dev (%d) not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @netlink_rcv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netlink_rcv_cb(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.nlmsghdr*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NLMSG_HDRLEN, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %19, %struct.nlmsghdr** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %24 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %15
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %29 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ND_MAX_MSG_LEN, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27, %15
  %34 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %38 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %36, i64 %39)
  br label %67

41:                                               ; preds = %27
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %43 = call i32 @ND_NLMSG_IFIDX(%struct.nlmsghdr* %42)
  %44 = load i32, i32* @ND_IFINDEX_LEN, align 4
  %45 = call i32 @memcpy(i32* %7, i32 %43, i32 %44)
  %46 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %47 = call i8* @ND_NLMSG_DATA(%struct.nlmsghdr* %46)
  store i8* %47, i8** %6, align 8
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %49 = call i32 @ND_NLMSG_R_LEN(%struct.nlmsghdr* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i32 %50)
  store %struct.net_device* %51, %struct.net_device** %4, align 8
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = icmp ne %struct.net_device* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %41
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %57 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @rcv_cb(%struct.net_device* %55, i32 %58, i8* %59, i32 %60)
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 @dev_put(%struct.net_device* %62)
  br label %67

64:                                               ; preds = %41
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %13, %33, %64, %54
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ND_NLMSG_IFIDX(%struct.nlmsghdr*) #1

declare dso_local i8* @ND_NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @ND_NLMSG_R_LEN(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i32) #1

declare dso_local i32 @rcv_cb(%struct.net_device*, i32, i8*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
