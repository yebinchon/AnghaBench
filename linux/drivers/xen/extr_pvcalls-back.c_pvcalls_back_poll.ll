; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xen_pvcalls_request = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.pvcalls_fedata = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.sockpass_mapping = type { i32, %struct.xen_pvcalls_request, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.xen_pvcalls_response = type { i64, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.inet_connection_sock = type { %struct.request_sock_queue }
%struct.request_sock_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xen_pvcalls_request*)* @pvcalls_back_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_back_poll(%struct.xenbus_device* %0, %struct.xen_pvcalls_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xen_pvcalls_request*, align 8
  %6 = alloca %struct.pvcalls_fedata*, align 8
  %7 = alloca %struct.sockpass_mapping*, align 8
  %8 = alloca %struct.xen_pvcalls_response*, align 8
  %9 = alloca %struct.inet_connection_sock*, align 8
  %10 = alloca %struct.request_sock_queue*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.xen_pvcalls_request* %1, %struct.xen_pvcalls_request** %5, align 8
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %15 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %14, i32 0, i32 0
  %16 = call %struct.pvcalls_fedata* @dev_get_drvdata(i32* %15)
  store %struct.pvcalls_fedata* %16, %struct.pvcalls_fedata** %6, align 8
  %17 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %6, align 8
  %18 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %17, i32 0, i32 1
  %19 = call i32 @down(i32* %18)
  %20 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %6, align 8
  %21 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %20, i32 0, i32 2
  %22 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %5, align 8
  %23 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.sockpass_mapping* @radix_tree_lookup(i32* %21, i32 %26)
  store %struct.sockpass_mapping* %27, %struct.sockpass_mapping** %7, align 8
  %28 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %6, align 8
  %29 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %28, i32 0, i32 1
  %30 = call i32 @up(i32* %29)
  %31 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %32 = icmp eq %struct.sockpass_mapping* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %115

36:                                               ; preds = %2
  %37 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %38 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %37, i32 0, i32 0
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %42 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @EINTR, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %80

49:                                               ; preds = %36
  %50 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %51 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %50, i32 0, i32 1
  %52 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %5, align 8
  %53 = bitcast %struct.xen_pvcalls_request* %51 to i8*
  %54 = bitcast %struct.xen_pvcalls_request* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  %55 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %56 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %55, i32 0, i32 2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.inet_connection_sock* @inet_csk(i32 %59)
  store %struct.inet_connection_sock* %60, %struct.inet_connection_sock** %9, align 8
  %61 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %62 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %61, i32 0, i32 0
  store %struct.request_sock_queue* %62, %struct.request_sock_queue** %10, align 8
  %63 = load %struct.request_sock_queue*, %struct.request_sock_queue** %10, align 8
  %64 = getelementptr inbounds %struct.request_sock_queue, %struct.request_sock_queue* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32* @READ_ONCE(i32 %65)
  %67 = icmp ne i32* %66, null
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %49
  %72 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %73 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  store i32 0, i32* %12, align 4
  br label %80

75:                                               ; preds = %49
  %76 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %77 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %76, i32 0, i32 0
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  store i32 -1, i32* %3, align 4
  br label %115

80:                                               ; preds = %71, %46
  %81 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %82 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %81, i32 0, i32 0
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %6, align 8
  %86 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %85, i32 0, i32 0
  %87 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %6, align 8
  %88 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = call %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_12__* %86, i32 %90)
  store %struct.xen_pvcalls_response* %92, %struct.xen_pvcalls_response** %8, align 8
  %93 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %5, align 8
  %94 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %97 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %5, align 8
  %99 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %102 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %5, align 8
  %104 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %109 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %114 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %80, %75, %33
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.pvcalls_fedata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local %struct.sockpass_mapping* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.inet_connection_sock* @inet_csk(i32) #1

declare dso_local i32* @READ_ONCE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
