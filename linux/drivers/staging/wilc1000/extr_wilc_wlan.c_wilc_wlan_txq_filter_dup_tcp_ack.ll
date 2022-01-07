; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_txq_filter_dup_tcp_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wlan.c_wilc_wlan_txq_filter_dup_tcp_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wilc_vif = type { %struct.tcp_ack_filter, %struct.wilc* }
%struct.tcp_ack_filter = type { i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, %struct.txq_entry_t* }
%struct.txq_entry_t = type { i32, i32, i32 (i32, i32)* }
%struct.TYPE_3__ = type { i64 }
%struct.wilc = type { i32, i32 }

@MAX_PENDING_ACKS = common dso_local global i64 0, align 8
@MAX_TCP_SESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @wilc_wlan_txq_filter_dup_tcp_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wilc_wlan_txq_filter_dup_tcp_ack(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.wilc_vif*, align 8
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca %struct.tcp_ack_filter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.txq_entry_t*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %12)
  store %struct.wilc_vif* %13, %struct.wilc_vif** %3, align 8
  %14 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %15 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %14, i32 0, i32 1
  %16 = load %struct.wilc*, %struct.wilc** %15, align 8
  store %struct.wilc* %16, %struct.wilc** %4, align 8
  %17 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %18 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %17, i32 0, i32 0
  store %struct.tcp_ack_filter* %18, %struct.tcp_ack_filter** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %19 = load %struct.wilc*, %struct.wilc** %4, align 8
  %20 = getelementptr inbounds %struct.wilc, %struct.wilc* %19, i32 0, i32 1
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %5, align 8
  %24 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %110, %1
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %5, align 8
  %29 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %5, align 8
  %32 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %30, %33
  %35 = icmp ult i64 %27, %34
  br i1 %35, label %36, label %113

36:                                               ; preds = %26
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @MAX_PENDING_ACKS, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %113

41:                                               ; preds = %36
  %42 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %5, align 8
  %43 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* @MAX_TCP_SESSION, align 4
  %51 = mul nsw i32 2, %50
  %52 = sext i32 %51 to i64
  %53 = icmp uge i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %113

55:                                               ; preds = %41
  %56 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %5, align 8
  %57 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %56, i32 0, i32 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %10, align 8
  %63 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %5, align 8
  %64 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %55
  %73 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %5, align 8
  %74 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load %struct.txq_entry_t*, %struct.txq_entry_t** %78, align 8
  store %struct.txq_entry_t* %79, %struct.txq_entry_t** %11, align 8
  %80 = load %struct.txq_entry_t*, %struct.txq_entry_t** %11, align 8
  %81 = icmp ne %struct.txq_entry_t* %80, null
  br i1 %81, label %82, label %108

82:                                               ; preds = %72
  %83 = load %struct.wilc*, %struct.wilc** %4, align 8
  %84 = load %struct.txq_entry_t*, %struct.txq_entry_t** %11, align 8
  %85 = call i32 @wilc_wlan_txq_remove(%struct.wilc* %83, %struct.txq_entry_t* %84)
  %86 = load %struct.txq_entry_t*, %struct.txq_entry_t** %11, align 8
  %87 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.txq_entry_t*, %struct.txq_entry_t** %11, align 8
  %89 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %88, i32 0, i32 2
  %90 = load i32 (i32, i32)*, i32 (i32, i32)** %89, align 8
  %91 = icmp ne i32 (i32, i32)* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %82
  %93 = load %struct.txq_entry_t*, %struct.txq_entry_t** %11, align 8
  %94 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %93, i32 0, i32 2
  %95 = load i32 (i32, i32)*, i32 (i32, i32)** %94, align 8
  %96 = load %struct.txq_entry_t*, %struct.txq_entry_t** %11, align 8
  %97 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.txq_entry_t*, %struct.txq_entry_t** %11, align 8
  %100 = getelementptr inbounds %struct.txq_entry_t, %struct.txq_entry_t* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 %95(i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %92, %82
  %104 = load %struct.txq_entry_t*, %struct.txq_entry_t** %11, align 8
  %105 = call i32 @kfree(%struct.txq_entry_t* %104)
  %106 = load i64, i64* %7, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %7, align 8
  br label %108

108:                                              ; preds = %103, %72
  br label %109

109:                                              ; preds = %108, %55
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %6, align 8
  br label %26

113:                                              ; preds = %54, %40, %26
  %114 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %5, align 8
  %115 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %5, align 8
  %117 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  %118 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %5, align 8
  %119 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load i32, i32* @MAX_TCP_SESSION, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %5, align 8
  %126 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %130

127:                                              ; preds = %113
  %128 = load %struct.tcp_ack_filter*, %struct.tcp_ack_filter** %5, align 8
  %129 = getelementptr inbounds %struct.tcp_ack_filter, %struct.tcp_ack_filter* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %127, %122
  %131 = load %struct.wilc*, %struct.wilc** %4, align 8
  %132 = getelementptr inbounds %struct.wilc, %struct.wilc* %131, i32 0, i32 1
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i64 %133)
  br label %135

135:                                              ; preds = %138, %130
  %136 = load i64, i64* %7, align 8
  %137 = icmp ugt i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.wilc*, %struct.wilc** %4, align 8
  %140 = getelementptr inbounds %struct.wilc, %struct.wilc* %139, i32 0, i32 0
  %141 = call i32 @msecs_to_jiffies(i32 1)
  %142 = call i32 @wait_for_completion_timeout(i32* %140, i32 %141)
  %143 = load i64, i64* %7, align 8
  %144 = add i64 %143, -1
  store i64 %144, i64* %7, align 8
  br label %135

145:                                              ; preds = %135
  ret void
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wilc_wlan_txq_remove(%struct.wilc*, %struct.txq_entry_t*) #1

declare dso_local i32 @kfree(%struct.txq_entry_t*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
