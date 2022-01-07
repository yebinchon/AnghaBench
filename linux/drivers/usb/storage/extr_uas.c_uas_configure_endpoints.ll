; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_configure_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_configure_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uas_dev_info = type { i32, i32, %struct.TYPE_2__*, i8*, i8*, i8*, i8*, %struct.usb_device* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i64 }
%struct.usb_host_endpoint = type { i32 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@MAX_CMNDS = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uas_dev_info*)* @uas_configure_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uas_configure_endpoints(%struct.uas_dev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uas_dev_info*, align 8
  %4 = alloca [4 x %struct.usb_host_endpoint*], align 16
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  store %struct.uas_dev_info* %0, %struct.uas_dev_info** %3, align 8
  %7 = bitcast [4 x %struct.usb_host_endpoint*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 32, i1 false)
  %8 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %9 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %8, i32 0, i32 7
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %5, align 8
  %11 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %12 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [4 x %struct.usb_host_endpoint*], [4 x %struct.usb_host_endpoint*]* %4, i64 0, i64 0
  %17 = call i32 @uas_find_endpoints(i32 %15, %struct.usb_host_endpoint** %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %88

22:                                               ; preds = %1
  %23 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %24 = getelementptr inbounds [4 x %struct.usb_host_endpoint*], [4 x %struct.usb_host_endpoint*]* %4, i64 0, i64 0
  %25 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %24, align 16
  %26 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %25, i32 0, i32 0
  %27 = call i32 @usb_endpoint_num(i32* %26)
  %28 = call i8* @usb_sndbulkpipe(%struct.usb_device* %23, i32 %27)
  %29 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %30 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  %31 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %32 = getelementptr inbounds [4 x %struct.usb_host_endpoint*], [4 x %struct.usb_host_endpoint*]* %4, i64 0, i64 1
  %33 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %32, align 8
  %34 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %33, i32 0, i32 0
  %35 = call i32 @usb_endpoint_num(i32* %34)
  %36 = call i8* @usb_rcvbulkpipe(%struct.usb_device* %31, i32 %35)
  %37 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %38 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %40 = getelementptr inbounds [4 x %struct.usb_host_endpoint*], [4 x %struct.usb_host_endpoint*]* %4, i64 0, i64 2
  %41 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %40, align 16
  %42 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %41, i32 0, i32 0
  %43 = call i32 @usb_endpoint_num(i32* %42)
  %44 = call i8* @usb_rcvbulkpipe(%struct.usb_device* %39, i32 %43)
  %45 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %46 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %48 = getelementptr inbounds [4 x %struct.usb_host_endpoint*], [4 x %struct.usb_host_endpoint*]* %4, i64 0, i64 3
  %49 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %48, align 8
  %50 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %49, i32 0, i32 0
  %51 = call i32 @usb_endpoint_num(i32* %50)
  %52 = call i8* @usb_sndbulkpipe(%struct.usb_device* %47, i32 %51)
  %53 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %54 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @USB_SPEED_SUPER, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %22
  %61 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %62 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %61, i32 0, i32 0
  store i32 32, i32* %62, align 8
  %63 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %64 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  br label %87

65:                                               ; preds = %22
  %66 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %67 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds [4 x %struct.usb_host_endpoint*], [4 x %struct.usb_host_endpoint*]* %4, i64 0, i64 0
  %70 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %69, i64 1
  %71 = load i32, i32* @MAX_CMNDS, align 4
  %72 = load i32, i32* @GFP_NOIO, align 4
  %73 = call i32 @usb_alloc_streams(%struct.TYPE_2__* %68, %struct.usb_host_endpoint** %70, i32 3, i32 %71, i32 %72)
  %74 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %75 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %77 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %65
  %81 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %82 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %2, align 4
  br label %88

84:                                               ; preds = %65
  %85 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %86 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %60
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %80, %20
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @uas_find_endpoints(i32, %struct.usb_host_endpoint**) #2

declare dso_local i8* @usb_sndbulkpipe(%struct.usb_device*, i32) #2

declare dso_local i32 @usb_endpoint_num(i32*) #2

declare dso_local i8* @usb_rcvbulkpipe(%struct.usb_device*, i32) #2

declare dso_local i32 @usb_alloc_streams(%struct.TYPE_2__*, %struct.usb_host_endpoint**, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
