; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt7601u_mac_fetch_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt7601u_mac_fetch_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_tx_status = type { i32, i32, i32, i32, i8*, i8*, i8* }
%struct.mt7601u_dev = type { i32 }

@MT_TX_STAT_FIFO = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_VALID = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_SUCCESS = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_AGGR = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_ACKREQ = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_PID_TYPE = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_WCID = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7601u_mac_fetch_tx_status(%struct.mt76_tx_status* noalias sret %0, %struct.mt7601u_dev* %1) #0 {
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mt7601u_dev* %1, %struct.mt7601u_dev** %3, align 8
  %5 = bitcast %struct.mt76_tx_status* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 40, i1 false)
  %6 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %7 = load i32, i32* @MT_TX_STAT_FIFO, align 4
  %8 = call i32 @mt7601u_rr(%struct.mt7601u_dev* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MT_TX_STAT_FIFO_VALID, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds %struct.mt76_tx_status, %struct.mt76_tx_status* %0, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MT_TX_STAT_FIFO_SUCCESS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = getelementptr inbounds %struct.mt76_tx_status, %struct.mt76_tx_status* %0, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MT_TX_STAT_FIFO_AGGR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %struct.mt76_tx_status, %struct.mt76_tx_status* %0, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MT_TX_STAT_FIFO_ACKREQ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds %struct.mt76_tx_status, %struct.mt76_tx_status* %0, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @MT_TX_STAT_FIFO_PID_TYPE, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i8* @FIELD_GET(i32 %41, i32 %42)
  %44 = getelementptr inbounds %struct.mt76_tx_status, %struct.mt76_tx_status* %0, i32 0, i32 6
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* @MT_TX_STAT_FIFO_WCID, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i8* @FIELD_GET(i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.mt76_tx_status, %struct.mt76_tx_status* %0, i32 0, i32 5
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* @MT_TX_STAT_FIFO_RATE, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i8* @FIELD_GET(i32 %49, i32 %50)
  %52 = getelementptr inbounds %struct.mt76_tx_status, %struct.mt76_tx_status* %0, i32 0, i32 4
  store i8* %51, i8** %52, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mt7601u_rr(%struct.mt7601u_dev*, i32) #2

declare dso_local i8* @FIELD_GET(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
