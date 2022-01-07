; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.socket = type { i64 }
%struct.sockaddr = type { i64 }
%struct.pvcalls_bedata = type { %struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.sock_mapping = type { i32, %struct.TYPE_11__, %struct.socket* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.xen_pvcalls_request = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@pvcalls_front_dev = common dso_local global %struct.TYPE_12__* null, align 8
@PVCALLS_BIND = common dso_local global i32 0, align 4
@PVCALLS_INVALID_ID = common dso_local global i32 0, align 4
@PVCALLS_STATUS_BIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvcalls_front_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pvcalls_bedata*, align 8
  %9 = alloca %struct.sock_mapping*, align 8
  %10 = alloca %struct.xen_pvcalls_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sock_mapping* null, %struct.sock_mapping** %9, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AF_INET, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SOCK_STREAM, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %3
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %152

28:                                               ; preds = %19
  %29 = load %struct.socket*, %struct.socket** %5, align 8
  %30 = call %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket* %29)
  store %struct.sock_mapping* %30, %struct.sock_mapping** %9, align 8
  %31 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %32 = call i64 @IS_ERR(%struct.sock_mapping* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %36 = call i32 @PTR_ERR(%struct.sock_mapping* %35)
  store i32 %36, i32* %4, align 4
  br label %152

37:                                               ; preds = %28
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pvcalls_front_dev, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = call %struct.pvcalls_bedata* @dev_get_drvdata(i32* %39)
  store %struct.pvcalls_bedata* %40, %struct.pvcalls_bedata** %8, align 8
  %41 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %42 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %41, i32 0, i32 3
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %45 = call i32 @get_request(%struct.pvcalls_bedata* %44, i32* %12)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %50 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %49, i32 0, i32 3
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.socket*, %struct.socket** %5, align 8
  %53 = call i32 @pvcalls_exit_sock(%struct.socket* %52)
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %4, align 4
  br label %152

55:                                               ; preds = %37
  %56 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %57 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %56, i32 0, i32 4
  %58 = load i32, i32* %12, align 4
  %59 = call %struct.xen_pvcalls_request* @RING_GET_REQUEST(%struct.TYPE_13__* %57, i32 %58)
  store %struct.xen_pvcalls_request* %59, %struct.xen_pvcalls_request** %10, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %10, align 8
  %62 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.socket*, %struct.socket** %5, align 8
  %64 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %65 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %64, i32 0, i32 2
  store %struct.socket* %63, %struct.socket** %65, align 8
  %66 = load i32, i32* @PVCALLS_BIND, align 4
  %67 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %10, align 8
  %68 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %70 = ptrtoint %struct.sock_mapping* %69 to i64
  %71 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %10, align 8
  %72 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i64 %70, i64* %74, align 8
  %75 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %10, align 8
  %76 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %81 = call i32 @memcpy(i32 %79, %struct.sockaddr* %80, i32 8)
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %10, align 8
  %84 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 8
  %87 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %88 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = call i32 @init_waitqueue_head(i32* %89)
  %91 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %92 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %94 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %99 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %98, i32 0, i32 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_13__* %99, i32 %100)
  %102 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %103 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %102, i32 0, i32 3
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %55
  %108 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %109 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @notify_remote_via_irq(i32 %110)
  br label %112

112:                                              ; preds = %107, %55
  %113 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %114 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %117 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @READ_ONCE(i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @wait_event(i32 %115, i32 %127)
  %129 = call i32 (...) @smp_rmb()
  %130 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %131 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* @PVCALLS_INVALID_ID, align 4
  %139 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %8, align 8
  %140 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  store i32 %138, i32* %145, align 4
  %146 = load i32, i32* @PVCALLS_STATUS_BIND, align 4
  %147 = load %struct.sock_mapping*, %struct.sock_mapping** %9, align 8
  %148 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 4
  %150 = load %struct.socket*, %struct.socket** %5, align 8
  %151 = call i32 @pvcalls_exit_sock(%struct.socket* %150)
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %112, %48, %34, %25
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.sock_mapping* @pvcalls_enter_sock(%struct.socket*) #1

declare dso_local i64 @IS_ERR(%struct.sock_mapping*) #1

declare dso_local i32 @PTR_ERR(%struct.sock_mapping*) #1

declare dso_local %struct.pvcalls_bedata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_request(%struct.pvcalls_bedata*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pvcalls_exit_sock(%struct.socket*) #1

declare dso_local %struct.xen_pvcalls_request* @RING_GET_REQUEST(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

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
