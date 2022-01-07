; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_process_ddpvld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_main.c_cxgbit_process_ddpvld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { i32 }
%struct.cxgbit_lro_pdu_cb = type { i32 }

@CPL_RX_ISCSI_DDP_STATUS_HCRC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"tid 0x%x, status 0x%x, hcrc bad.\0A\00", align 1
@PDUCBF_RX_HCRC_ERR = common dso_local global i32 0, align 4
@CPL_RX_ISCSI_DDP_STATUS_DCRC_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"tid 0x%x, status 0x%x, dcrc bad.\0A\00", align 1
@PDUCBF_RX_DCRC_ERR = common dso_local global i32 0, align 4
@CPL_RX_ISCSI_DDP_STATUS_PAD_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"tid 0x%x, status 0x%x, pad bad.\0A\00", align 1
@CPL_RX_ISCSI_DDP_STATUS_DDP_SHIFT = common dso_local global i32 0, align 4
@PDUCBF_RX_DATA = common dso_local global i32 0, align 4
@PDUCBF_RX_DATA_DDPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbit_sock*, %struct.cxgbit_lro_pdu_cb*, i32)* @cxgbit_process_ddpvld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbit_process_ddpvld(%struct.cxgbit_sock* %0, %struct.cxgbit_lro_pdu_cb* %1, i32 %2) #0 {
  %4 = alloca %struct.cxgbit_sock*, align 8
  %5 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %6 = alloca i32, align 4
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %4, align 8
  store %struct.cxgbit_lro_pdu_cb* %1, %struct.cxgbit_lro_pdu_cb** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CPL_RX_ISCSI_DDP_STATUS_HCRC_SHIFT, align 4
  %9 = shl i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %14 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i32, i32* @PDUCBF_RX_HCRC_ERR, align 4
  %19 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %5, align 8
  %20 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %12, %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @CPL_RX_ISCSI_DDP_STATUS_DCRC_SHIFT, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %31 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* @PDUCBF_RX_DCRC_ERR, align 4
  %36 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %5, align 8
  %37 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %29, %23
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @CPL_RX_ISCSI_DDP_STATUS_PAD_SHIFT, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %48 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @CPL_RX_ISCSI_DDP_STATUS_DDP_SHIFT, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %5, align 8
  %60 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PDUCBF_RX_DATA, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @PDUCBF_RX_DATA_DDPD, align 4
  %67 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %5, align 8
  %68 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %58, %52
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
