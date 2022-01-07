; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_rx_copy_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_rx_copy_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmaengine_result = type { i32 }
%struct.ntb_queue_entry = type { %struct.ntb_transport_qp*, i32, i32 }
%struct.ntb_transport_qp = type { i32, i32, i32, i32 }

@DESC_DONE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dmaengine_result*)* @ntb_rx_copy_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_rx_copy_callback(i8* %0, %struct.dmaengine_result* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dmaengine_result*, align 8
  %5 = alloca %struct.ntb_queue_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ntb_transport_qp*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dmaengine_result* %1, %struct.dmaengine_result** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ntb_queue_entry*
  store %struct.ntb_queue_entry* %10, %struct.ntb_queue_entry** %5, align 8
  %11 = load %struct.dmaengine_result*, %struct.dmaengine_result** %4, align 8
  %12 = icmp ne %struct.dmaengine_result* %11, null
  br i1 %12, label %13, label %50

13:                                               ; preds = %2
  %14 = load %struct.dmaengine_result*, %struct.dmaengine_result** %4, align 8
  %15 = getelementptr inbounds %struct.dmaengine_result, %struct.dmaengine_result* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %48 [
    i32 129, label %18
    i32 128, label %18
    i32 131, label %23
    i32 130, label %47
  ]

18:                                               ; preds = %13, %13
  %19 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %20 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %13, %18
  %24 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %25 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %24, i32 0, i32 0
  %26 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %25, align 8
  store %struct.ntb_transport_qp* %26, %struct.ntb_transport_qp** %7, align 8
  %27 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %7, align 8
  %28 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %7, align 8
  %31 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %7, align 8
  %34 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = add nsw i32 %29, %36
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %8, align 8
  %40 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @ntb_memcpy_rx(%struct.ntb_queue_entry* %40, i8* %41)
  %43 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %7, align 8
  %44 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %60

47:                                               ; preds = %13
  br label %48

48:                                               ; preds = %13, %47
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i32, i32* @DESC_DONE_FLAG, align 4
  %52 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %53 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %57 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %56, i32 0, i32 0
  %58 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %57, align 8
  %59 = call i32 @ntb_complete_rxc(%struct.ntb_transport_qp* %58)
  br label %60

60:                                               ; preds = %50, %23
  ret void
}

declare dso_local i32 @ntb_memcpy_rx(%struct.ntb_queue_entry*, i8*) #1

declare dso_local i32 @ntb_complete_rxc(%struct.ntb_transport_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
