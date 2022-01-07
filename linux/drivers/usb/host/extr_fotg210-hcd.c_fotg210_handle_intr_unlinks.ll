; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_handle_intr_unlinks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_handle_intr_unlinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i64, i32, i64, %struct.fotg210_qh* }
%struct.fotg210_qh = type { i64, %struct.fotg210_qh* }

@FOTG210_RH_RUNNING = common dso_local global i64 0, align 8
@FOTG210_HRTIMER_UNLINK_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*)* @fotg210_handle_intr_unlinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_handle_intr_unlinks(%struct.fotg210_hcd* %0) #0 {
  %2 = alloca %struct.fotg210_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fotg210_qh*, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %2, align 8
  %5 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FOTG210_RH_RUNNING, align 8
  %9 = icmp slt i64 %7, %8
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %12 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %11, i32 0, i32 1
  store i32 1, i32* %12, align 8
  br label %13

13:                                               ; preds = %33, %1
  %14 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %14, i32 0, i32 3
  %16 = load %struct.fotg210_qh*, %struct.fotg210_qh** %15, align 8
  %17 = icmp ne %struct.fotg210_qh* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %20 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %19, i32 0, i32 3
  %21 = load %struct.fotg210_qh*, %struct.fotg210_qh** %20, align 8
  store %struct.fotg210_qh* %21, %struct.fotg210_qh** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %26 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %29 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %44

33:                                               ; preds = %24, %18
  %34 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %35 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %34, i32 0, i32 1
  %36 = load %struct.fotg210_qh*, %struct.fotg210_qh** %35, align 8
  %37 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %38 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %37, i32 0, i32 3
  store %struct.fotg210_qh* %36, %struct.fotg210_qh** %38, align 8
  %39 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %40 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %39, i32 0, i32 1
  store %struct.fotg210_qh* null, %struct.fotg210_qh** %40, align 8
  %41 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %42 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %43 = call i32 @end_unlink_intr(%struct.fotg210_hcd* %41, %struct.fotg210_qh* %42)
  br label %13

44:                                               ; preds = %32, %13
  %45 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %46 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %45, i32 0, i32 3
  %47 = load %struct.fotg210_qh*, %struct.fotg210_qh** %46, align 8
  %48 = icmp ne %struct.fotg210_qh* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %51 = load i32, i32* @FOTG210_HRTIMER_UNLINK_INTR, align 4
  %52 = call i32 @fotg210_enable_event(%struct.fotg210_hcd* %50, i32 %51, i32 1)
  %53 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %54 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %49, %44
  %58 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %59 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %58, i32 0, i32 1
  store i32 0, i32* %59, align 8
  ret void
}

declare dso_local i32 @end_unlink_intr(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @fotg210_enable_event(%struct.fotg210_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
