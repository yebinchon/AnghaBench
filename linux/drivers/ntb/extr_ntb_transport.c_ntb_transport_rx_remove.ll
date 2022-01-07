; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_rx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_rx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, i32, i64 }
%struct.ntb_queue_entry = type { i32, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ntb_transport_rx_remove(%struct.ntb_transport_qp* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ntb_transport_qp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ntb_queue_entry*, align 8
  %7 = alloca i8*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %9 = icmp ne %struct.ntb_transport_qp* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %12 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  store i8* null, i8** %3, align 8
  br label %41

16:                                               ; preds = %10
  %17 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %18 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %17, i32 0, i32 1
  %19 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %20 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %19, i32 0, i32 2
  %21 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %18, i32* %20)
  store %struct.ntb_queue_entry* %21, %struct.ntb_queue_entry** %6, align 8
  %22 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %6, align 8
  %23 = icmp ne %struct.ntb_queue_entry* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %41

25:                                               ; preds = %16
  %26 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %6, align 8
  %27 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  %29 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %6, align 8
  %30 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %34 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %33, i32 0, i32 1
  %35 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %6, align 8
  %36 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %35, i32 0, i32 1
  %37 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %38 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %37, i32 0, i32 0
  %39 = call i32 @ntb_list_add(i32* %34, i32* %36, i32* %38)
  %40 = load i8*, i8** %7, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %25, %24, %15
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local %struct.ntb_queue_entry* @ntb_list_rm(i32*, i32*) #1

declare dso_local i32 @ntb_list_add(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
