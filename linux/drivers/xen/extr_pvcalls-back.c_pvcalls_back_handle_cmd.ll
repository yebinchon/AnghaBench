; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_handle_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_handle_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xen_pvcalls_request = type { i32, i32 }
%struct.pvcalls_fedata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xen_pvcalls_response = type { i32, i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xen_pvcalls_request*)* @pvcalls_back_handle_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvcalls_back_handle_cmd(%struct.xenbus_device* %0, %struct.xen_pvcalls_request* %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca %struct.xen_pvcalls_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvcalls_fedata*, align 8
  %7 = alloca %struct.xen_pvcalls_response*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store %struct.xen_pvcalls_request* %1, %struct.xen_pvcalls_request** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %9 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %39 [
    i32 128, label %11
    i32 132, label %15
    i32 129, label %19
    i32 133, label %23
    i32 131, label %27
    i32 134, label %31
    i32 130, label %35
  ]

11:                                               ; preds = %2
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %13 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %14 = call i32 @pvcalls_back_socket(%struct.xenbus_device* %12, %struct.xen_pvcalls_request* %13)
  store i32 %14, i32* %5, align 4
  br label %65

15:                                               ; preds = %2
  %16 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %17 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %18 = call i32 @pvcalls_back_connect(%struct.xenbus_device* %16, %struct.xen_pvcalls_request* %17)
  store i32 %18, i32* %5, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %21 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %22 = call i32 @pvcalls_back_release(%struct.xenbus_device* %20, %struct.xen_pvcalls_request* %21)
  store i32 %22, i32* %5, align 4
  br label %65

23:                                               ; preds = %2
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %25 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %26 = call i32 @pvcalls_back_bind(%struct.xenbus_device* %24, %struct.xen_pvcalls_request* %25)
  store i32 %26, i32* %5, align 4
  br label %65

27:                                               ; preds = %2
  %28 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %29 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %30 = call i32 @pvcalls_back_listen(%struct.xenbus_device* %28, %struct.xen_pvcalls_request* %29)
  store i32 %30, i32* %5, align 4
  br label %65

31:                                               ; preds = %2
  %32 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %33 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %34 = call i32 @pvcalls_back_accept(%struct.xenbus_device* %32, %struct.xen_pvcalls_request* %33)
  store i32 %34, i32* %5, align 4
  br label %65

35:                                               ; preds = %2
  %36 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %37 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %38 = call i32 @pvcalls_back_poll(%struct.xenbus_device* %36, %struct.xen_pvcalls_request* %37)
  store i32 %38, i32* %5, align 4
  br label %65

39:                                               ; preds = %2
  %40 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %41 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %40, i32 0, i32 0
  %42 = call %struct.pvcalls_fedata* @dev_get_drvdata(i32* %41)
  store %struct.pvcalls_fedata* %42, %struct.pvcalls_fedata** %6, align 8
  %43 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %6, align 8
  %44 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %43, i32 0, i32 0
  %45 = load %struct.pvcalls_fedata*, %struct.pvcalls_fedata** %6, align 8
  %46 = getelementptr inbounds %struct.pvcalls_fedata, %struct.pvcalls_fedata* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = call %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_2__* %44, i32 %48)
  store %struct.xen_pvcalls_response* %50, %struct.xen_pvcalls_response** %7, align 8
  %51 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %52 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %7, align 8
  %55 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.xen_pvcalls_request*, %struct.xen_pvcalls_request** %4, align 8
  %57 = getelementptr inbounds %struct.xen_pvcalls_request, %struct.xen_pvcalls_request* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %7, align 8
  %60 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @ENOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  %63 = load %struct.xen_pvcalls_response*, %struct.xen_pvcalls_response** %7, align 8
  %64 = getelementptr inbounds %struct.xen_pvcalls_response, %struct.xen_pvcalls_response* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %39, %35, %31, %27, %23, %19, %15, %11
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @pvcalls_back_socket(%struct.xenbus_device*, %struct.xen_pvcalls_request*) #1

declare dso_local i32 @pvcalls_back_connect(%struct.xenbus_device*, %struct.xen_pvcalls_request*) #1

declare dso_local i32 @pvcalls_back_release(%struct.xenbus_device*, %struct.xen_pvcalls_request*) #1

declare dso_local i32 @pvcalls_back_bind(%struct.xenbus_device*, %struct.xen_pvcalls_request*) #1

declare dso_local i32 @pvcalls_back_listen(%struct.xenbus_device*, %struct.xen_pvcalls_request*) #1

declare dso_local i32 @pvcalls_back_accept(%struct.xenbus_device*, %struct.xen_pvcalls_request*) #1

declare dso_local i32 @pvcalls_back_poll(%struct.xenbus_device*, %struct.xen_pvcalls_request*) #1

declare dso_local %struct.pvcalls_fedata* @dev_get_drvdata(i32*) #1

declare dso_local %struct.xen_pvcalls_response* @RING_GET_RESPONSE(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
