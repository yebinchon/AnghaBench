; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_transport = type { i32 (%struct.iscsi_cls_conn*, %struct.iscsi_uevent*)* }
%struct.iscsi_cls_conn = type opaque
%struct.iscsi_uevent = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.iscsi_stats = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.iscsi_cls_conn.0 = type { i32 }
%struct.iscsi_internal = type { i32 }

@ISCSI_STATS_CUSTOM_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"can not deliver stats: OOM\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ISCSI_NL_GRP_ISCSID = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_transport*, %struct.nlmsghdr*)* @iscsi_if_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_if_get_stats(%struct.iscsi_transport* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_transport*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.iscsi_uevent*, align 8
  %7 = alloca %struct.iscsi_stats*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.iscsi_cls_conn.0*, align 8
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca %struct.iscsi_uevent*, align 8
  %12 = alloca %struct.iscsi_internal*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iscsi_transport* %0, %struct.iscsi_transport** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  %16 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %17 = call %struct.iscsi_uevent* @nlmsg_data(%struct.nlmsghdr* %16)
  store %struct.iscsi_uevent* %17, %struct.iscsi_uevent** %6, align 8
  %18 = load i32, i32* @ISCSI_STATS_CUSTOM_MAX, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = add i64 40, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @nlmsg_total_size(i32 %22)
  store i32 %23, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.iscsi_transport*, %struct.iscsi_transport** %4, align 8
  %25 = call %struct.iscsi_internal* @iscsi_if_transport_lookup(%struct.iscsi_transport* %24)
  store %struct.iscsi_internal* %25, %struct.iscsi_internal** %12, align 8
  %26 = load %struct.iscsi_internal*, %struct.iscsi_internal** %12, align 8
  %27 = icmp ne %struct.iscsi_internal* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %153

31:                                               ; preds = %2
  %32 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %33 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %38 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.iscsi_cls_conn.0* @iscsi_conn_lookup(i32 %36, i32 %41)
  store %struct.iscsi_cls_conn.0* %42, %struct.iscsi_cls_conn.0** %9, align 8
  %43 = load %struct.iscsi_cls_conn.0*, %struct.iscsi_cls_conn.0** %9, align 8
  %44 = icmp ne %struct.iscsi_cls_conn.0* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* @EEXIST, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %153

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %149, %48
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call %struct.sk_buff* @alloc_skb(i32 %50, i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %8, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @KERN_ERR, align 4
  %57 = load %struct.iscsi_cls_conn.0*, %struct.iscsi_cls_conn.0** %9, align 8
  %58 = call i32 @iscsi_cls_conn_printk(i32 %56, %struct.iscsi_cls_conn.0* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %153

61:                                               ; preds = %49
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff* %62, i32 0, i32 0, i32 0, i32 %66, i32 0)
  store %struct.nlmsghdr* %67, %struct.nlmsghdr** %10, align 8
  %68 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %69 = call %struct.iscsi_uevent* @nlmsg_data(%struct.nlmsghdr* %68)
  store %struct.iscsi_uevent* %69, %struct.iscsi_uevent** %11, align 8
  %70 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %11, align 8
  %71 = call i32 @memset(%struct.iscsi_uevent* %70, i32 0, i32 20)
  %72 = load %struct.iscsi_cls_conn.0*, %struct.iscsi_cls_conn.0** %9, align 8
  %73 = getelementptr inbounds %struct.iscsi_cls_conn.0, %struct.iscsi_cls_conn.0* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @iscsi_handle(i32 %74)
  %76 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %11, align 8
  %77 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %79 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %11, align 8
  %82 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %84 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %11, align 8
  %89 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  %92 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %93 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %11, align 8
  %98 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 4
  %101 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %11, align 8
  %102 = bitcast %struct.iscsi_uevent* %101 to i8*
  %103 = getelementptr inbounds i8, i8* %102, i64 20
  %104 = bitcast i8* %103 to %struct.iscsi_stats*
  store %struct.iscsi_stats* %104, %struct.iscsi_stats** %7, align 8
  %105 = load %struct.iscsi_stats*, %struct.iscsi_stats** %7, align 8
  %106 = bitcast %struct.iscsi_stats* %105 to %struct.iscsi_uevent*
  %107 = call i32 @memset(%struct.iscsi_uevent* %106, i32 0, i32 20)
  %108 = load %struct.iscsi_transport*, %struct.iscsi_transport** %4, align 8
  %109 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %108, i32 0, i32 0
  %110 = load i32 (%struct.iscsi_cls_conn*, %struct.iscsi_uevent*)*, i32 (%struct.iscsi_cls_conn*, %struct.iscsi_uevent*)** %109, align 8
  %111 = load %struct.iscsi_cls_conn.0*, %struct.iscsi_cls_conn.0** %9, align 8
  %112 = bitcast %struct.iscsi_cls_conn.0* %111 to %struct.iscsi_cls_conn*
  %113 = load %struct.iscsi_stats*, %struct.iscsi_stats** %7, align 8
  %114 = bitcast %struct.iscsi_stats* %113 to %struct.iscsi_uevent*
  %115 = call i32 %110(%struct.iscsi_cls_conn* %112, %struct.iscsi_uevent* %114)
  %116 = load %struct.iscsi_stats*, %struct.iscsi_stats** %7, align 8
  %117 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 4, %119
  %121 = add i64 40, %120
  %122 = trunc i64 %121 to i32
  %123 = call i32 @nlmsg_total_size(i32 %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = sub i64 %125, 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @nlmsg_msg_size(i32 %128)
  store i32 %129, i32* %15, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @NLMSG_ALIGN(i32 %131)
  %133 = call i32 @skb_trim(%struct.sk_buff* %130, i32 %132)
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %136 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = load i32, i32* @ISCSI_NL_GRP_ISCSID, align 4
  %139 = load i32, i32* @GFP_ATOMIC, align 4
  %140 = call i32 @iscsi_multicast_skb(%struct.sk_buff* %137, i32 %138, i32 %139)
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %61
  %142 = load i32, i32* %14, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @ECONNREFUSED, align 4
  %147 = sub nsw i32 0, %146
  %148 = icmp ne i32 %145, %147
  br label %149

149:                                              ; preds = %144, %141
  %150 = phi i1 [ false, %141 ], [ %148, %144 ]
  br i1 %150, label %49, label %151

151:                                              ; preds = %149
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %55, %45, %28
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.iscsi_uevent* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_total_size(i32) #1

declare dso_local %struct.iscsi_internal* @iscsi_if_transport_lookup(%struct.iscsi_transport*) #1

declare dso_local %struct.iscsi_cls_conn.0* @iscsi_conn_lookup(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @iscsi_cls_conn_printk(i32, %struct.iscsi_cls_conn.0*, i8*) #1

declare dso_local %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.iscsi_uevent*, i32, i32) #1

declare dso_local i32 @iscsi_handle(i32) #1

declare dso_local i32 @nlmsg_msg_size(i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local i32 @iscsi_multicast_skb(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
