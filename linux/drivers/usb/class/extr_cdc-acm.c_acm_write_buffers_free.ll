; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_write_buffers_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_write_buffers_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm = type { i32, i32, %struct.acm_wb* }
%struct.acm_wb = type { i32, i32 }

@ACM_NW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acm*)* @acm_write_buffers_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_write_buffers_free(%struct.acm* %0) #0 {
  %2 = alloca %struct.acm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acm_wb*, align 8
  store %struct.acm* %0, %struct.acm** %2, align 8
  %5 = load %struct.acm*, %struct.acm** %2, align 8
  %6 = getelementptr inbounds %struct.acm, %struct.acm* %5, i32 0, i32 2
  %7 = load %struct.acm_wb*, %struct.acm_wb** %6, align 8
  %8 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %7, i64 0
  store %struct.acm_wb* %8, %struct.acm_wb** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ACM_NW, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load %struct.acm*, %struct.acm** %2, align 8
  %15 = getelementptr inbounds %struct.acm, %struct.acm* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.acm*, %struct.acm** %2, align 8
  %18 = getelementptr inbounds %struct.acm, %struct.acm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %21 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %24 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usb_free_coherent(i32 %16, i32 %19, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  %30 = load %struct.acm_wb*, %struct.acm_wb** %4, align 8
  %31 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %30, i32 1
  store %struct.acm_wb* %31, %struct.acm_wb** %4, align 8
  br label %9

32:                                               ; preds = %9
  ret void
}

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
