; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_abort_arp_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_abort_arp_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.cxgbi_sock = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.cpl_abort_req = type { i32 }

@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"csk 0x%p,%u,0x%lx, tid %u, abort.\0A\00", align 1
@CPL_ABORT_NO_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sk_buff*)* @abort_arp_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abort_arp_failure(i8* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca %struct.cpl_abort_req*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.cxgbi_sock*
  store %struct.cxgbi_sock* %8, %struct.cxgbi_sock** %5, align 8
  %9 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %10 = shl i32 1, %9
  %11 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %12 = shl i32 1, %11
  %13 = or i32 %10, %12
  %14 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %15 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %16 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %19 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %22 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @log_debug(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %14, i32 %17, i32 %20, i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.cpl_abort_req*
  store %struct.cpl_abort_req* %28, %struct.cpl_abort_req** %6, align 8
  %29 = load i32, i32* @CPL_ABORT_NO_RST, align 4
  %30 = load %struct.cpl_abort_req*, %struct.cpl_abort_req** %6, align 8
  %31 = getelementptr inbounds %struct.cpl_abort_req, %struct.cpl_abort_req* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %33 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %38 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @cxgb4_ofld_send(i32 %41, %struct.sk_buff* %42)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgb4_ofld_send(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
