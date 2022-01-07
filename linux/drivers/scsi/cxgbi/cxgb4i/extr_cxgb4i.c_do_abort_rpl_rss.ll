; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_abort_rpl_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_abort_rpl_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.cxgbi_sock = type { i32, i32, i32, i32, i32 }
%struct.cpl_abort_rpl_rss = type { i64 }
%struct.cxgb4_lld_info = type { %struct.tid_info* }
%struct.tid_info = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"csk 0x%p,%u,0x%lx,%u, status %u.\0A\00", align 1
@CPL_ERR_ABORT_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*, %struct.sk_buff*)* @do_abort_rpl_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_abort_rpl_rss(%struct.cxgbi_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca %struct.cpl_abort_rpl_rss*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxgb4_lld_info*, align 8
  %9 = alloca %struct.tid_info*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cpl_abort_rpl_rss*
  store %struct.cpl_abort_rpl_rss* %13, %struct.cpl_abort_rpl_rss** %6, align 8
  %14 = load %struct.cpl_abort_rpl_rss*, %struct.cpl_abort_rpl_rss** %6, align 8
  %15 = call i32 @GET_TID(%struct.cpl_abort_rpl_rss* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %17 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device* %16)
  store %struct.cxgb4_lld_info* %17, %struct.cxgb4_lld_info** %8, align 8
  %18 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %8, align 8
  %19 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %18, i32 0, i32 0
  %20 = load %struct.tid_info*, %struct.tid_info** %19, align 8
  store %struct.tid_info* %20, %struct.tid_info** %9, align 8
  %21 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.cxgbi_sock* @lookup_tid(%struct.tid_info* %21, i32 %22)
  store %struct.cxgbi_sock* %23, %struct.cxgbi_sock** %5, align 8
  %24 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %25 = icmp ne %struct.cxgbi_sock* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %59

27:                                               ; preds = %2
  %28 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %29 = icmp ne %struct.cxgbi_sock* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %32 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %31, i32 0, i32 4
  %33 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %34 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %33, i32 0, i32 3
  %35 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %36 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %37 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %40 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %43 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cpl_abort_rpl_rss*, %struct.cpl_abort_rpl_rss** %6, align 8
  %46 = getelementptr inbounds %struct.cpl_abort_rpl_rss, %struct.cpl_abort_rpl_rss* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @pr_info_ipaddr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %32, i32* %34, %struct.cxgbi_sock* %35, i32 %38, i32 %41, i32 %44, i64 %47)
  br label %49

49:                                               ; preds = %30, %27
  %50 = load %struct.cpl_abort_rpl_rss*, %struct.cpl_abort_rpl_rss** %6, align 8
  %51 = getelementptr inbounds %struct.cpl_abort_rpl_rss, %struct.cpl_abort_rpl_rss* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CPL_ERR_ABORT_FAILED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %59

56:                                               ; preds = %49
  %57 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %58 = call i32 @cxgbi_sock_rcv_abort_rpl(%struct.cxgbi_sock* %57)
  br label %59

59:                                               ; preds = %56, %55, %26
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @__kfree_skb(%struct.sk_buff* %60)
  ret void
}

declare dso_local i32 @GET_TID(%struct.cpl_abort_rpl_rss*) #1

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device*) #1

declare dso_local %struct.cxgbi_sock* @lookup_tid(%struct.tid_info*, i32) #1

declare dso_local i32 @pr_info_ipaddr(i8*, i32*, i32*, %struct.cxgbi_sock*, i32, i32, i32, i64) #1

declare dso_local i32 @cxgbi_sock_rcv_abort_rpl(%struct.cxgbi_sock*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
