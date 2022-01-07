; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_abort_req_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_abort_req_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.cxgbi_sock = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cpl_abort_req_rss = type { i32 }
%struct.cxgb4_lld_info = type { %struct.tid_info* }
%struct.tid_info = type { i32 }

@CPL_ABORT_NO_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't find connection for tid %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"csk 0x%p,%u,0x%lx,%u, status %u.\0A\00", align 1
@CTPF_ABORT_REQ_RCVD = common dso_local global i32 0, align 4
@CTPF_TX_DATA_SENT = common dso_local global i32 0, align 4
@CTP_ABORTING = common dso_local global i32 0, align 4
@CTPF_ABORT_RPL_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*, %struct.sk_buff*)* @do_abort_req_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_abort_req_rss(%struct.cxgbi_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca %struct.cpl_abort_req_rss*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxgb4_lld_info*, align 8
  %9 = alloca %struct.tid_info*, align 8
  %10 = alloca i32, align 4
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.cpl_abort_req_rss*
  store %struct.cpl_abort_req_rss* %14, %struct.cpl_abort_req_rss** %6, align 8
  %15 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %6, align 8
  %16 = call i32 @GET_TID(%struct.cpl_abort_req_rss* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %18 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device* %17)
  store %struct.cxgb4_lld_info* %18, %struct.cxgb4_lld_info** %8, align 8
  %19 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %8, align 8
  %20 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %19, i32 0, i32 0
  %21 = load %struct.tid_info*, %struct.tid_info** %20, align 8
  store %struct.tid_info* %21, %struct.tid_info** %9, align 8
  %22 = load i32, i32* @CPL_ABORT_NO_RST, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.cxgbi_sock* @lookup_tid(%struct.tid_info* %23, i32 %24)
  store %struct.cxgbi_sock* %25, %struct.cxgbi_sock** %5, align 8
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %27 = icmp ne %struct.cxgbi_sock* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %109

35:                                               ; preds = %2
  %36 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %37 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %36, i32 0, i32 6
  %38 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %39 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %38, i32 0, i32 5
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %41 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %42 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %45 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %48 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %6, align 8
  %51 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pr_info_ipaddr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* %37, i32* %39, %struct.cxgbi_sock* %40, i32 %43, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %6, align 8
  %55 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @is_neg_adv(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %35
  br label %109

60:                                               ; preds = %35
  %61 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %62 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %61)
  %63 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %64 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %63, i32 0, i32 0
  %65 = call i32 @spin_lock_bh(i32* %64)
  %66 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %67 = load i32, i32* @CTPF_ABORT_REQ_RCVD, align 4
  %68 = call i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock* %66, i32 %67)
  %69 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %70 = load i32, i32* @CTPF_TX_DATA_SENT, align 4
  %71 = call i32 @cxgbi_sock_flag(%struct.cxgbi_sock* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %60
  %74 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %75 = call i32 @send_tx_flowc_wr(%struct.cxgbi_sock* %74)
  %76 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %77 = load i32, i32* @CTPF_TX_DATA_SENT, align 4
  %78 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %60
  %80 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %81 = load i32, i32* @CTPF_ABORT_REQ_RCVD, align 4
  %82 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %80, i32 %81)
  %83 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %84 = load i32, i32* @CTP_ABORTING, align 4
  %85 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %83, i32 %84)
  %86 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @send_abort_rpl(%struct.cxgbi_sock* %86, i32 %87)
  %89 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %90 = load i32, i32* @CTPF_ABORT_RPL_PENDING, align 4
  %91 = call i32 @cxgbi_sock_flag(%struct.cxgbi_sock* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %79
  %94 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %95 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %6, align 8
  %96 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @abort_status_to_errno(%struct.cxgbi_sock* %94, i32 %97, i32* %10)
  %99 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %100 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %102 = call i32 @cxgbi_sock_closed(%struct.cxgbi_sock* %101)
  br label %103

103:                                              ; preds = %93, %79
  %104 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %105 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock_bh(i32* %105)
  %107 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %108 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %107)
  br label %109

109:                                              ; preds = %103, %59, %32
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = call i32 @__kfree_skb(%struct.sk_buff* %110)
  ret void
}

declare dso_local i32 @GET_TID(%struct.cpl_abort_req_rss*) #1

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device*) #1

declare dso_local %struct.cxgbi_sock* @lookup_tid(%struct.tid_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_info_ipaddr(i8*, i32*, i32*, %struct.cxgbi_sock*, i32, i32, i32, i32) #1

declare dso_local i64 @is_neg_adv(i32) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @send_tx_flowc_wr(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_set_state(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @send_abort_rpl(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @abort_status_to_errno(%struct.cxgbi_sock*, i32, i32*) #1

declare dso_local i32 @cxgbi_sock_closed(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
