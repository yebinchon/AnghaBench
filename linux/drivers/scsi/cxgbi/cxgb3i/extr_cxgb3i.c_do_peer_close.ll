; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_do_peer_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_do_peer_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cxgbi_sock = type { i32, i32, i32 }

@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t3cdev*, %struct.sk_buff*, i8*)* @do_peer_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_peer_close(%struct.t3cdev* %0, %struct.sk_buff* %1, i8* %2) #0 {
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cxgbi_sock*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.cxgbi_sock*
  store %struct.cxgbi_sock* %9, %struct.cxgbi_sock** %7, align 8
  %10 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %11 = shl i32 1, %10
  %12 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  %15 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %17 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %20 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %23 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @log_debug(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %27 = call i32 @cxgbi_sock_rcv_peer_close(%struct.cxgbi_sock* %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @__kfree_skb(%struct.sk_buff* %28)
  ret i32 0
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_rcv_peer_close(%struct.cxgbi_sock*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
