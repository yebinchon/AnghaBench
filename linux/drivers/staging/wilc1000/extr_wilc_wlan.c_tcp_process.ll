; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_tcp_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_tcp_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.txq_entry_t = type { i8* }
%struct.ethhdr = type { i64 }
%struct.wilc_vif = type { %struct.tcp_ack_filter, %struct.wilc* }
%struct.tcp_ack_filter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wilc = type { i32 }
%struct.iphdr = type { i64, i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@MAX_TCP_SESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.txq_entry_t*)* @tcp_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_process(%struct.net_device* %0, %struct.txq_entry_t* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.txq_entry_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.wilc_vif*, align 8
  %10 = alloca %struct.wilc*, align 8
  %11 = alloca %struct.tcp_ack_filter*, align 8
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca %struct.tcphdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.txq_entry_t* %1, %struct.txq_entry_t** %4, align 8
  %20 = load %struct.txq_entry_t*, %struct.txq_entry_t** %4, align 8
  %21 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.ethhdr*
  store %struct.ethhdr* %24, %struct.ethhdr** %6, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %25)
  store %struct.wilc_vif* %26, %struct.wilc_vif** %9, align 8
  %27 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %28 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %27, i32 0, i32 1
  %29 = load %struct.wilc*, %struct.wilc** %28, align 8
  store %struct.wilc* %29, %struct.wilc** %10, align 8
  %30 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %31 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %30, i32 0, i32 0
  store %struct.tcp_ack_filter* %31, %struct.tcp_ack_filter** %11, align 8
  %32 = load %struct.wilc*, %struct.wilc** %10, align 8
  %33 = getelementptr inbounds %struct.wilc, %struct.wilc* %32, i32 0, i32 0
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %37 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @ETH_P_IP, align 4
  %40 = call i64 @htons(i32 %39)
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  br label %139

43:                                               ; preds = %2
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @ETH_HLEN, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %44, i64 %46
  %48 = bitcast i8* %47 to %struct.iphdr*
  store %struct.iphdr* %48, %struct.iphdr** %12, align 8
  %49 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IPPROTO_TCP, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %139

55:                                               ; preds = %43
  %56 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %57 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 %58, 2
  store i32 %59, i32* %14, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @ETH_HLEN, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %60, i64 %62
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = bitcast i8* %66 to %struct.tcphdr*
  store %struct.tcphdr* %67, %struct.tcphdr** %13, align 8
  %68 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %69 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ntohs(i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %73 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 2
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %77, %78
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %138

81:                                               ; preds = %55
  %82 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %83 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohl(i32 %84)
  store i32 %85, i32* %17, align 4
  %86 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %87 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ntohl(i32 %88)
  store i32 %89, i32* %18, align 4
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %119, %81
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %11, align 8
  %93 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %90
  %97 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %11, align 8
  %98 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @MAX_TCP_SESSION, align 4
  %107 = mul nsw i32 2, %106
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %96
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %18, align 4
  %117 = call i32 @update_tcp_session(%struct.wilc_vif* %114, i32 %115, i32 %116)
  br label %122

118:                                              ; preds = %109, %96
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %90

122:                                              ; preds = %113, %90
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %11, align 8
  %125 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @add_tcp_session(%struct.wilc_vif* %129, i32 0, i32 0, i32 %130)
  br label %132

132:                                              ; preds = %128, %122
  %133 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.txq_entry_t*, %struct.txq_entry_t** %4, align 8
  %137 = call i32 @add_tcp_pending_ack(%struct.wilc_vif* %133, i32 %134, i32 %135, %struct.txq_entry_t* %136)
  br label %138

138:                                              ; preds = %132, %55
  br label %139

139:                                              ; preds = %138, %54, %42
  %140 = load %struct.wilc*, %struct.wilc** %10, align 8
  %141 = getelementptr inbounds %struct.wilc, %struct.wilc* %140, i32 0, i32 0
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* %141, i64 %142)
  ret void
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @update_tcp_session(%struct.wilc_vif*, i32, i32) #1

declare dso_local i32 @add_tcp_session(%struct.wilc_vif*, i32, i32, i32) #1

declare dso_local i32 @add_tcp_pending_ack(%struct.wilc_vif*, i32, i32, %struct.txq_entry_t*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
