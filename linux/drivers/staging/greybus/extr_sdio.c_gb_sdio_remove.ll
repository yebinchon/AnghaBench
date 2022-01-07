; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_sdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_sdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_device = type { i32 }
%struct.gb_sdio_host = type { i32, i32, i32, %struct.mmc_host*, %struct.gb_connection* }
%struct.mmc_host = type { i32 }
%struct.gb_connection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbphy_device*)* @gb_sdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_sdio_remove(%struct.gbphy_device* %0) #0 {
  %2 = alloca %struct.gbphy_device*, align 8
  %3 = alloca %struct.gb_sdio_host*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.gbphy_device* %0, %struct.gbphy_device** %2, align 8
  %7 = load %struct.gbphy_device*, %struct.gbphy_device** %2, align 8
  %8 = call %struct.gb_sdio_host* @gb_gbphy_get_data(%struct.gbphy_device* %7)
  store %struct.gb_sdio_host* %8, %struct.gb_sdio_host** %3, align 8
  %9 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %10 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %9, i32 0, i32 4
  %11 = load %struct.gb_connection*, %struct.gb_connection** %10, align 8
  store %struct.gb_connection* %11, %struct.gb_connection** %4, align 8
  %12 = load %struct.gbphy_device*, %struct.gbphy_device** %2, align 8
  %13 = call i32 @gbphy_runtime_get_sync(%struct.gbphy_device* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.gbphy_device*, %struct.gbphy_device** %2, align 8
  %18 = call i32 @gbphy_runtime_get_noresume(%struct.gbphy_device* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %21 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %24 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %26 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %25, i32 0, i32 3
  %27 = load %struct.mmc_host*, %struct.mmc_host** %26, align 8
  store %struct.mmc_host* %27, %struct.mmc_host** %5, align 8
  %28 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %29 = call i32 @gb_connection_set_data(%struct.gb_connection* %28, i32* null)
  %30 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %31 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %30, i32 0, i32 2
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %34 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @flush_workqueue(i32 %35)
  %37 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %3, align 8
  %38 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @destroy_workqueue(i32 %39)
  %41 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %42 = call i32 @gb_connection_disable_rx(%struct.gb_connection* %41)
  %43 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %44 = call i32 @mmc_remove_host(%struct.mmc_host* %43)
  %45 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %46 = call i32 @gb_connection_disable(%struct.gb_connection* %45)
  %47 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %48 = call i32 @gb_connection_destroy(%struct.gb_connection* %47)
  %49 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %50 = call i32 @mmc_free_host(%struct.mmc_host* %49)
  ret void
}

declare dso_local %struct.gb_sdio_host* @gb_gbphy_get_data(%struct.gbphy_device*) #1

declare dso_local i32 @gbphy_runtime_get_sync(%struct.gbphy_device*) #1

declare dso_local i32 @gbphy_runtime_get_noresume(%struct.gbphy_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @gb_connection_disable_rx(%struct.gb_connection*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
