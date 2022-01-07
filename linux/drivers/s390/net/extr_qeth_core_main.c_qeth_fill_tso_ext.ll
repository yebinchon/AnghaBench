; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_fill_tso_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_fill_tso_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_hdr_tso = type { %struct.qeth_hdr_ext_tso }
%struct.qeth_hdr_ext_tso = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_hdr_tso*, i32, %struct.sk_buff*, i32)* @qeth_fill_tso_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_fill_tso_ext(%struct.qeth_hdr_tso* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.qeth_hdr_tso*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qeth_hdr_ext_tso*, align 8
  store %struct.qeth_hdr_tso* %0, %struct.qeth_hdr_tso** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.qeth_hdr_tso*, %struct.qeth_hdr_tso** %5, align 8
  %11 = getelementptr inbounds %struct.qeth_hdr_tso, %struct.qeth_hdr_tso* %10, i32 0, i32 0
  store %struct.qeth_hdr_ext_tso* %11, %struct.qeth_hdr_ext_tso** %9, align 8
  %12 = load %struct.qeth_hdr_ext_tso*, %struct.qeth_hdr_ext_tso** %9, align 8
  %13 = getelementptr inbounds %struct.qeth_hdr_ext_tso, %struct.qeth_hdr_ext_tso* %12, i32 0, i32 0
  store i32 32, i32* %13, align 4
  %14 = load %struct.qeth_hdr_ext_tso*, %struct.qeth_hdr_ext_tso** %9, align 8
  %15 = getelementptr inbounds %struct.qeth_hdr_ext_tso, %struct.qeth_hdr_ext_tso* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.qeth_hdr_ext_tso*, %struct.qeth_hdr_ext_tso** %9, align 8
  %17 = getelementptr inbounds %struct.qeth_hdr_ext_tso, %struct.qeth_hdr_ext_tso* %16, i32 0, i32 2
  store i32 1, i32* %17, align 4
  %18 = load %struct.qeth_hdr_ext_tso*, %struct.qeth_hdr_ext_tso** %9, align 8
  %19 = getelementptr inbounds %struct.qeth_hdr_ext_tso, %struct.qeth_hdr_ext_tso* %18, i32 0, i32 3
  store i32 1, i32* %19, align 4
  %20 = load %struct.qeth_hdr_ext_tso*, %struct.qeth_hdr_ext_tso** %9, align 8
  %21 = getelementptr inbounds %struct.qeth_hdr_ext_tso, %struct.qeth_hdr_ext_tso* %20, i32 0, i32 4
  store i32 28, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.qeth_hdr_ext_tso*, %struct.qeth_hdr_ext_tso** %9, align 8
  %24 = getelementptr inbounds %struct.qeth_hdr_ext_tso, %struct.qeth_hdr_ext_tso* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qeth_hdr_ext_tso*, %struct.qeth_hdr_ext_tso** %9, align 8
  %30 = getelementptr inbounds %struct.qeth_hdr_ext_tso, %struct.qeth_hdr_ext_tso* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.qeth_hdr_ext_tso*, %struct.qeth_hdr_ext_tso** %9, align 8
  %33 = getelementptr inbounds %struct.qeth_hdr_ext_tso, %struct.qeth_hdr_ext_tso* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
