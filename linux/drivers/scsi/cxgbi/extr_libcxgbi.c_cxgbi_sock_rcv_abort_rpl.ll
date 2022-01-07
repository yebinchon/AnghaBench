; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_rcv_abort_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_rcv_abort_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, i32, i32, i32 }

@CTPF_ABORT_RPL_RCVD = common dso_local global i32 0, align 4
@CTPF_ABORT_RPL_PENDING = common dso_local global i32 0, align 4
@CTPF_ABORT_REQ_RCVD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"csk 0x%p,%u,0x%lx,%u,ABT_RPL_RSS.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_sock_rcv_abort_rpl(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %3 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %4 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %3)
  %5 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %6 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %9 = load i32, i32* @CTPF_ABORT_RPL_RCVD, align 4
  %10 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %8, i32 %9)
  %11 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %12 = load i32, i32* @CTPF_ABORT_RPL_PENDING, align 4
  %13 = call i64 @cxgbi_sock_flag(%struct.cxgbi_sock* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %17 = load i32, i32* @CTPF_ABORT_RPL_PENDING, align 4
  %18 = call i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock* %16, i32 %17)
  %19 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %20 = load i32, i32* @CTPF_ABORT_REQ_RCVD, align 4
  %21 = call i64 @cxgbi_sock_flag(%struct.cxgbi_sock* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %25 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %26 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %29 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %32 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %24, i32 %27, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %23, %15
  %36 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %37 = call i32 @cxgbi_sock_closed(%struct.cxgbi_sock* %36)
  br label %38

38:                                               ; preds = %35, %1
  %39 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %40 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %43 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %42)
  ret void
}

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i64 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_closed(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
