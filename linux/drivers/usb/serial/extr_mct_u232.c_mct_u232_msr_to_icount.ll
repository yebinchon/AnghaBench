; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_msr_to_icount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mct_u232.c_mct_u232_msr_to_icount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_icount = type { i32, i32, i32, i32 }

@MCT_U232_MSR_DDSR = common dso_local global i8 0, align 1
@MCT_U232_MSR_DCTS = common dso_local global i8 0, align 1
@MCT_U232_MSR_DRI = common dso_local global i8 0, align 1
@MCT_U232_MSR_DCD = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async_icount*, i8)* @mct_u232_msr_to_icount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mct_u232_msr_to_icount(%struct.async_icount* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.async_icount*, align 8
  %4 = alloca i8, align 1
  store %struct.async_icount* %0, %struct.async_icount** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @MCT_U232_MSR_DDSR, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.async_icount*, %struct.async_icount** %3, align 8
  %13 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @MCT_U232_MSR_DCTS, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.async_icount*, %struct.async_icount** %3, align 8
  %25 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %23, %16
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @MCT_U232_MSR_DRI, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.async_icount*, %struct.async_icount** %3, align 8
  %37 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %35, %28
  %41 = load i8, i8* %4, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @MCT_U232_MSR_DCD, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.async_icount*, %struct.async_icount** %3, align 8
  %49 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
