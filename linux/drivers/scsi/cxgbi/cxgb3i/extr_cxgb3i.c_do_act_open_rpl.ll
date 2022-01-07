; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_do_act_open_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_do_act_open_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cxgbi_sock = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.cpl_act_open_rpl = type { i64 }

@.str = private unnamed_addr constant [51 x i8] c"csk 0x%p,%u,0x%lx,%u, status %u, %pI4:%u-%pI4:%u.\0A\00", align 1
@CPL_ERR_TCAM_FULL = common dso_local global i64 0, align 8
@CPL_ERR_CONN_EXIST = common dso_local global i64 0, align 8
@CPL_ERR_ARP_MISS = common dso_local global i64 0, align 8
@act_open_retry_timer = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t3cdev*, %struct.sk_buff*, i8*)* @do_act_open_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_act_open_rpl(%struct.t3cdev* %0, %struct.sk_buff* %1, i8* %2) #0 {
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cxgbi_sock*, align 8
  %8 = alloca %struct.cpl_act_open_rpl*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.cxgbi_sock*
  store %struct.cxgbi_sock* %10, %struct.cxgbi_sock** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.cpl_act_open_rpl* @cplhdr(%struct.sk_buff* %11)
  store %struct.cpl_act_open_rpl* %12, %struct.cpl_act_open_rpl** %8, align 8
  %13 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %14 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %15 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %18 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %21 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %8, align 8
  %24 = getelementptr inbounds %struct.cpl_act_open_rpl, %struct.cpl_act_open_rpl* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %27 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %31 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ntohs(i32 %33)
  %35 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %36 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %40 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ntohs(i32 %42)
  %44 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %13, i32 %16, i32 %19, i32 %22, i64 %25, i32* %29, i32 %34, i32* %38, i32 %43)
  %45 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %8, align 8
  %46 = getelementptr inbounds %struct.cpl_act_open_rpl, %struct.cpl_act_open_rpl* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CPL_ERR_TCAM_FULL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %3
  %51 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %8, align 8
  %52 = getelementptr inbounds %struct.cpl_act_open_rpl, %struct.cpl_act_open_rpl* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CPL_ERR_CONN_EXIST, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %8, align 8
  %58 = getelementptr inbounds %struct.cpl_act_open_rpl, %struct.cpl_act_open_rpl* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CPL_ERR_ARP_MISS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %64 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %8, align 8
  %65 = call i32 @GET_TID(%struct.cpl_act_open_rpl* %64)
  %66 = call i32 @cxgb3_queue_tid_release(%struct.t3cdev* %63, i32 %65)
  br label %67

67:                                               ; preds = %62, %56, %50, %3
  %68 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %69 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %68)
  %70 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %71 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %70, i32 0, i32 0
  %72 = call i32 @spin_lock_bh(i32* %71)
  %73 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %8, align 8
  %74 = getelementptr inbounds %struct.cpl_act_open_rpl, %struct.cpl_act_open_rpl* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CPL_ERR_CONN_EXIST, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %67
  %79 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %80 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @act_open_retry_timer, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load i64, i64* @act_open_retry_timer, align 8
  %87 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %88 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i64 %86, i64* %89, align 8
  %90 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %91 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %90, i32 0, i32 1
  %92 = load i64, i64* @jiffies, align 8
  %93 = load i32, i32* @HZ, align 4
  %94 = sdiv i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %92, %95
  %97 = call i32 @mod_timer(%struct.TYPE_10__* %91, i64 %96)
  br label %105

98:                                               ; preds = %78, %67
  %99 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %100 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %8, align 8
  %101 = getelementptr inbounds %struct.cpl_act_open_rpl, %struct.cpl_act_open_rpl* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @act_open_rpl_status_to_errno(i64 %102)
  %104 = call i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock* %99, i32 %103)
  br label %105

105:                                              ; preds = %98, %85
  %106 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %107 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock_bh(i32* %107)
  %109 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %110 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = call i32 @__kfree_skb(%struct.sk_buff* %111)
  ret i32 0
}

declare dso_local %struct.cpl_act_open_rpl* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @pr_info(i8*, %struct.cxgbi_sock*, i32, i32, i32, i64, i32*, i32, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @cxgb3_queue_tid_release(%struct.t3cdev*, i32) #1

declare dso_local i32 @GET_TID(%struct.cpl_act_open_rpl*) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @act_open_rpl_status_to_errno(i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
