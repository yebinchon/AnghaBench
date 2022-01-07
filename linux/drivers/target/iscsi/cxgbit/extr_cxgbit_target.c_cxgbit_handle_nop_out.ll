; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_handle_nop_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_handle_nop_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_cmd = type { i8*, i32 }
%struct.cxgbit_lro_pdu_cb = type { i32, i32, i32, i64 }
%struct.iscsi_nopout = type { i64, i32 }

@PDUCBF_RX_DCRC_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Unable to recover from NOPOUT Ping DataCRC failure while in ERL=0.\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Dropping NOPOUT Command CmdSN: 0x%08x due to DataCRC error.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Unable to allocate memory for NOPOUT ping data.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Got %u bytes of NOPOUT ping data.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Ping Data: \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*, %struct.iscsi_cmd*)* @cxgbit_handle_nop_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_handle_nop_out(%struct.cxgbit_sock* %0, %struct.iscsi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxgbit_sock*, align 8
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %8 = alloca %struct.iscsi_nopout*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %4, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %5, align 8
  %12 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %13 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %12, i32 0, i32 1
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_conn* %14, %struct.iscsi_conn** %6, align 8
  %15 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %16 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(i32 %17)
  store %struct.cxgbit_lro_pdu_cb* %18, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %19 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %20 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.iscsi_nopout*
  store %struct.iscsi_nopout* %22, %struct.iscsi_nopout** %8, align 8
  store i8* null, i8** %9, align 8
  %23 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %24 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %27 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %28 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %8, align 8
  %29 = call i32 @iscsit_setup_nop_out(%struct.iscsi_conn* %26, %struct.iscsi_cmd* %27, %struct.iscsi_nopout* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %111

33:                                               ; preds = %2
  %34 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %35 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PDUCBF_RX_DCRC_ERR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %103

51:                                               ; preds = %40
  %52 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %8, align 8
  %53 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store i32 0, i32* %11, align 4
  br label %103

56:                                               ; preds = %33
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %98

59:                                               ; preds = %56
  %60 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %8, align 8
  %61 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @cpu_to_be32(i32 -1)
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kzalloc(i32 %67, i32 %68)
  store i8* %69, i8** %9, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %103

74:                                               ; preds = %65
  %75 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %76 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %79 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @skb_copy_bits(i32 %77, i32 %80, i8* %81, i32 %82)
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %90 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %93 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %74, %59, %56
  %99 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %100 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %101 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %8, align 8
  %102 = call i32 @iscsit_process_nop_out(%struct.iscsi_conn* %99, %struct.iscsi_cmd* %100, %struct.iscsi_nopout* %101)
  store i32 %102, i32* %3, align 4
  br label %111

103:                                              ; preds = %72, %51, %49
  %104 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %105 = icmp ne %struct.iscsi_cmd* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %108 = call i32 @iscsit_free_cmd(%struct.iscsi_cmd* %107, i32 0)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %98, %32
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(i32) #1

declare dso_local i32 @iscsit_setup_nop_out(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_nopout*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_copy_bits(i32, i32, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @iscsit_process_nop_out(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_nopout*) #1

declare dso_local i32 @iscsit_free_cmd(%struct.iscsi_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
