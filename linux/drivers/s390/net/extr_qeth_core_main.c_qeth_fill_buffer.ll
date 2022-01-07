; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_buffer = type { i32, i32*, i32, %struct.qdio_buffer* }
%struct.qdio_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.qeth_hdr* }
%struct.sk_buff = type { i8* }
%struct.qeth_hdr = type { i32 }

@SBAL_EFLAGS_FIRST_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_qdio_out_buffer*, %struct.sk_buff*, %struct.qeth_hdr*, i32, i32)* @qeth_fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_fill_buffer(%struct.qeth_qdio_out_buffer* %0, %struct.sk_buff* %1, %struct.qeth_hdr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.qeth_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qdio_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qeth_qdio_out_buffer* %0, %struct.qeth_qdio_out_buffer** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.qeth_hdr* %2, %struct.qeth_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %14, i32 0, i32 3
  %16 = load %struct.qdio_buffer*, %struct.qdio_buffer** %15, align 8
  store %struct.qdio_buffer* %16, %struct.qdio_buffer** %11, align 8
  store i32 1, i32* %12, align 4
  %17 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %17, i32 0, i32 2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call i32 @__skb_queue_tail(i32* %18, %struct.sk_buff* %19)
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %5
  %24 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %28 = load %struct.qdio_buffer*, %struct.qdio_buffer** %11, align 8
  %29 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store %struct.qeth_hdr* %27, %struct.qeth_hdr** %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.qdio_buffer*, %struct.qdio_buffer** %11, align 8
  %37 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %35, i32* %42, align 8
  %43 = load i32, i32* @SBAL_EFLAGS_FIRST_FRAG, align 4
  %44 = load %struct.qdio_buffer*, %struct.qdio_buffer** %11, align 8
  %45 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %43, i32* %50, align 4
  %51 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %52 = bitcast %struct.qeth_hdr* %51 to i8*
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %52, %55
  %57 = zext i1 %56 to i32
  %58 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  %64 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %65 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %23, %5
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @__qeth_fill_buffer(%struct.sk_buff* %69, %struct.qeth_qdio_out_buffer* %70, i32 %71, i32 %72)
  ret i32 %73
}

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @__qeth_fill_buffer(%struct.sk_buff*, %struct.qeth_qdio_out_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
