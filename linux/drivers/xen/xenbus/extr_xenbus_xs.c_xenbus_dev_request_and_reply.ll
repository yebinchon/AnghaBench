; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xenbus_dev_request_and_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_xs.c_xenbus_dev_request_and_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsd_sockmsg = type { i32 }
%struct.xb_req_data = type { i32, i32, i8*, i32, %struct.kvec* }
%struct.kvec = type { %struct.xsd_sockmsg*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xenbus_dev_queue_reply = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_dev_request_and_reply(%struct.xsd_sockmsg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xsd_sockmsg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xb_req_data*, align 8
  %7 = alloca %struct.kvec*, align 8
  store %struct.xsd_sockmsg* %0, %struct.xsd_sockmsg** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.xb_req_data* @kmalloc(i32 48, i32 %8)
  store %struct.xb_req_data* %9, %struct.xb_req_data** %6, align 8
  %10 = load %struct.xb_req_data*, %struct.xb_req_data** %6, align 8
  %11 = icmp ne %struct.xb_req_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.xb_req_data*, %struct.xb_req_data** %6, align 8
  %17 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %16, i64 1
  %18 = bitcast %struct.xb_req_data* %17 to %struct.kvec*
  store %struct.kvec* %18, %struct.kvec** %7, align 8
  %19 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %4, align 8
  %20 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kvec*, %struct.kvec** %7, align 8
  %23 = getelementptr inbounds %struct.kvec, %struct.kvec* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %4, align 8
  %25 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %24, i64 1
  %26 = load %struct.kvec*, %struct.kvec** %7, align 8
  %27 = getelementptr inbounds %struct.kvec, %struct.kvec* %26, i32 0, i32 0
  store %struct.xsd_sockmsg* %25, %struct.xsd_sockmsg** %27, align 8
  %28 = load %struct.kvec*, %struct.kvec** %7, align 8
  %29 = load %struct.xb_req_data*, %struct.xb_req_data** %6, align 8
  %30 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %29, i32 0, i32 4
  store %struct.kvec* %28, %struct.kvec** %30, align 8
  %31 = load %struct.xb_req_data*, %struct.xb_req_data** %6, align 8
  %32 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* @xenbus_dev_queue_reply, align 4
  %34 = load %struct.xb_req_data*, %struct.xb_req_data** %6, align 8
  %35 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.xb_req_data*, %struct.xb_req_data** %6, align 8
  %38 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.xb_req_data*, %struct.xb_req_data** %6, align 8
  %40 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.xb_req_data*, %struct.xb_req_data** %6, align 8
  %42 = load %struct.xsd_sockmsg*, %struct.xsd_sockmsg** %4, align 8
  %43 = call i32 @xs_send(%struct.xb_req_data* %41, %struct.xsd_sockmsg* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %15, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.xb_req_data* @kmalloc(i32, i32) #1

declare dso_local i32 @xs_send(%struct.xb_req_data*, %struct.xsd_sockmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
