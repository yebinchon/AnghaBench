; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_do_abort_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_do_abort_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_abort_req_rss = type { i64 }
%struct.cxgbi_sock = type { i32, i32, i32, i32, i32 }

@CPL_ABORT_NO_RST = common dso_local global i32 0, align 4
@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@CPL_ERR_RTX_NEG_ADVICE = common dso_local global i64 0, align 8
@CPL_ERR_PERSIST_NEG_ADVICE = common dso_local global i64 0, align 8
@CTPF_ABORT_REQ_RCVD = common dso_local global i32 0, align 4
@CTP_ABORTING = common dso_local global i32 0, align 4
@CTPF_ABORT_RPL_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t3cdev*, %struct.sk_buff*, i8*)* @do_abort_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_abort_req(%struct.t3cdev* %0, %struct.sk_buff* %1, i8* %2) #0 {
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cpl_abort_req_rss*, align 8
  %8 = alloca %struct.cxgbi_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.cpl_abort_req_rss* @cplhdr(%struct.sk_buff* %10)
  store %struct.cpl_abort_req_rss* %11, %struct.cpl_abort_req_rss** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.cxgbi_sock*
  store %struct.cxgbi_sock* %13, %struct.cxgbi_sock** %8, align 8
  %14 = load i32, i32* @CPL_ABORT_NO_RST, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %16 = shl i32 1, %15
  %17 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %21 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %22 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %25 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %28 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @log_debug(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %20, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %7, align 8
  %32 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CPL_ERR_RTX_NEG_ADVICE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %3
  %37 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %7, align 8
  %38 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CPL_ERR_PERSIST_NEG_ADVICE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %3
  br label %88

43:                                               ; preds = %36
  %44 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %45 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %44)
  %46 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %47 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %46, i32 0, i32 0
  %48 = call i32 @spin_lock_bh(i32* %47)
  %49 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %50 = load i32, i32* @CTPF_ABORT_REQ_RCVD, align 4
  %51 = call i32 @cxgbi_sock_flag(%struct.cxgbi_sock* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %43
  %54 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %55 = load i32, i32* @CTPF_ABORT_REQ_RCVD, align 4
  %56 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %54, i32 %55)
  %57 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %58 = load i32, i32* @CTP_ABORTING, align 4
  %59 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %57, i32 %58)
  br label %82

60:                                               ; preds = %43
  %61 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %62 = load i32, i32* @CTPF_ABORT_REQ_RCVD, align 4
  %63 = call i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock* %61, i32 %62)
  %64 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @send_abort_rpl(%struct.cxgbi_sock* %64, i32 %65)
  %67 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %68 = load i32, i32* @CTPF_ABORT_RPL_PENDING, align 4
  %69 = call i32 @cxgbi_sock_flag(%struct.cxgbi_sock* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %60
  %72 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %73 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %7, align 8
  %74 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @abort_status_to_errno(%struct.cxgbi_sock* %72, i64 %75, i32* %9)
  %77 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %78 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %80 = call i32 @cxgbi_sock_closed(%struct.cxgbi_sock* %79)
  br label %81

81:                                               ; preds = %71, %60
  br label %82

82:                                               ; preds = %81, %53
  %83 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %84 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_bh(i32* %84)
  %86 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %8, align 8
  %87 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %86)
  br label %88

88:                                               ; preds = %82, %42
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call i32 @__kfree_skb(%struct.sk_buff* %89)
  ret i32 0
}

declare dso_local %struct.cpl_abort_req_rss* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_set_state(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @send_abort_rpl(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @abort_status_to_errno(%struct.cxgbi_sock*, i64, i32*) #1

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
