; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_sdio_init_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_ks7010_sdio_init_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.ks_wlan_private = type { i32 }

@INT_PENDING_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"write INT_PENDING_REG\0A\00", align 1
@INT_GCR_B = common dso_local global i32 0, align 4
@INT_READ_STATUS = common dso_local global i32 0, align 4
@INT_WRITE_STATUS = common dso_local global i32 0, align 4
@INT_ENABLE_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"write INT_ENABLE_REG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*, %struct.ks_wlan_private*)* @ks7010_sdio_init_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks7010_sdio_init_irqs(%struct.sdio_func* %0, %struct.ks_wlan_private* %1) #0 {
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca %struct.ks_wlan_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %3, align 8
  store %struct.ks_wlan_private* %1, %struct.ks_wlan_private** %4, align 8
  %7 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %8 = call i32 @sdio_claim_host(%struct.sdio_func* %7)
  %9 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %10 = load i32, i32* @INT_PENDING_REG, align 4
  %11 = call i32 @ks7010_sdio_writeb(%struct.ks_wlan_private* %9, i32 %10, i32 255)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %13 = call i32 @sdio_release_host(%struct.sdio_func* %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %18 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netdev_err(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @INT_GCR_B, align 4
  %23 = load i32, i32* @INT_READ_STATUS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @INT_WRITE_STATUS, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %28 = call i32 @sdio_claim_host(%struct.sdio_func* %27)
  %29 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %30 = load i32, i32* @INT_ENABLE_REG, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ks7010_sdio_writeb(%struct.ks_wlan_private* %29, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %34 = call i32 @sdio_release_host(%struct.sdio_func* %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %21
  %38 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %39 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netdev_err(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %21
  ret void
}

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @ks7010_sdio_writeb(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
