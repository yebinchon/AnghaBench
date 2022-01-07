; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_comms.c_xb_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_comms.c_xb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenstore_domain_interface = type { i64, i64, i32 }

@xen_store_interface = common dso_local global %struct.xenstore_domain_interface* null, align 8
@EIO = common dso_local global i32 0, align 4
@xen_store_evtchn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @xb_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xb_write(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xenstore_domain_interface*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** @xen_store_interface, align 8
  store %struct.xenstore_domain_interface* %12, %struct.xenstore_domain_interface** %6, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %86, %49, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %87

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
  %25 = call i32 @check_indexes(i64 %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %16
  %28 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %29 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %31 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %89

34:                                               ; preds = %16
  %35 = call i32 (...) @xb_data_to_write()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %89

39:                                               ; preds = %34
  %40 = call i32 (...) @virt_mb()
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %44 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @get_output_chunk(i64 %41, i64 %42, i32 %45, i32* %11)
  store i8* %46, i8** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %13

50:                                               ; preds = %39
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @memcpy(i8* %57, i8* %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = zext i32 %61 to i64
  %64 = getelementptr i8, i8* %62, i64 %63
  store i8* %64, i8** %4, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %5, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = call i32 (...) @virt_wmb()
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %75 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %6, align 8
  %80 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %56
  %84 = load i32, i32* @xen_store_evtchn, align 4
  %85 = call i32 @notify_remote_via_evtchn(i32 %84)
  br label %86

86:                                               ; preds = %83, %56
  br label %13

87:                                               ; preds = %13
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %37, %27
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @check_indexes(i64, i64) #1

declare dso_local i32 @xb_data_to_write(...) #1

declare dso_local i32 @virt_mb(...) #1

declare dso_local i8* @get_output_chunk(i64, i64, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @virt_wmb(...) #1

declare dso_local i32 @notify_remote_via_evtchn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
