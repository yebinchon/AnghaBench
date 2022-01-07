; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_get_pipes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_get_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"bulk endpoints not found\0A\00", align 1
@USB_PR_CBI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"interrupt endpoint not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @get_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pipes(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %9 = load %struct.us_data*, %struct.us_data** %3, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  store %struct.usb_host_interface* %13, %struct.usb_host_interface** %4, align 8
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %15 = call i32 @usb_find_common_endpoints(%struct.usb_host_interface* %14, %struct.usb_endpoint_descriptor** %5, %struct.usb_endpoint_descriptor** %6, i32* null, i32* null)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.us_data*, %struct.us_data** %3, align 8
  %20 = call i32 @usb_stor_dbg(%struct.us_data* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %83

22:                                               ; preds = %1
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %24 = call i32 @usb_find_int_in_endpoint(%struct.usb_host_interface* %23, %struct.usb_endpoint_descriptor** %7)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.us_data*, %struct.us_data** %3, align 8
  %29 = getelementptr inbounds %struct.us_data, %struct.us_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USB_PR_CBI, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.us_data*, %struct.us_data** %3, align 8
  %35 = call i32 @usb_stor_dbg(%struct.us_data* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %83

37:                                               ; preds = %27, %22
  %38 = load %struct.us_data*, %struct.us_data** %3, align 8
  %39 = getelementptr inbounds %struct.us_data, %struct.us_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_sndctrlpipe(i32 %40, i32 0)
  %42 = load %struct.us_data*, %struct.us_data** %3, align 8
  %43 = getelementptr inbounds %struct.us_data, %struct.us_data* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.us_data*, %struct.us_data** %3, align 8
  %45 = getelementptr inbounds %struct.us_data, %struct.us_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @usb_rcvctrlpipe(i32 %46, i32 0)
  %48 = load %struct.us_data*, %struct.us_data** %3, align 8
  %49 = getelementptr inbounds %struct.us_data, %struct.us_data* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load %struct.us_data*, %struct.us_data** %3, align 8
  %51 = getelementptr inbounds %struct.us_data, %struct.us_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %54 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %53)
  %55 = call i32 @usb_sndbulkpipe(i32 %52, i32 %54)
  %56 = load %struct.us_data*, %struct.us_data** %3, align 8
  %57 = getelementptr inbounds %struct.us_data, %struct.us_data* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.us_data*, %struct.us_data** %3, align 8
  %59 = getelementptr inbounds %struct.us_data, %struct.us_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %62 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %61)
  %63 = call i32 @usb_rcvbulkpipe(i32 %60, i32 %62)
  %64 = load %struct.us_data*, %struct.us_data** %3, align 8
  %65 = getelementptr inbounds %struct.us_data, %struct.us_data* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %67 = icmp ne %struct.usb_endpoint_descriptor* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %37
  %69 = load %struct.us_data*, %struct.us_data** %3, align 8
  %70 = getelementptr inbounds %struct.us_data, %struct.us_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %73 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %72)
  %74 = call i32 @usb_rcvintpipe(i32 %71, i32 %73)
  %75 = load %struct.us_data*, %struct.us_data** %3, align 8
  %76 = getelementptr inbounds %struct.us_data, %struct.us_data* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %78 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.us_data*, %struct.us_data** %3, align 8
  %81 = getelementptr inbounds %struct.us_data, %struct.us_data* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %68, %37
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %33, %18
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @usb_find_common_endpoints(%struct.usb_host_interface*, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, i32*, i32*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @usb_find_int_in_endpoint(%struct.usb_host_interface*, %struct.usb_endpoint_descriptor**) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
