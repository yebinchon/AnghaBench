; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_create_skb_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_create_skb_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_buffer_element = type { i64 }
%struct.sk_buff = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_buffer_element*, %struct.sk_buff*, i32, i32)* @qeth_create_skb_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_create_skb_frag(%struct.qdio_buffer_element* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qdio_buffer_element*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qdio_buffer_element* %0, %struct.qdio_buffer_element** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %5, align 8
  %13 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.page* @virt_to_page(i64 %14)
  store %struct.page* %15, %struct.page** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @skb_tailroom(%struct.sk_buff* %22)
  %24 = call i32 @min(i32 %21, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %5, align 8
  %27 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @skb_put_data(%struct.sk_buff* %25, i64 %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %20
  br label %58

40:                                               ; preds = %20
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load %struct.page*, %struct.page** %9, align 8
  %50 = call i32 @get_page(%struct.page* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.page*, %struct.page** %9, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @skb_add_rx_frag(%struct.sk_buff* %51, i32 %52, %struct.page* %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %44, %39
  ret void
}

declare dso_local %struct.page* @virt_to_page(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
