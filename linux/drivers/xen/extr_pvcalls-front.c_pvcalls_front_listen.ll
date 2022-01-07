; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.socket = type { i32 }
%struct.pvcalls_bedata = type { %struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.sock_mapping = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.xen_pvcalls_request = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@pvcalls_front_dev = common dso_local global %struct.TYPE_12__* null, align 8
@PVCALLS_STATUS_BIND = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PVCALLS_LISTEN = common dso_local global i32 0, align 4
@PVCALLS_INVALID_ID = common dso_local global i32 0, align 4
@PVCALLS_STATUS_LISTEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvcalls_front_listen(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvcalls_bedata*, align 8
  %7 = alloca %struct.sock_mapping*, align 8
  %8 = alloca %struct.xen_pvcalls_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = call %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket* %12)
  store %struct.sock_mapping* %13, %struct.sock_mapping** %7, align 8
  %14 = load %struct.sock_mapping*, %struct.sock_mapping** %7, align 8
  %15 = call i64 @IS_ERR(%struct.sock_mapping* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.sock_mapping*, %struct.sock_mapping** %7, align 8
  %19 = call i32 @PTR_ERR(%struct.sock_mapping* %18)
  store i32 %19, i32* %3, align 4
  br label %132

20:                                               ; preds = %2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pvcalls_front_dev, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = call %struct.pvcalls_bedata* @dev_get_drvdata(i32* %22)
  store %struct.pvcalls_bedata* %23, %struct.pvcalls_bedata** %6, align 8
  %24 = load %struct.sock_mapping*, %struct.sock_mapping** %7, align 8
  %25 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PVCALLS_STATUS_BIND, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.socket*, %struct.socket** %4, align 8
  %32 = call i32 @pvcalls_exit_sock(%struct.socket* %31)
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %132

35:                                               ; preds = %20
  %36 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %6, align 8
  %37 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %36, i32 0, i32 3
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %6, align 8
  %40 = call i32 @get_request(%struct.pvcalls_bedata* %39, i32* %10)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %6, align 8
  %45 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %44, i32 0, i32 3
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.socket*, %struct.socket** %4, align 8
  %48 = call i32 @pvcalls_exit_sock(%struct.socket* %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %3, align 4
  br label %132

50:                                               ; preds = %35
  %51 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %6, align 8
  %52 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %51, i32 0, i32 4
  %53 = load i32, i32* %10, align 4
  %54 = call %struct.xen_pvcalls_request* @RING_GET_REQUEST(%struct.TYPE_13__* %52, i32 %53)
  store %struct.xen_pvcalls_request* %54, %struct.xen_pvcalls_request** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %8, align 8
  %57 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @PVCALLS_LISTEN, align 4
  %59 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %8, align 8
  %60 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sock_mapping*, %struct.sock_mapping** %7, align 8
  %62 = ptrtoint %struct.sock_mapping* %61 to i64
  %63 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %8, align 8
  %64 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i64 %62, i64* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %8, align 8
  %69 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 8
  %72 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %6, align 8
  %73 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %6, align 8
  %78 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %77, i32 0, i32 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_13__* %78, i32 %79)
  %81 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %6, align 8
  %82 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %81, i32 0, i32 3
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %50
  %87 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %6, align 8
  %88 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @notify_remote_via_irq(i32 %89)
  br label %91

91:                                               ; preds = %86, %50
  %92 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %6, align 8
  %93 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %6, align 8
  %96 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @READ_ONCE(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @wait_event(i32 %94, i32 %106)
  %108 = call i32 (...) @smp_rmb()
  %109 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %6, align 8
  %110 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* @PVCALLS_INVALID_ID, align 4
  %118 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %6, align 8
  %119 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  store i32 %117, i32* %124, align 4
  %125 = load i64, i64* @PVCALLS_STATUS_LISTEN, align 8
  %126 = load %struct.sock_mapping*, %struct.sock_mapping** %7, align 8
  %127 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  store i64 %125, i64* %128, align 8
  %129 = load %struct.socket*, %struct.socket** %4, align 8
  %130 = call i32 @pvcalls_exit_sock(%struct.socket* %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %91, %43, %30, %17
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket*) #1

declare dso_local i64 @IS_ERR(%struct.sock_mapping*) #1

declare dso_local i32 @PTR_ERR(%struct.sock_mapping*) #1

declare dso_local %struct.pvcalls_bedata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pvcalls_exit_sock(%struct.socket*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_request(%struct.pvcalls_bedata*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.xen_pvcalls_request* @RING_GET_REQUEST(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
