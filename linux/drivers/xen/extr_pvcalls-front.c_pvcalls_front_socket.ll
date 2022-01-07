; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_pvcalls_front_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.socket = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.pvcalls_bedata = type { %struct.TYPE_11__*, i32, i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.sock_mapping = type { i32 }
%struct.xen_pvcalls_request = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i64, i32 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@pvcalls_front_dev = common dso_local global %struct.TYPE_12__* null, align 8
@EACCES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PVCALLS_SOCKET = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@PVCALLS_INVALID_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvcalls_front_socket(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.pvcalls_bedata*, align 8
  %5 = alloca %struct.sock_mapping*, align 8
  %6 = alloca %struct.xen_pvcalls_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sock_mapping* null, %struct.sock_mapping** %5, align 8
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SOCK_STREAM, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %152

18:                                               ; preds = %1
  %19 = call i32 (...) @pvcalls_enter()
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pvcalls_front_dev, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = call i32 (...) @pvcalls_exit()
  %24 = load i32, i32* @EACCES, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %152

26:                                               ; preds = %18
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pvcalls_front_dev, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = call %struct.pvcalls_bedata* @dev_get_drvdata(i32* %28)
  store %struct.pvcalls_bedata* %29, %struct.pvcalls_bedata** %4, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.sock_mapping* @kzalloc(i32 4, i32 %30)
  store %struct.sock_mapping* %31, %struct.sock_mapping** %5, align 8
  %32 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %33 = icmp eq %struct.sock_mapping* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = call i32 (...) @pvcalls_exit()
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %152

38:                                               ; preds = %26
  %39 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %40 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %39, i32 0, i32 3
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %43 = call i32 @get_request(%struct.pvcalls_bedata* %42, i32* %8)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %48 = call i32 @kfree(%struct.sock_mapping* %47)
  %49 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %50 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %49, i32 0, i32 3
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = call i32 (...) @pvcalls_exit()
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %2, align 4
  br label %152

54:                                               ; preds = %38
  %55 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %56 = bitcast %struct.sock_mapping* %55 to i8*
  %57 = load %struct.socket*, %struct.socket** %3, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i8* %56, i8** %60, align 8
  %61 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %62 = getelementptr inbounds %struct.sock_mapping, %struct.sock_mapping* %61, i32 0, i32 0
  %63 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %64 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %63, i32 0, i32 5
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  %66 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %67 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %66, i32 0, i32 4
  %68 = load i32, i32* %8, align 4
  %69 = call %struct.xen_pvcalls_request* @RING_GET_REQUEST(%struct.TYPE_13__* %67, i32 %68)
  store %struct.xen_pvcalls_request* %69, %struct.xen_pvcalls_request** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %6, align 8
  %72 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @PVCALLS_SOCKET, align 4
  %74 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %6, align 8
  %75 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.sock_mapping*, %struct.sock_mapping** %5, align 8
  %77 = ptrtoint %struct.sock_mapping* %76 to i64
  %78 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %6, align 8
  %79 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i64 %77, i64* %81, align 8
  %82 = load i32, i32* @AF_INET, align 4
  %83 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %6, align 8
  %84 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  store i32 %82, i32* %86, align 8
  %87 = load i64, i64* @SOCK_STREAM, align 8
  %88 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %6, align 8
  %89 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  store i64 %87, i64* %91, align 8
  %92 = load i32, i32* @IPPROTO_IP, align 4
  %93 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %6, align 8
  %94 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 8
  %97 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %98 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %103 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %102, i32 0, i32 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_13__* %103, i32 %104)
  %106 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %107 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %106, i32 0, i32 3
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %54
  %112 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %113 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @notify_remote_via_irq(i32 %114)
  br label %116

116:                                              ; preds = %111, %54
  %117 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %118 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %121 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %120, i32 0, i32 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @READ_ONCE(i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @wait_event(i32 %119, i32 %131)
  %133 = call i32 (...) @smp_rmb()
  %134 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %135 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %134, i32 0, i32 0
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* @PVCALLS_INVALID_ID, align 4
  %143 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %144 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %143, i32 0, i32 0
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  store i32 %142, i32* %149, align 4
  %150 = call i32 (...) @pvcalls_exit()
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %116, %46, %34, %22, %15
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @pvcalls_enter(...) #1

declare dso_local i32 @pvcalls_exit(...) #1

declare dso_local %struct.pvcalls_bedata* @dev_get_drvdata(i32*) #1

declare dso_local %struct.sock_mapping* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_request(%struct.pvcalls_bedata*, i32*) #1

declare dso_local i32 @kfree(%struct.sock_mapping*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

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
