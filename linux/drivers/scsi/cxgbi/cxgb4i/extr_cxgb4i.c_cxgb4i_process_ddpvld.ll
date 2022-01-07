; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_cxgb4i_process_ddpvld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_cxgb4i_process_ddpvld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32 }
%struct.sk_buff = type { i32 }

@CPL_RX_DDP_STATUS_HCRC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"csk 0x%p, lhdr 0x%p, status 0x%x, hcrc bad 0x%lx.\0A\00", align 1
@SKCBF_RX_HCRC_ERR = common dso_local global i32 0, align 4
@CPL_RX_DDP_STATUS_DCRC_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"csk 0x%p, lhdr 0x%p, status 0x%x, dcrc bad 0x%lx.\0A\00", align 1
@SKCBF_RX_DCRC_ERR = common dso_local global i32 0, align 4
@CPL_RX_DDP_STATUS_PAD_SHIFT = common dso_local global i32 0, align 4
@CXGBI_DBG_PDU_RX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"csk 0x%p, lhdr 0x%p, status 0x%x, pad bad.\0A\00", align 1
@SKCBF_RX_PAD_ERR = common dso_local global i32 0, align 4
@CPL_RX_DDP_STATUS_DDP_SHIFT = common dso_local global i32 0, align 4
@SKCBF_RX_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"csk 0x%p, lhdr 0x%p, 0x%x, data ddp'ed.\0A\00", align 1
@SKCBF_RX_DATA_DDPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_sock*, %struct.sk_buff*, i32)* @cxgb4i_process_ddpvld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb4i_process_ddpvld(%struct.cxgbi_sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.cxgbi_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CPL_RX_DDP_STATUS_HCRC_SHIFT, align 4
  %9 = shl i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %16)
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %13, %struct.sk_buff* %14, i32 %15, i32 %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load i32, i32* @SKCBF_RX_HCRC_ERR, align 4
  %21 = call i32 @cxgbi_skcb_set_flag(%struct.sk_buff* %19, i32 %20)
  br label %22

22:                                               ; preds = %12, %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @CPL_RX_DDP_STATUS_DCRC_SHIFT, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @cxgbi_skcb_flags(%struct.sk_buff* %32)
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_sock* %29, %struct.sk_buff* %30, i32 %31, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i32, i32* @SKCBF_RX_DCRC_ERR, align 4
  %37 = call i32 @cxgbi_skcb_set_flag(%struct.sk_buff* %35, i32 %36)
  br label %38

38:                                               ; preds = %28, %22
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CPL_RX_DDP_STATUS_PAD_SHIFT, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %46 = shl i32 1, %45
  %47 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @log_debug(i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.cxgbi_sock* %47, %struct.sk_buff* %48, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* @SKCBF_RX_PAD_ERR, align 4
  %53 = call i32 @cxgbi_skcb_set_flag(%struct.sk_buff* %51, i32 %52)
  br label %54

54:                                               ; preds = %44, %38
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @CPL_RX_DDP_STATUS_DDP_SHIFT, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load i32, i32* @SKCBF_RX_DATA, align 4
  %63 = call i32 @cxgbi_skcb_test_flag(%struct.sk_buff* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @CXGBI_DBG_PDU_RX, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @log_debug(i32 %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), %struct.cxgbi_sock* %68, %struct.sk_buff* %69, i32 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load i32, i32* @SKCBF_RX_DATA_DDPD, align 4
  %74 = call i32 @cxgbi_skcb_set_flag(%struct.sk_buff* %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %60, %54
  ret void
}

declare dso_local i32 @pr_info(i8*, %struct.cxgbi_sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cxgbi_skcb_flags(%struct.sk_buff*) #1

declare dso_local i32 @cxgbi_skcb_set_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @cxgbi_skcb_test_flag(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
