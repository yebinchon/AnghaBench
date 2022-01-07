; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xen_pvcalls_request = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.pvcalls_fedata = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sockpass_mapping = type { i32 }
%struct.xen_pvcalls_response = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xen_pvcalls_request*)* @pvcalls_back_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_back_listen(%struct.xenbus_device* %0, %struct.xen_pvcalls_request* %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca %struct.xen_pvcalls_request*, align 8
  %5 = alloca %struct.pvcalls_fedata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockpass_mapping*, align 8
  %8 = alloca %struct.xen_pvcalls_response*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store %struct.xen_pvcalls_request* %1, %struct.xen_pvcalls_request** %4, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %12 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %11, i32 0, i32 0
  %13 = call %struct.pvcalls_fedata* @dev_get_drvdata(i32* %12)
  store %struct.pvcalls_fedata* %13, %struct.pvcalls_fedata** %5, align 8
  %14 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %5, align 8
  %15 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %14, i32 0, i32 1
  %16 = call i32 @down(i32* %15)
  %17 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %5, align 8
  %18 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %17, i32 0, i32 2
  %19 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %20 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.sockpass_mapping* @radix_tree_lookup(i32* %18, i32 %23)
  store %struct.sockpass_mapping* %24, %struct.sockpass_mapping** %7, align 8
  %25 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %5, align 8
  %26 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %25, i32 0, i32 1
  %27 = call i32 @up(i32* %26)
  %28 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %29 = icmp eq %struct.sockpass_mapping* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %41

31:                                               ; preds = %2
  %32 = load %struct.sockpass_mapping*, %struct.sockpass_mapping** %7, align 8
  %33 = getelementptr inbounds %struct.sockpass_mapping, %struct.sockpass_mapping* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %36 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @inet_listen(i32 %34, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %31, %30
  %42 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %5, align 8
  %43 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %42, i32 0, i32 0
  %44 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %5, align 8
  %45 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = call %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_10__* %43, i32 %47)
  store %struct.xen_pvcalls_response* %49, %struct.xen_pvcalls_response** %8, align 8
  %50 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %51 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %54 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %56 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %59 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %61 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %66 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %8, align 8
  %71 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  ret i32 0
}

declare dso_local %struct.pvcalls_fedata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local %struct.sockpass_mapping* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @inet_listen(i32, i32) #1

declare dso_local %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
