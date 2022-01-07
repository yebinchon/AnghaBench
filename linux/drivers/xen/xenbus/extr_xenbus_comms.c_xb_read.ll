; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_comms.c_xb_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_comms.c_xb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenstore_domain_interface = type { i64, i64, i32 }

@xen_store_interface = common dso_local global %struct.xenstore_domain_interface* null, align 8
@EIO = common dso_local global i32 0, align 4
@XENSTORE_RING_SIZE = common dso_local global i64 0, align 8
@xen_store_evtchn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @xb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xb_read(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xenstore_domain_interface*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** @xen_store_interface, align 8
  store %struct.xenstore_domain_interface* %12, %struct.xenstore_domain_interface** %6, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %89, %49, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %90

16:                                               ; preds = %13
  %17 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %18 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %21 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %92

28:                                               ; preds = %16
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @check_indexes(i64 %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %35 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %37 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %92

40:                                               ; preds = %28
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %44 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @get_input_chunk(i64 %41, i64 %42, i32 %45, i32* %10)
  store i8* %46, i8** %11, align 8
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %13

50:                                               ; preds = %40
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = call i32 (...) @virt_rmb()
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @memcpy(i8* %58, i8* %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = zext i32 %62 to i64
  %65 = getelementptr i8, i8* %63, i64 %64
  store i8* %65, i8** %4, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %5, align 4
  %68 = sub i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = call i32 (...) @virt_mb()
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %76 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %80 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = sub nsw i64 %81, %82
  %84 = load i64, i64* @XENSTORE_RING_SIZE, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %56
  %87 = load i32, i32* @xen_store_evtchn, align 4
  %88 = call i32 @notify_remote_via_evtchn(i32 %87)
  br label %89

89:                                               ; preds = %86, %56
  br label %13

90:                                               ; preds = %13
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %33, %26
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @check_indexes(i64, i64) #1

declare dso_local i8* @get_input_chunk(i64, i64, i32, i32*) #1

declare dso_local i32 @virt_rmb(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @virt_mb(...) #1

declare dso_local i32 @notify_remote_via_evtchn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
