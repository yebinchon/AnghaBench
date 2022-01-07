; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_process_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_process_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, i32, i32, i32, i32, i32, i32 (%struct.ntb_transport_qp*, i32, i32*, i32)*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ntb_queue_entry = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_transport_qp*, %struct.ntb_queue_entry*)* @ntb_process_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_process_tx(%struct.ntb_transport_qp* %0, %struct.ntb_queue_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_transport_qp*, align 8
  %5 = alloca %struct.ntb_queue_entry*, align 8
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %4, align 8
  store %struct.ntb_queue_entry* %1, %struct.ntb_queue_entry** %5, align 8
  %6 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %7 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %10 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %9, i32 0, i32 9
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %17 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %76

22:                                               ; preds = %2
  %23 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %24 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %28 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = sub i64 %30, 4
  %32 = icmp ugt i64 %26, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %22
  %34 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %35 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %34, i32 0, i32 7
  %36 = load i32 (%struct.ntb_transport_qp*, i32, i32*, i32)*, i32 (%struct.ntb_transport_qp*, i32, i32*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.ntb_transport_qp*, i32, i32*, i32)* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %40 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %39, i32 0, i32 7
  %41 = load i32 (%struct.ntb_transport_qp*, i32, i32*, i32)*, i32 (%struct.ntb_transport_qp*, i32, i32*, i32)** %40, align 8
  %42 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %43 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %44 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  %48 = call i32 %41(%struct.ntb_transport_qp* %42, i32 %45, i32* null, i32 %47)
  br label %49

49:                                               ; preds = %38, %33
  %50 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %51 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %50, i32 0, i32 5
  %52 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %53 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %52, i32 0, i32 1
  %54 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %55 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %54, i32 0, i32 4
  %56 = call i32 @ntb_list_add(i32* %51, i32* %53, i32* %55)
  store i32 0, i32* %3, align 4
  br label %76

57:                                               ; preds = %22
  %58 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %59 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %60 = call i32 @ntb_async_tx(%struct.ntb_transport_qp* %58, %struct.ntb_queue_entry* %59)
  %61 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %62 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %66 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %69 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = srem i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %73 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %57, %49, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @ntb_list_add(i32*, i32*, i32*) #1

declare dso_local i32 @ntb_async_tx(%struct.ntb_transport_qp*, %struct.ntb_queue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
