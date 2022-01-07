; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_accept.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xen_pvcalls_request = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.pvcalls_fedata = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sockpass_mapping = type { i32, i32, i32, %struct.xen_pvcalls_request }
%struct.xen_pvcalls_response = type { i64, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xen_pvcalls_request*)* @pvcalls_back_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_back_accept(%struct.xenbus_device* %0, %struct.xen_pvcalls_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xen_pvcalls_request*, align 8
  %6 = alloca %struct.pvcalls_fedata*, align 8
  %7 = alloca %struct.sockpass_mapping*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xen_pvcalls_response*, align 8
  %10 = alloca i64, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.xen_pvcalls_request* %1, %struct.xen_pvcalls_request** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %14 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %13, i32 0, i32 0
  %15 = call %struct.pvcalls_fedata* @dev_get_drvdata(i32* %14)
  store %struct.pvcalls_fedata* %15, %struct.pvcalls_fedata** %6, align 8
  %16 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %6, align 8
  %17 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %16, i32 0, i32 1
  %18 = call i32 @down(i32* %17)
  %19 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %6, align 8
  %20 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %19, i32 0, i32 2
  %21 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %5, align 8
  %22 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.sockpass_mapping* @radix_tree_lookup(i32* %20, i32 %25)
  store %struct.sockpass_mapping* %26, %struct.sockpass_mapping** %7, align 8
  %27 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %6, align 8
  %28 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %27, i32 0, i32 1
  %29 = call i32 @up(i32* %28)
  %30 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %31 = icmp eq %struct.sockpass_mapping* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %66

33:                                               ; preds = %2
  %34 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %35 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %34, i32 0, i32 2
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %39 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %45 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %44, i32 0, i32 2
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* @EINTR, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %66

50:                                               ; preds = %33
  %51 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %52 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %51, i32 0, i32 3
  %53 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %5, align 8
  %54 = bitcast %struct.xen_pvcalls_request* %52 to i8*
  %55 = bitcast %struct.xen_pvcalls_request* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  %56 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %57 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %56, i32 0, i32 2
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %61 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %64 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %63, i32 0, i32 0
  %65 = call i32 @queue_work(i32 %62, i32* %64)
  store i32 -1, i32* %3, align 4
  br label %97

66:                                               ; preds = %43, %32
  %67 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %6, align 8
  %68 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %67, i32 0, i32 0
  %69 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %6, align 8
  %70 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = call %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_10__* %68, i32 %72)
  store %struct.xen_pvcalls_response* %74, %struct.xen_pvcalls_response** %9, align 8
  %75 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %5, align 8
  %76 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %9, align 8
  %79 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %5, align 8
  %81 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %9, align 8
  %84 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %5, align 8
  %86 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %9, align 8
  %91 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %9, align 8
  %96 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %66, %50
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.pvcalls_fedata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local %struct.sockpass_mapping* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
