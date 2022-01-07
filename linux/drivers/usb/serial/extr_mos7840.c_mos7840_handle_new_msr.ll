; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_handle_new_msr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_mos7840.c_mos7840_handle_new_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moschip_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.async_icount }
%struct.TYPE_3__ = type { i32 }
%struct.async_icount = type { i32, i32, i32, i32 }

@MOS_MSR_DELTA_CTS = common dso_local global i32 0, align 4
@MOS_MSR_DELTA_DSR = common dso_local global i32 0, align 4
@MOS_MSR_DELTA_RI = common dso_local global i32 0, align 4
@MOS_MSR_DELTA_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moschip_port*, i32)* @mos7840_handle_new_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos7840_handle_new_msr(%struct.moschip_port* %0, i32 %1) #0 {
  %3 = alloca %struct.moschip_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.moschip_port*, align 8
  %6 = alloca %struct.async_icount*, align 8
  store %struct.moschip_port* %0, %struct.moschip_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  store %struct.moschip_port* %7, %struct.moschip_port** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MOS_MSR_DELTA_CTS, align 4
  %10 = load i32, i32* @MOS_MSR_DELTA_DSR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MOS_MSR_DELTA_RI, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MOS_MSR_DELTA_CD, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %8, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %69

18:                                               ; preds = %2
  %19 = load %struct.moschip_port*, %struct.moschip_port** %5, align 8
  %20 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store %struct.async_icount* %22, %struct.async_icount** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MOS_MSR_DELTA_CTS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %29 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %18
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MOS_MSR_DELTA_DSR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %39 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @MOS_MSR_DELTA_CD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %49 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @MOS_MSR_DELTA_RI, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %59 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.moschip_port*, %struct.moschip_port** %3, align 8
  %64 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @wake_up_interruptible(i32* %67)
  br label %69

69:                                               ; preds = %62, %2
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
