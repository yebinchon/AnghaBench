; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_rx_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_rx_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i64, i32, i32, i32 }
%struct.ntb_queue_entry = type { i32, i32, i64, i64, i64, i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_transport_rx_enqueue(%struct.ntb_transport_qp* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_transport_qp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ntb_queue_entry*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %12 = icmp ne %struct.ntb_transport_qp* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %61

16:                                               ; preds = %4
  %17 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %18 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %17, i32 0, i32 3
  %19 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %20 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %19, i32 0, i32 4
  %21 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %18, i32* %20)
  store %struct.ntb_queue_entry* %21, %struct.ntb_queue_entry** %10, align 8
  %22 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %23 = icmp ne %struct.ntb_queue_entry* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %61

27:                                               ; preds = %16
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %30 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %33 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %36 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %38 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %40 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %42 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %44 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %46 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %45, i32 0, i32 3
  %47 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %48 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %47, i32 0, i32 1
  %49 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %50 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %49, i32 0, i32 2
  %51 = call i32 @ntb_list_add(i32* %46, i32* %48, i32* %50)
  %52 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %53 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %27
  %57 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %58 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %57, i32 0, i32 0
  %59 = call i32 @tasklet_schedule(i32* %58)
  br label %60

60:                                               ; preds = %56, %27
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %24, %13
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.ntb_queue_entry* @ntb_list_rm(i32*, i32*) #1

declare dso_local i32 @ntb_list_add(i32*, i32*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
