; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_handle_iscsi_dataout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_handle_iscsi_dataout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scatterlist = type { i32 }
%struct.iscsi_cmd = type { i32, i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.scatterlist*, i32 }
%struct.cxgbit_lro_pdu_cb = type { i32, i32, i64 }
%struct.iscsi_data = type { i32, i32, i32, i32 }

@PDUCBF_RX_DDP_CMP = common dso_local global i32 0, align 4
@PDUCBF_RX_DCRC_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"ITT: 0x%08x, Offset: %u, Length: %u, DataSN: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"DataOut data_len: %u, write_data_done: %u, data_length: %u\0A\00", align 1
@PDUCBF_RX_DATA_DDPD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*)* @cxgbit_handle_iscsi_dataout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_handle_iscsi_dataout(%struct.cxgbit_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbit_sock*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %8 = alloca %struct.iscsi_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %3, align 8
  %20 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %21 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %20, i32 0, i32 1
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %21, align 8
  store %struct.iscsi_conn* %22, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* null, %struct.iscsi_cmd** %6, align 8
  %23 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %24 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(i32 %25)
  store %struct.cxgbit_lro_pdu_cb* %26, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %27 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %28 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.iscsi_data*
  store %struct.iscsi_data* %30, %struct.iscsi_data** %8, align 8
  %31 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %32 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @be32_to_cpu(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %37 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %39 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %40 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PDUCBF_RX_DDP_CMP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %103

45:                                               ; preds = %1
  %46 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %47 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @be32_to_cpu(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %15, align 4
  %51 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %52 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntoh24(i32 %53)
  store i32 %54, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %55 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %56 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %57 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.iscsi_cmd* @iscsit_find_cmd_from_itt_or_dump(%struct.iscsi_conn* %55, i32 %58, i32 0)
  store %struct.iscsi_cmd* %59, %struct.iscsi_cmd** %6, align 8
  %60 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %61 = icmp ne %struct.iscsi_cmd* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %191

63:                                               ; preds = %45
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %66 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %71 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 @atomic_long_add(i32 %69, i32* %73)
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %77 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %80 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %82 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @be32_to_cpu(i32 %83)
  %85 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %86 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %88 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %89 = bitcast %struct.iscsi_data* %88 to i8*
  %90 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @__iscsit_check_dataout_hdr(%struct.iscsi_conn* %87, i8* %89, %struct.iscsi_cmd* %90, i32 %91, i32* %18)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %63
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %2, align 4
  br label %191

97:                                               ; preds = %63
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %191

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101
  br label %118

103:                                              ; preds = %1
  %104 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %105 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %106 = bitcast %struct.iscsi_data* %105 to i8*
  %107 = call i32 @iscsit_check_dataout_hdr(%struct.iscsi_conn* %104, i8* %106, %struct.iscsi_cmd** %6)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %2, align 4
  br label %191

112:                                              ; preds = %103
  %113 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %114 = icmp ne %struct.iscsi_cmd* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %191

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117, %102
  %119 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %120 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PDUCBF_RX_DCRC_ERR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %118
  %126 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %127 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %130 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %134 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %131, i32 %132, i32 %135)
  store i32 1, i32* %14, align 4
  br label %181

137:                                              ; preds = %118
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %140 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %143 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %141, i32 %145)
  %147 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %7, align 8
  %148 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @PDUCBF_RX_DATA_DDPD, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %180, label %153

153:                                              ; preds = %137
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @PAGE_SIZE, align 4
  %156 = srem i32 %154, %155
  store i32 %156, i32* %19, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @PAGE_SIZE, align 4
  %159 = sdiv i32 %157, %158
  store i32 %159, i32* %13, align 4
  %160 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %161 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load %struct.scatterlist*, %struct.scatterlist** %162, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %163, i64 %165
  store %struct.scatterlist* %166, %struct.scatterlist** %4, align 8
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* @PAGE_SIZE, align 4
  %171 = call i32 @DIV_ROUND_UP(i32 %169, i32 %170)
  %172 = call i32 @max(i64 1, i32 %171)
  store i32 %172, i32* %12, align 4
  %173 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %174 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %19, align 4
  %179 = call i32 @cxgbit_skb_copy_to_sg(i32 %175, %struct.scatterlist* %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %153, %137
  br label %181

181:                                              ; preds = %180, %125
  %182 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %183 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @iscsit_check_dataout_payload(%struct.iscsi_cmd* %182, %struct.iscsi_data* %183, i32 %184)
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load i32, i32* %11, align 4
  store i32 %189, i32* %2, align 4
  br label %191

190:                                              ; preds = %181
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %190, %188, %115, %110, %100, %95, %62
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local %struct.iscsi_cmd* @iscsit_find_cmd_from_itt_or_dump(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local i32 @__iscsit_check_dataout_hdr(%struct.iscsi_conn*, i8*, %struct.iscsi_cmd*, i32, i32*) #1

declare dso_local i32 @iscsit_check_dataout_hdr(%struct.iscsi_conn*, i8*, %struct.iscsi_cmd**) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @cxgbit_skb_copy_to_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @iscsit_check_dataout_payload(%struct.iscsi_cmd*, %struct.iscsi_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
