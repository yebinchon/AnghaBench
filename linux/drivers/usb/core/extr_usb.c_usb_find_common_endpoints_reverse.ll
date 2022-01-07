; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_usb_find_common_endpoints_reverse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_usb_find_common_endpoints_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_find_common_endpoints_reverse(%struct.usb_host_interface* %0, %struct.usb_endpoint_descriptor** %1, %struct.usb_endpoint_descriptor** %2, %struct.usb_endpoint_descriptor** %3, %struct.usb_endpoint_descriptor** %4) #0 {
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
  %34 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %35 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %59, %33
  %40 = load i32, i32* %13, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %44 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %49, %struct.usb_endpoint_descriptor** %12, align 8
  %50 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %12, align 8
  %51 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %8, align 8
  %52 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %9, align 8
  %53 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %10, align 8
  %54 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %11, align 8
  %55 = call i64 @match_endpoint(%struct.usb_endpoint_descriptor* %50, %struct.usb_endpoint_descriptor** %51, %struct.usb_endpoint_descriptor** %52, %struct.usb_endpoint_descriptor** %53, %struct.usb_endpoint_descriptor** %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %65

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %13, align 4
  br label %39

62:                                               ; preds = %39
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i64 @match_endpoint(%struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
