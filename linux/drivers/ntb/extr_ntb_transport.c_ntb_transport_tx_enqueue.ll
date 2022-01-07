; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_tx_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_tx_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, i32, i32 }
%struct.ntb_queue_entry = type { i32, i32, i64, i64, i64, i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_transport_tx_enqueue(%struct.ntb_transport_qp* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_transport_qp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ntb_queue_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %13 = icmp ne %struct.ntb_transport_qp* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %16 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %14, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %73

25:                                               ; preds = %19
  %26 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %27 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %26, i32 0, i32 1
  %28 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %29 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %28, i32 0, i32 0
  %30 = call %struct.ntb_queue_entry* @ntb_list_rm(i32* %27, i32* %29)
  store %struct.ntb_queue_entry* %30, %struct.ntb_queue_entry** %10, align 8
  %31 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %32 = icmp ne %struct.ntb_queue_entry* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %35 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %73

40:                                               ; preds = %25
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %43 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %46 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %49 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %51 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %53 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %55 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %57 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %59 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %60 = call i32 @ntb_process_tx(%struct.ntb_transport_qp* %58, %struct.ntb_queue_entry* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %40
  %64 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %65 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %64, i32 0, i32 1
  %66 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %10, align 8
  %67 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %66, i32 0, i32 1
  %68 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %6, align 8
  %69 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %68, i32 0, i32 0
  %70 = call i32 @ntb_list_add(i32* %65, i32* %67, i32* %69)
  br label %71

71:                                               ; preds = %63, %40
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %33, %22
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.ntb_queue_entry* @ntb_list_rm(i32*, i32*) #1

declare dso_local i32 @ntb_process_tx(%struct.ntb_transport_qp*, %struct.ntb_queue_entry*) #1

declare dso_local i32 @ntb_list_add(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
