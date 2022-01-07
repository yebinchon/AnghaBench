; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_qmu_gpd_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_qmu_gpd_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mtu3_ep* }
%struct.mtu3_ep = type { i32, %struct.mtu3_gpd_ring, %struct.mtu3* }
%struct.mtu3_gpd_ring = type { i64, %struct.qmu_gpd* }
%struct.qmu_gpd = type { i32, i32, i32, i32 }
%struct.mtu3 = type { i32 }

@MTU3_EP_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"empty!\0A\00", align 1
@MAX_GPD_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"gpd.%03d -> %pad, %p: %08x %08x %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mtu3_qmu_gpd_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtu3_qmu_gpd_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mtu3_ep*, align 8
  %6 = alloca %struct.mtu3*, align 8
  %7 = alloca %struct.mtu3_gpd_ring*, align 8
  %8 = alloca %struct.qmu_gpd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.mtu3_ep*, %struct.mtu3_ep** %13, align 8
  store %struct.mtu3_ep* %14, %struct.mtu3_ep** %5, align 8
  %15 = load %struct.mtu3_ep*, %struct.mtu3_ep** %5, align 8
  %16 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %15, i32 0, i32 2
  %17 = load %struct.mtu3*, %struct.mtu3** %16, align 8
  store %struct.mtu3* %17, %struct.mtu3** %6, align 8
  %18 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %19 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %18, i32 0, i32 0
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.mtu3_ep*, %struct.mtu3_ep** %5, align 8
  %23 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %22, i32 0, i32 1
  store %struct.mtu3_gpd_ring* %23, %struct.mtu3_gpd_ring** %7, align 8
  %24 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %7, align 8
  %25 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %24, i32 0, i32 1
  %26 = load %struct.qmu_gpd*, %struct.qmu_gpd** %25, align 8
  store %struct.qmu_gpd* %26, %struct.qmu_gpd** %8, align 8
  %27 = load %struct.qmu_gpd*, %struct.qmu_gpd** %8, align 8
  %28 = icmp ne %struct.qmu_gpd* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.mtu3_ep*, %struct.mtu3_ep** %5, align 8
  %31 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MTU3_EP_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29, %2
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = call i32 @seq_puts(%struct.seq_file* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %74

39:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %68, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @MAX_GPD_NUM, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %7, align 8
  %46 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 16
  %51 = add i64 %47, %50
  store i64 %51, i64* %9, align 8
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.qmu_gpd*, %struct.qmu_gpd** %8, align 8
  %55 = load %struct.qmu_gpd*, %struct.qmu_gpd** %8, align 8
  %56 = getelementptr inbounds %struct.qmu_gpd, %struct.qmu_gpd* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qmu_gpd*, %struct.qmu_gpd** %8, align 8
  %59 = getelementptr inbounds %struct.qmu_gpd, %struct.qmu_gpd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qmu_gpd*, %struct.qmu_gpd** %8, align 8
  %62 = getelementptr inbounds %struct.qmu_gpd, %struct.qmu_gpd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qmu_gpd*, %struct.qmu_gpd** %8, align 8
  %65 = getelementptr inbounds %struct.qmu_gpd, %struct.qmu_gpd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %53, i64* %9, %struct.qmu_gpd* %54, i32 %57, i32 %60, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %44
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  %71 = load %struct.qmu_gpd*, %struct.qmu_gpd** %8, align 8
  %72 = getelementptr inbounds %struct.qmu_gpd, %struct.qmu_gpd* %71, i32 1
  store %struct.qmu_gpd* %72, %struct.qmu_gpd** %8, align 8
  br label %40

73:                                               ; preds = %40
  br label %74

74:                                               ; preds = %73, %36
  %75 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %76 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %75, i32 0, i32 0
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i64*, %struct.qmu_gpd*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
