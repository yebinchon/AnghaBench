; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_usb_find_common_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_usb_find_common_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_find_common_endpoints(%struct.usb_host_interface* %0, %struct.usb_endpoint_descriptor** %1, %struct.usb_endpoint_descriptor** %2, %struct.usb_endpoint_descriptor** %3, %struct.usb_endpoint_descriptor** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor**, align 8
  %9 = alloca %struct.usb_endpoint_descriptor**, align 8
  %10 = alloca %struct.usb_endpoint_descriptor**, align 8
  %11 = alloca %struct.usb_endpoint_descriptor**, align 8
  %12 = alloca %struct.usb_endpoint_descriptor*, align 8
  %13 = alloca i32, align 4
  store %struct.usb_host_interface* %0, %struct.usb_host_interface** %7, align 8
  store %struct.usb_endpoint_descriptor** %1, %struct.usb_endpoint_descriptor*** %8, align 8
  store %struct.usb_endpoint_descriptor** %2, %struct.usb_endpoint_descriptor*** %9, align 8
  store %struct.usb_endpoint_descriptor** %3, %struct.usb_endpoint_descriptor*** %10, align 8
  store %struct.usb_endpoint_descriptor** %4, %struct.usb_endpoint_descriptor*** %11, align 8
  %14 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %8, align 8
  %15 = icmp ne %struct.usb_endpoint_descriptor** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %8, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %17, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %9, align 8
  %20 = icmp ne %struct.usb_endpoint_descriptor** %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %9, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %22, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %10, align 8
  %25 = icmp ne %struct.usb_endpoint_descriptor** %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %10, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %27, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %11, align 8
  %30 = icmp ne %struct.usb_endpoint_descriptor** %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %11, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %32, align 8
  br label %33

33:                                               ; preds = %31, %28
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %58, %33
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %37 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %34
  %42 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %43 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %48, %struct.usb_endpoint_descriptor** %12, align 8
  %49 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %50 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %8, align 8
  %51 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %9, align 8
  %52 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %10, align 8
  %53 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %11, align 8
  %54 = call i64 @match_endpoint(%struct.usb_endpoint_descriptor* %49, %struct.usb_endpoint_descriptor** %50, %struct.usb_endpoint_descriptor** %51, %struct.usb_endpoint_descriptor** %52, %struct.usb_endpoint_descriptor** %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %64

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %34

61:                                               ; preds = %34
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i64 @match_endpoint(%struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
