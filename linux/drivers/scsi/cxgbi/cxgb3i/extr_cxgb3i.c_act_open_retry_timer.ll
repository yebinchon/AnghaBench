; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_act_open_retry_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_act_open_retry_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { i32 }
%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { i32 }

@retry_timer = common dso_local global i32 0, align 4
@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@act_open_arp_failure = common dso_local global i32 0, align 4
@csk = common dso_local global %struct.cxgbi_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @act_open_retry_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @act_open_retry_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.cxgbi_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %6 = ptrtoint %struct.cxgbi_sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @retry_timer, align 4
  %9 = call %struct.cxgbi_sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.cxgbi_sock* %9, %struct.cxgbi_sock** %3, align 8
  %10 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %11 = shl i32 1, %10
  %12 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  %15 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %17 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %20 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %23 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @log_debug(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %27 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %26)
  %28 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %29 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.sk_buff* @alloc_wr(i32 4, i32 0, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %4, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %1
  %36 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock* %36, i32 %38)
  br label %54

40:                                               ; preds = %1
  %41 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %42 = bitcast %struct.cxgbi_sock* %41 to %struct.sock*
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  store %struct.sock* %42, %struct.sock** %44, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @act_open_arp_failure, align 4
  %47 = call i32 @set_arp_failure_handler(%struct.sk_buff* %45, i32 %46)
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %51 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @send_act_open_req(%struct.cxgbi_sock* %48, %struct.sk_buff* %49, i32 %52)
  br label %54

54:                                               ; preds = %40, %35
  %55 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %56 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_bh(i32* %56)
  %58 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %3, align 8
  %59 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %58)
  ret void
}

declare dso_local %struct.cxgbi_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @alloc_wr(i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @set_arp_failure_handler(%struct.sk_buff*, i32) #1

declare dso_local i32 @send_act_open_req(%struct.cxgbi_sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
