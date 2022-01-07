; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xen_pvcalls_request = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }
%struct.pvcalls_fedata = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.xen_pvcalls_response = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xen_pvcalls_request*)* @pvcalls_back_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_back_socket(%struct.xenbus_device* %0, %struct.xen_pvcalls_request* %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca %struct.xen_pvcalls_request*, align 8
  %5 = alloca %struct.pvcalls_fedata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xen_pvcalls_response*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store %struct.xen_pvcalls_request* %1, %struct.xen_pvcalls_request** %4, align 8
  %8 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %9 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %8, i32 0, i32 0
  %10 = call %struct.pvcalls_fedata* @dev_get_drvdata(i32* %9)
  store %struct.pvcalls_fedata* %10, %struct.pvcalls_fedata** %5, align 8
  %11 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %12 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %42, label %18

18:                                               ; preds = %2
  %19 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %20 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOCK_STREAM, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %42, label %26

26:                                               ; preds = %18
  %27 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %28 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IPPROTO_IP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %36 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34, %18, %2
  %43 = load i32, i32* @EAFNOSUPPORT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %46

45:                                               ; preds = %34, %26
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %5, align 8
  %48 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %47, i32 0, i32 0
  %49 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %5, align 8
  %50 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = call %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_10__* %48, i32 %52)
  store %struct.xen_pvcalls_response* %54, %struct.xen_pvcalls_response** %7, align 8
  %55 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %56 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %7, align 8
  %59 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %61 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %7, align 8
  %64 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %66 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %7, align 8
  %71 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %7, align 8
  %76 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  ret i32 0
}

declare dso_local %struct.pvcalls_fedata* @dev_get_drvdata(i32*) #1

declare dso_local %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
