; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.iscsi_uevent = type { i64, i32 }

@rx_queue_mutex = common dso_local global i32 0, align 4
@NLMSG_HDRLEN = common dso_local global i64 0, align 8
@ISCSI_KEVENT_IF_ERROR = common dso_local global i64 0, align 8
@ISCSI_UEVENT_GET_STATS = common dso_local global i64 0, align 8
@ISCSI_UEVENT_GET_CHAP = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @iscsi_if_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_if_rx(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.iscsi_uevent*, align 8
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call i32 @NETLINK_CB(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = call i32 @mutex_lock(i32* @rx_queue_mutex)
  br label %16

16:                                               ; preds = %113, %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NLMSG_HDRLEN, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %117

22:                                               ; preds = %16
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %23)
  store %struct.nlmsghdr* %24, %struct.nlmsghdr** %7, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %26 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 24
  br i1 %29, label %39, label %30

30:                                               ; preds = %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %35 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30, %22
  br label %117

40:                                               ; preds = %30
  %41 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %42 = call %struct.iscsi_uevent* @nlmsg_data(%struct.nlmsghdr* %41)
  store %struct.iscsi_uevent* %42, %struct.iscsi_uevent** %8, align 8
  %43 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %44 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = call i64 @NLMSG_ALIGN(i64 %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %53, %40
  %58 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %59 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %60 = call i32 @iscsi_if_recv_msg(%struct.sk_buff* %58, %struct.nlmsghdr* %59, i64* %9)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i64, i64* @ISCSI_KEVENT_IF_ERROR, align 8
  %65 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %8, align 8
  %66 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %8, align 8
  %69 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %63, %57
  br label %71

71:                                               ; preds = %111, %70
  %72 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %8, align 8
  %73 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ISCSI_UEVENT_GET_STATS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  br label %113

81:                                               ; preds = %77, %71
  %82 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %8, align 8
  %83 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ISCSI_UEVENT_GET_CHAP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  br label %113

91:                                               ; preds = %87, %81
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %94 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %8, align 8
  %97 = call i32 @iscsi_if_send_reply(i32 %92, i32 %95, %struct.iscsi_uevent* %96, i32 16)
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @ECONNREFUSED, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @ESRCH, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp ne i32 %107, %109
  br label %111

111:                                              ; preds = %106, %101, %98
  %112 = phi i1 [ false, %101 ], [ false, %98 ], [ %110, %106 ]
  br i1 %112, label %71, label %113

113:                                              ; preds = %111, %90, %80
  %114 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @skb_pull(%struct.sk_buff* %114, i64 %115)
  br label %16

117:                                              ; preds = %39, %16
  %118 = call i32 @mutex_unlock(i32* @rx_queue_mutex)
  ret void
}

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local %struct.iscsi_uevent* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @NLMSG_ALIGN(i64) #1

declare dso_local i32 @iscsi_if_recv_msg(%struct.sk_buff*, %struct.nlmsghdr*, i64*) #1

declare dso_local i32 @iscsi_if_send_reply(i32, i32, %struct.iscsi_uevent*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
