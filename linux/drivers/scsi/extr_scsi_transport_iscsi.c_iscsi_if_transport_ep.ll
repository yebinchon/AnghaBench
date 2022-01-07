; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_transport_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_transport_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_transport = type { i32 (%struct.iscsi_endpoint*, i32)* }
%struct.iscsi_endpoint = type opaque
%struct.iscsi_uevent = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.iscsi_endpoint.0 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_transport*, %struct.iscsi_uevent*, i32)* @iscsi_if_transport_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_if_transport_ep(%struct.iscsi_transport* %0, %struct.iscsi_uevent* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_transport*, align 8
  %6 = alloca %struct.iscsi_uevent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_endpoint.0*, align 8
  %9 = alloca i32, align 4
  store %struct.iscsi_transport* %0, %struct.iscsi_transport** %5, align 8
  store %struct.iscsi_uevent* %1, %struct.iscsi_uevent** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %59 [
    i32 130, label %11
    i32 131, label %11
    i32 128, label %16
    i32 129, label %51
  ]

11:                                               ; preds = %3, %3
  %12 = load %struct.iscsi_transport*, %struct.iscsi_transport** %5, align 8
  %13 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @iscsi_if_ep_connect(%struct.iscsi_transport* %12, %struct.iscsi_uevent* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  br label %59

16:                                               ; preds = %3
  %17 = load %struct.iscsi_transport*, %struct.iscsi_transport** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %17, i32 0, i32 0
  %19 = load i32 (%struct.iscsi_endpoint*, i32)*, i32 (%struct.iscsi_endpoint*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.iscsi_endpoint*, i32)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %61

24:                                               ; preds = %16
  %25 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %26 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.iscsi_endpoint.0* @iscsi_lookup_endpoint(i32 %29)
  store %struct.iscsi_endpoint.0* %30, %struct.iscsi_endpoint.0** %8, align 8
  %31 = load %struct.iscsi_endpoint.0*, %struct.iscsi_endpoint.0** %8, align 8
  %32 = icmp ne %struct.iscsi_endpoint.0* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %61

36:                                               ; preds = %24
  %37 = load %struct.iscsi_transport*, %struct.iscsi_transport** %5, align 8
  %38 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %37, i32 0, i32 0
  %39 = load i32 (%struct.iscsi_endpoint*, i32)*, i32 (%struct.iscsi_endpoint*, i32)** %38, align 8
  %40 = load %struct.iscsi_endpoint.0*, %struct.iscsi_endpoint.0** %8, align 8
  %41 = bitcast %struct.iscsi_endpoint.0* %40 to %struct.iscsi_endpoint*
  %42 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %43 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %39(%struct.iscsi_endpoint* %41, i32 %46)
  %48 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %49 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %59

51:                                               ; preds = %3
  %52 = load %struct.iscsi_transport*, %struct.iscsi_transport** %5, align 8
  %53 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %54 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @iscsi_if_ep_disconnect(%struct.iscsi_transport* %52, i32 %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %3, %51, %36, %11
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %33, %21
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @iscsi_if_ep_connect(%struct.iscsi_transport*, %struct.iscsi_uevent*, i32) #1

declare dso_local %struct.iscsi_endpoint.0* @iscsi_lookup_endpoint(i32) #1

declare dso_local i32 @iscsi_if_ep_disconnect(%struct.iscsi_transport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
