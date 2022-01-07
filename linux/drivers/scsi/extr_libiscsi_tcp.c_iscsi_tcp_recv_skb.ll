; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_recv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_recv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iscsi_segment }
%struct.iscsi_segment = type { i64, i64, i64, i64, i32 (%struct.iscsi_tcp_conn.0*, %struct.iscsi_segment*)* }
%struct.iscsi_tcp_conn.0 = type opaque
%struct.sk_buff = type { i32 }
%struct.skb_seq_state = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"in %d bytes\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Rx suspended!\0A\00", align 1
@ISCSI_TCP_SUSPENDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"no more data avail. Consumed %d\0A\00", align 1
@ISCSI_TCP_SKB_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"skb %p ptr=%p avail=%u\0A\00", align 1
@ISCSI_TCP_SEGMENT_DONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"segment done\0A\00", align 1
@ISCSI_TCP_CONN_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Error receiving PDU, errno=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_tcp_recv_skb(%struct.iscsi_conn* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.iscsi_tcp_conn*, align 8
  %13 = alloca %struct.iscsi_segment*, align 8
  %14 = alloca %struct.skb_seq_state, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 3
  %21 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %20, align 8
  store %struct.iscsi_tcp_conn* %21, %struct.iscsi_tcp_conn** %12, align 8
  %22 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %12, align 8
  %23 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.iscsi_segment* %24, %struct.iscsi_segment** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub i32 %28, %29
  %31 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @jiffies, align 4
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %36 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %5
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %42 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ISCSI_TCP_SUSPENDED, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %6, align 4
  br label %140

45:                                               ; preds = %5
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %50 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %53 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %109

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @skb_prepare_seq_read(%struct.sk_buff* %55, i32 %56, i32 %59, %struct.skb_seq_state* %14)
  br label %61

61:                                               ; preds = %54, %108
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @skb_seq_read(i32 %62, i32** %18, %struct.skb_seq_state* %14)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ISCSI_TCP_SKB_DONE, align 4
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  br label %133

72:                                               ; preds = %61
  %73 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %74 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %77 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = load i32*, i32** %18, align 8
  %85 = load i32, i32* %17, align 4
  %86 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %83, i32* %84, i32 %85)
  %87 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %12, align 8
  %88 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %89 = load i32*, i32** %18, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @iscsi_tcp_segment_recv(%struct.iscsi_tcp_conn* %87, %struct.iscsi_segment* %88, i32* %89, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %15, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %15, align 4
  %99 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %100 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %103 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sge i64 %101, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %72
  %107 = call i32 @skb_abort_seq_read(%struct.skb_seq_state* %14)
  br label %109

108:                                              ; preds = %72
  br label %61

109:                                              ; preds = %106, %48
  %110 = load i32, i32* @ISCSI_TCP_SEGMENT_DONE, align 4
  %111 = load i32*, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  %112 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %113 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %114 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %115 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %114, i32 0, i32 4
  %116 = load i32 (%struct.iscsi_tcp_conn.0*, %struct.iscsi_segment*)*, i32 (%struct.iscsi_tcp_conn.0*, %struct.iscsi_segment*)** %115, align 8
  %117 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %12, align 8
  %118 = bitcast %struct.iscsi_tcp_conn* %117 to %struct.iscsi_tcp_conn.0*
  %119 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %120 = call i32 %116(%struct.iscsi_tcp_conn.0* %118, %struct.iscsi_segment* %119)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %109
  %124 = load i32, i32* @ISCSI_TCP_CONN_ERR, align 4
  %125 = load i32*, i32** %11, align 8
  store i32 %124, i32* %125, align 4
  %126 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %127 = load i32, i32* %16, align 4
  %128 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %126, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %130 = load i32, i32* %16, align 4
  %131 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %129, i32 %130)
  store i32 0, i32* %6, align 4
  br label %140

132:                                              ; preds = %109
  br label %133

133:                                              ; preds = %132, %66
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %136 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* %15, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %133, %123, %40
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @ISCSI_DBG_TCP(%struct.iscsi_conn*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_prepare_seq_read(%struct.sk_buff*, i32, i32, %struct.skb_seq_state*) #1

declare dso_local i32 @skb_seq_read(i32, i32**, %struct.skb_seq_state*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iscsi_tcp_segment_recv(%struct.iscsi_tcp_conn*, %struct.iscsi_segment*, i32*, i32) #1

declare dso_local i32 @skb_abort_seq_read(%struct.skb_seq_state*) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
