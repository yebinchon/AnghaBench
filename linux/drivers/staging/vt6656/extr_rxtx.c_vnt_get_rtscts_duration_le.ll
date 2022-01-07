; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_get_rtscts_duration_le.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_rxtx.c_vnt_get_rtscts_duration_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_usb_send_context = type { i32, i32, %struct.vnt_private* }
%struct.vnt_private = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_usb_send_context*, i32, i32, i32)* @vnt_get_rtscts_duration_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_get_rtscts_duration_le(%struct.vnt_usb_send_context* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vnt_usb_send_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnt_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vnt_usb_send_context* %0, %struct.vnt_usb_send_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %15 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %14, i32 0, i32 2
  %16 = load %struct.vnt_private*, %struct.vnt_private** %15, align 8
  store %struct.vnt_private* %16, %struct.vnt_private** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %18 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.vnt_usb_send_context*, %struct.vnt_usb_send_context** %5, align 8
  %21 = getelementptr inbounds %struct.vnt_usb_send_context, %struct.vnt_usb_send_context* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %79 [
    i32 128, label %24
    i32 131, label %24
    i32 130, label %24
    i32 129, label %24
    i32 134, label %46
    i32 133, label %46
    i32 132, label %46
    i32 137, label %68
    i32 136, label %68
    i32 135, label %68
  ]

24:                                               ; preds = %4, %4, %4, %4
  %25 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %26 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %30 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @vnt_get_frame_time(i32 %27, i32 %28, i32 14, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %35 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 2, %36
  %38 = add nsw i32 %33, %37
  %39 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @vnt_get_rsvtime(%struct.vnt_private* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = add nsw i32 %38, %44
  store i32 %45, i32* %11, align 4
  br label %80

46:                                               ; preds = %4, %4, %4
  %47 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %48 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %52 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @vnt_get_frame_time(i32 %49, i32 %50, i32 14, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %57 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 2, %58
  %60 = add nsw i32 %55, %59
  %61 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @vnt_get_rsvtime(%struct.vnt_private* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = add nsw i32 %60, %66
  store i32 %67, i32* %11, align 4
  br label %80

68:                                               ; preds = %4, %4, %4
  %69 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %70 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @vnt_get_rsvtime(%struct.vnt_private* %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = add nsw i32 %71, %77
  store i32 %78, i32* %11, align 4
  br label %80

79:                                               ; preds = %4
  br label %80

80:                                               ; preds = %79, %68, %46, %24
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @cpu_to_le16(i32 %81)
  ret i32 %82
}

declare dso_local i32 @vnt_get_frame_time(i32, i32, i32, i32) #1

declare dso_local i32 @vnt_get_rsvtime(%struct.vnt_private*, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
