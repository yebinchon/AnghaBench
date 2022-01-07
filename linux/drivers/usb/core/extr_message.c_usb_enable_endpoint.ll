; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_enable_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_usb_enable_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_host_endpoint**, %struct.usb_host_endpoint** }
%struct.usb_host_endpoint = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_enable_endpoint(%struct.usb_device* %0, %struct.usb_host_endpoint* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_host_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %11 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %10, i32 0, i32 1
  %12 = call i32 @usb_endpoint_num(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %14 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %13, i32 0, i32 1
  %15 = call i32 @usb_endpoint_dir_out(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %17 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %16, i32 0, i32 1
  %18 = call i32 @usb_endpoint_xfer_control(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %23 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %24 = call i32 @usb_hcd_reset_endpoint(%struct.usb_device* %22, %struct.usb_host_endpoint* %23)
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28, %25
  %32 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %33 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 1
  %35 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %35, i64 %37
  store %struct.usb_host_endpoint* %32, %struct.usb_host_endpoint** %38, align 8
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42, %39
  %46 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %47 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 0
  %49 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %49, i64 %51
  store %struct.usb_host_endpoint* %46, %struct.usb_host_endpoint** %52, align 8
  br label %53

53:                                               ; preds = %45, %42
  %54 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %55 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  ret void
}

declare dso_local i32 @usb_endpoint_num(i32*) #1

declare dso_local i32 @usb_endpoint_dir_out(i32*) #1

declare dso_local i32 @usb_endpoint_xfer_control(i32*) #1

declare dso_local i32 @usb_hcd_reset_endpoint(%struct.usb_device*, %struct.usb_host_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
