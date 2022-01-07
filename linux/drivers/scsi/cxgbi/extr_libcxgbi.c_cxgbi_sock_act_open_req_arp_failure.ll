; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_act_open_req_arp_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_act_open_req_arp_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.cxgbi_sock = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.module* }
%struct.module = type { i32 }

@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@CTP_ACTIVE_OPEN = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_sock_act_open_req_arp_failure(i8* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca %struct.module*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.cxgbi_sock*
  store %struct.cxgbi_sock* %10, %struct.cxgbi_sock** %5, align 8
  %11 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %12 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.module*, %struct.module** %14, align 8
  store %struct.module* %15, %struct.module** %6, align 8
  %16 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %17 = shl i32 1, %16
  %18 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %19 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %20 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %23 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %26 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @log_debug(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %18, i64 %21, i32 %24, i32 %27)
  %29 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %30 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %29)
  %31 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %32 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %31, i32 0, i32 1
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %35 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CTP_ACTIVE_OPEN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %41 = load i32, i32* @EHOSTUNREACH, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock* %40, i32 %42)
  br label %44

44:                                               ; preds = %39, %2
  %45 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %46 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock_bh(i32* %46)
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %49 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @__kfree_skb(%struct.sk_buff* %50)
  %52 = load %struct.module*, %struct.module** %6, align 8
  %53 = call i32 @module_put(%struct.module* %52)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i64, i32, i32) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
