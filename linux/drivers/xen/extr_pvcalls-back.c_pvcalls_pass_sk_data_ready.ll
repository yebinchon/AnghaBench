; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_pass_sk_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_pass_sk_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sockpass_mapping* }
%struct.sockpass_mapping = type { i32, i32, i32, %struct.pvcalls_fedata*, %struct.TYPE_12__ }
%struct.pvcalls_fedata = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.xen_pvcalls_response = type { i64, i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@PVCALLS_POLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @pvcalls_pass_sk_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvcalls_pass_sk_data_ready(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sockpass_mapping*, align 8
  %4 = alloca %struct.pvcalls_fedata*, align 8
  %5 = alloca %struct.xen_pvcalls_response*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %9, align 8
  store %struct.sockpass_mapping* %10, %struct.sockpass_mapping** %3, align 8
  %11 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %3, align 8
  %12 = icmp eq %struct.sockpass_mapping* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %93

14:                                               ; preds = %1
  %15 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %3, align 8
  %16 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %15, i32 0, i32 3
  %17 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %16, align 8
  store %struct.pvcalls_fedata* %17, %struct.pvcalls_fedata** %4, align 8
  %18 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %3, align 8
  %19 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %18, i32 0, i32 2
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %3, align 8
  %23 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PVCALLS_POLL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %14
  %29 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %4, align 8
  %30 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %29, i32 0, i32 1
  %31 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %4, align 8
  %32 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = call %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_13__* %30, i32 %34)
  store %struct.xen_pvcalls_response* %36, %struct.xen_pvcalls_response** %5, align 8
  %37 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %3, align 8
  %38 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %5, align 8
  %42 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %3, align 8
  %44 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %5, align 8
  %50 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %3, align 8
  %54 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %5, align 8
  %58 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %5, align 8
  %60 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %3, align 8
  %62 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %3, align 8
  %65 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %64, i32 0, i32 2
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %4, align 8
  %69 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %68, i32 0, i32 1
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @RING_PUSH_RESPONSES_AND_CHECK_NOTIFY(%struct.TYPE_13__* %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %28
  %75 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %3, align 8
  %76 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %75, i32 0, i32 3
  %77 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %76, align 8
  %78 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @notify_remote_via_irq(i32 %79)
  br label %81

81:                                               ; preds = %74, %28
  br label %93

82:                                               ; preds = %14
  %83 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %3, align 8
  %84 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %83, i32 0, i32 2
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %3, align 8
  %88 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %3, align 8
  %91 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %90, i32 0, i32 0
  %92 = call i32 @queue_work(i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %13, %82, %81
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @RING_PUSH_RESPONSES_AND_CHECK_NOTIFY(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
