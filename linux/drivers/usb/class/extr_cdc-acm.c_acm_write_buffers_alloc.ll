; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_write_buffers_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_write_buffers_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm = type { i32, i32, %struct.acm_wb* }
%struct.acm_wb = type { i32, i32 }

@ACM_NW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acm*)* @acm_write_buffers_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_write_buffers_alloc(%struct.acm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acm_wb*, align 8
  store %struct.acm* %0, %struct.acm** %3, align 8
  %6 = load %struct.acm*, %struct.acm** %3, align 8
  %7 = getelementptr inbounds %struct.acm, %struct.acm* %6, i32 0, i32 2
  %8 = load %struct.acm_wb*, %struct.acm_wb** %7, align 8
  %9 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %8, i64 0
  store %struct.acm_wb* %9, %struct.acm_wb** %5, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %57, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ACM_NW, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %10
  %15 = load %struct.acm*, %struct.acm** %3, align 8
  %16 = getelementptr inbounds %struct.acm, %struct.acm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.acm*, %struct.acm** %3, align 8
  %19 = getelementptr inbounds %struct.acm, %struct.acm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load %struct.acm_wb*, %struct.acm_wb** %5, align 8
  %23 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %22, i32 0, i32 0
  %24 = call i32 @usb_alloc_coherent(i32 %17, i32 %20, i32 %21, i32* %23)
  %25 = load %struct.acm_wb*, %struct.acm_wb** %5, align 8
  %26 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.acm_wb*, %struct.acm_wb** %5, align 8
  %28 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %35, %31
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %4, align 4
  %38 = load %struct.acm_wb*, %struct.acm_wb** %5, align 8
  %39 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %38, i32 -1
  store %struct.acm_wb* %39, %struct.acm_wb** %5, align 8
  %40 = load %struct.acm*, %struct.acm** %3, align 8
  %41 = getelementptr inbounds %struct.acm, %struct.acm* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.acm*, %struct.acm** %3, align 8
  %44 = getelementptr inbounds %struct.acm, %struct.acm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.acm_wb*, %struct.acm_wb** %5, align 8
  %47 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.acm_wb*, %struct.acm_wb** %5, align 8
  %50 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @usb_free_coherent(i32 %42, i32 %45, i32 %48, i32 %51)
  br label %32

53:                                               ; preds = %32
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %63

56:                                               ; preds = %14
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  %60 = load %struct.acm_wb*, %struct.acm_wb** %5, align 8
  %61 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %60, i32 1
  store %struct.acm_wb* %61, %struct.acm_wb** %5, align 8
  br label %10

62:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
