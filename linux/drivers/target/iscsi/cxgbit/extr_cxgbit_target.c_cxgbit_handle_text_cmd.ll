; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_handle_text_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_handle_text_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_cmd = type { i8* }
%struct.cxgbit_lro_pdu_cb = type { i32, i32, i64, i32 }
%struct.iscsi_text = type { i32 }

@PDUCBF_RX_DCRC_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Unable to recover from Text Data digest failure while in ERL=0.\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Dropping Text Command CmdSN: 0x%08x due to DataCRC error.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Unable to allocate text_in of payload_length: %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ISCSI_REASON_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*, %struct.iscsi_cmd*)* @cxgbit_handle_text_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_handle_text_cmd(%struct.cxgbit_sock* %0, %struct.iscsi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxgbit_sock*, align 8
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %8 = alloca %struct.iscsi_text*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
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
  %20 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.iscsi_text*
  store %struct.iscsi_text* %22, %struct.iscsi_text** %8, align 8
  %23 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %24 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %27 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %28 = load %struct.iscsi_text*, %struct.iscsi_text** %8, align 8
  %29 = call i32 @iscsit_setup_text_cmd(%struct.iscsi_conn* %26, %struct.iscsi_cmd* %27, %struct.iscsi_text* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %101

34:                                               ; preds = %2
  %35 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %36 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PDUCBF_RX_DCRC_ERR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %34
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %94

52:                                               ; preds = %41
  %53 = load %struct.iscsi_text*, %struct.iscsi_text** %8, align 8
  %54 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  store i32 0, i32* %3, align 4
  br label %101

57:                                               ; preds = %34
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kzalloc(i32 %61, i32 %62)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %101

71:                                               ; preds = %60
  %72 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %4, align 8
  %73 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %76 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @skb_copy_bits(i32 %74, i32 %77, i8* %78, i32 %79)
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  store i8 0, i8* %85, align 1
  %86 = load i8*, i8** %11, align 8
  %87 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %88 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %71, %57
  %90 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %91 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %92 = load %struct.iscsi_text*, %struct.iscsi_text** %8, align 8
  %93 = call i32 @iscsit_process_text_cmd(%struct.iscsi_conn* %90, %struct.iscsi_cmd* %91, %struct.iscsi_text* %92)
  store i32 %93, i32* %3, align 4
  br label %101

94:                                               ; preds = %50
  %95 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %96 = load i32, i32* @ISCSI_REASON_PROTOCOL_ERROR, align 4
  %97 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %98 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %95, i32 %96, i64 %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %94, %89, %66, %52, %32
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(i32) #1

declare dso_local i32 @iscsit_setup_text_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_text*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_copy_bits(i32, i32, i8*, i32) #1

declare dso_local i32 @iscsit_process_text_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, %struct.iscsi_text*) #1

declare dso_local i32 @iscsit_reject_cmd(%struct.iscsi_cmd*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
