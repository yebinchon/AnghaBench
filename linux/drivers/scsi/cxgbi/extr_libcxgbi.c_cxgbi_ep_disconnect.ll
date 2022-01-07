; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ep_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ep_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.cxgbi_endpoint* }
%struct.cxgbi_endpoint = type { %struct.cxgbi_sock*, %struct.cxgbi_conn* }
%struct.cxgbi_sock = type { i64, i32, i32*, i32 }
%struct.cxgbi_conn = type { i32*, i64 }

@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ep 0x%p, cep 0x%p, cconn 0x%p, csk 0x%p,%u,0x%lx.\0A\00", align 1
@CTP_ESTABLISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_ep_disconnect(%struct.iscsi_endpoint* %0) #0 {
  %2 = alloca %struct.iscsi_endpoint*, align 8
  %3 = alloca %struct.cxgbi_endpoint*, align 8
  %4 = alloca %struct.cxgbi_conn*, align 8
  %5 = alloca %struct.cxgbi_sock*, align 8
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %2, align 8
  %6 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %6, i32 0, i32 0
  %8 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %7, align 8
  store %struct.cxgbi_endpoint* %8, %struct.cxgbi_endpoint** %3, align 8
  %9 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %3, align 8
  %10 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %9, i32 0, i32 1
  %11 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %10, align 8
  store %struct.cxgbi_conn* %11, %struct.cxgbi_conn** %4, align 8
  %12 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %3, align 8
  %13 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %12, i32 0, i32 0
  %14 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %13, align 8
  store %struct.cxgbi_sock* %14, %struct.cxgbi_sock** %5, align 8
  %15 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %16 = shl i32 1, %15
  %17 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %21 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %3, align 8
  %22 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %4, align 8
  %23 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %24 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %25 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %28 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @log_debug(i32 %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.iscsi_endpoint* %20, %struct.cxgbi_endpoint* %21, %struct.cxgbi_conn* %22, %struct.cxgbi_sock* %23, i64 %26, i32 %29)
  %31 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %4, align 8
  %32 = icmp ne %struct.cxgbi_conn* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %1
  %34 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %4, align 8
  %35 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %4, align 8
  %40 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @iscsi_suspend_tx(i64 %41)
  %43 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %44 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %43, i32 0, i32 1
  %45 = call i32 @write_lock_bh(i32* %44)
  %46 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %3, align 8
  %47 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %46, i32 0, i32 0
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %47, align 8
  %49 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %4, align 8
  %51 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %53 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %52, i32 0, i32 1
  %54 = call i32 @write_unlock_bh(i32* %53)
  br label %55

55:                                               ; preds = %38, %33, %1
  %56 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %57 = call i32 @iscsi_destroy_endpoint(%struct.iscsi_endpoint* %56)
  %58 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %59 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CTP_ESTABLISHED, align 8
  %62 = icmp sge i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %68 = call i32 @need_active_close(%struct.cxgbi_sock* %67)
  br label %72

69:                                               ; preds = %55
  %70 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %71 = call i32 @cxgbi_sock_closed(%struct.cxgbi_sock* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %74 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %73)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.iscsi_endpoint*, %struct.cxgbi_endpoint*, %struct.cxgbi_conn*, %struct.cxgbi_sock*, i64, i32) #1

declare dso_local i32 @iscsi_suspend_tx(i64) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @iscsi_destroy_endpoint(%struct.iscsi_endpoint*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @need_active_close(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgbi_sock_closed(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
