; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_act_open_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_act_open_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.cxgbi_sock = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.cpl_act_open_rpl = type { i32 }
%struct.cxgb4_lld_info = type { %struct.tid_info* }
%struct.tid_info = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"NO matching conn. atid %u, tid %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"tid %u/%u, status %u.\0Acsk 0x%p,%u,0x%lx. \00", align 1
@CPL_ERR_TCAM_FULL = common dso_local global i32 0, align 4
@CPL_ERR_CONN_EXIST = common dso_local global i32 0, align 4
@CPL_ERR_ARP_MISS = common dso_local global i32 0, align 4
@csk_act_open_retry_timer = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*, %struct.sk_buff*)* @do_act_open_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_act_open_rpl(%struct.cxgbi_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca %struct.cpl_act_open_rpl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxgb4_lld_info*, align 8
  %11 = alloca %struct.tid_info*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.cpl_act_open_rpl*
  store %struct.cpl_act_open_rpl* %15, %struct.cpl_act_open_rpl** %6, align 8
  %16 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %6, align 8
  %17 = call i32 @GET_TID(%struct.cpl_act_open_rpl* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %6, align 8
  %19 = getelementptr inbounds %struct.cpl_act_open_rpl, %struct.cpl_act_open_rpl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32_to_cpu(i32 %20)
  %22 = call i32 @AOPEN_ATID_G(i32 %21)
  %23 = call i32 @TID_TID_G(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %6, align 8
  %25 = getelementptr inbounds %struct.cpl_act_open_rpl, %struct.cpl_act_open_rpl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  %28 = call i32 @AOPEN_STATUS_G(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %30 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device* %29)
  store %struct.cxgb4_lld_info* %30, %struct.cxgb4_lld_info** %10, align 8
  %31 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %10, align 8
  %32 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %31, i32 0, i32 0
  %33 = load %struct.tid_info*, %struct.tid_info** %32, align 8
  store %struct.tid_info* %33, %struct.tid_info** %11, align 8
  %34 = load %struct.tid_info*, %struct.tid_info** %11, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.cxgbi_sock* @lookup_atid(%struct.tid_info* %34, i32 %35)
  store %struct.cxgbi_sock* %36, %struct.cxgbi_sock** %5, align 8
  %37 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %38 = icmp ne %struct.cxgbi_sock* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %139

47:                                               ; preds = %2
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %49 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %48, i32 0, i32 7
  %50 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %51 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %50, i32 0, i32 6
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %56 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %57 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %60 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pr_info_ipaddr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32* %49, i32* %51, i32 %52, i32 %53, i32 %54, %struct.cxgbi_sock* %55, i32 %58, i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @is_neg_adv(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %47
  br label %139

67:                                               ; preds = %47
  %68 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %69 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @module_put(i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @CPL_ERR_TCAM_FULL, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @CPL_ERR_CONN_EXIST, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @CPL_ERR_ARP_MISS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %10, align 8
  %88 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %87, i32 0, i32 0
  %89 = load %struct.tid_info*, %struct.tid_info** %88, align 8
  %90 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %91 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %6, align 8
  %94 = call i32 @GET_TID(%struct.cpl_act_open_rpl* %93)
  %95 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %96 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @cxgb4_remove_tid(%struct.tid_info* %89, i32 %92, i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %86, %82, %78, %74, %67
  %100 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %101 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %100)
  %102 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %103 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %102, i32 0, i32 0
  %104 = call i32 @spin_lock_bh(i32* %103)
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @CPL_ERR_CONN_EXIST, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %99
  %109 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %110 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @csk_act_open_retry_timer, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %108
  %116 = load i64, i64* @csk_act_open_retry_timer, align 8
  %117 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %118 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  %120 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %121 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %120, i32 0, i32 1
  %122 = load i64, i64* @jiffies, align 8
  %123 = load i32, i32* @HZ, align 4
  %124 = sdiv i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %122, %125
  %127 = call i32 @mod_timer(%struct.TYPE_2__* %121, i64 %126)
  br label %133

128:                                              ; preds = %108, %99
  %129 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @act_open_rpl_status_to_errno(i32 %130)
  %132 = call i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock* %129, i32 %131)
  br label %133

133:                                              ; preds = %128, %115
  %134 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %135 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %134, i32 0, i32 0
  %136 = call i32 @spin_unlock_bh(i32* %135)
  %137 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %138 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %137)
  br label %139

139:                                              ; preds = %133, %66, %43
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = call i32 @__kfree_skb(%struct.sk_buff* %140)
  ret void
}

declare dso_local i32 @GET_TID(%struct.cpl_act_open_rpl*) #1

declare dso_local i32 @TID_TID_G(i32) #1

declare dso_local i32 @AOPEN_ATID_G(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @AOPEN_STATUS_G(i32) #1

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device*) #1

declare dso_local %struct.cxgbi_sock* @lookup_atid(%struct.tid_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @pr_info_ipaddr(i8*, i32*, i32*, i32, i32, i32, %struct.cxgbi_sock*, i32, i32) #1

declare dso_local i64 @is_neg_adv(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @cxgb4_remove_tid(%struct.tid_info*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @act_open_rpl_status_to_errno(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
