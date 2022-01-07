; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_read_pdu_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_read_pdu_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"skb 0x%p, off %u, %d, TCP_ERR.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CXGBI_DBG_PDU_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"skb 0x%p, off %u, %d, TCP_SUSPEND, rc %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"skb 0x%p, off %u, %d, TCP_SKB_DONE.\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Invalid pdu or skb.\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"skb 0x%p, off %u, %d, TCP_SEG_DONE, rc %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"skb 0x%p, off %u, %d, invalid status %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.sk_buff*, i32, i32)* @read_pdu_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_pdu_skb(%struct.iscsi_conn* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @iscsi_tcp_recv_skb(%struct.iscsi_conn* %12, %struct.sk_buff* %13, i32 %14, i32 %15, i32* %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %53 [
    i32 131, label %18
    i32 128, label %25
    i32 129, label %34
    i32 130, label %44
  ]

18:                                               ; preds = %4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i8*, %struct.sk_buff*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %61

25:                                               ; preds = %4
  %26 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %27 = shl i32 1, %26
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @log_debug(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %61

34:                                               ; preds = %4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (i8*, %struct.sk_buff*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %41 = call i32 @iscsi_conn_printk(i32 %39, %struct.iscsi_conn* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %61

44:                                               ; preds = %4
  %45 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %46 = shl i32 1, %45
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @log_debug(i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %61

53:                                               ; preds = %4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i8*, %struct.sk_buff*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), %struct.sk_buff* %54, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %53, %44, %34, %25, %18
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @iscsi_tcp_recv_skb(%struct.iscsi_conn*, %struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, %struct.sk_buff*, i32, i32, ...) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
