; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_alloc_one_event_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_alloc_one_event_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_event_buffer = type { i32, i32, i32, i8*, %struct.dwc3* }
%struct.dwc3 = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dwc3_event_buffer* (%struct.dwc3*, i32)* @dwc3_alloc_one_event_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dwc3_event_buffer* @dwc3_alloc_one_event_buffer(%struct.dwc3* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc3_event_buffer*, align 8
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc3_event_buffer*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %8 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @devm_kzalloc(i32 %9, i32 32, i32 %10)
  %12 = bitcast i8* %11 to %struct.dwc3_event_buffer*
  store %struct.dwc3_event_buffer* %12, %struct.dwc3_event_buffer** %6, align 8
  %13 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %6, align 8
  %14 = icmp ne %struct.dwc3_event_buffer* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.dwc3_event_buffer* @ERR_PTR(i32 %17)
  store %struct.dwc3_event_buffer* %18, %struct.dwc3_event_buffer** %3, align 8
  br label %63

19:                                               ; preds = %2
  %20 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %21 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %21, i32 0, i32 4
  store %struct.dwc3* %20, %struct.dwc3** %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %27 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @devm_kzalloc(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %19
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.dwc3_event_buffer* @ERR_PTR(i32 %40)
  store %struct.dwc3_event_buffer* %41, %struct.dwc3_event_buffer** %3, align 8
  br label %63

42:                                               ; preds = %19
  %43 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %44 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %47, i32 0, i32 2
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32 @dma_alloc_coherent(i32 %45, i32 %46, i32* %48, i32 %49)
  %51 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %6, align 8
  %52 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %42
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.dwc3_event_buffer* @ERR_PTR(i32 %59)
  store %struct.dwc3_event_buffer* %60, %struct.dwc3_event_buffer** %3, align 8
  br label %63

61:                                               ; preds = %42
  %62 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %6, align 8
  store %struct.dwc3_event_buffer* %62, %struct.dwc3_event_buffer** %3, align 8
  br label %63

63:                                               ; preds = %61, %57, %38, %15
  %64 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  ret %struct.dwc3_event_buffer* %64
}

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.dwc3_event_buffer* @ERR_PTR(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
