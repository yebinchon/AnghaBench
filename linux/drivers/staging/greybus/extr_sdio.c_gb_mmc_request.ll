; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_mmc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_command* }
%struct.mmc_command = type { i64, i32 }
%struct.gb_sdio_host = type { i32, i32, %struct.mmc_request*, i32, i32, i32, i64, i32 }

@MMC_STOP_TRANSMISSION = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @gb_mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_mmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.gb_sdio_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.gb_sdio_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.gb_sdio_host* %8, %struct.gb_sdio_host** %5, align 8
  %9 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 0
  %11 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  store %struct.mmc_command* %11, %struct.mmc_command** %6, align 8
  %12 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %13 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MMC_STOP_TRANSMISSION, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %19 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %18, i32 0, i32 7
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %22 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %24 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %23, i32 0, i32 7
  %25 = call i32 @spin_unlock(i32* %24)
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %28 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %31 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %30, i32 0, i32 2
  %32 = load %struct.mmc_request*, %struct.mmc_request** %31, align 8
  %33 = call i32 @WARN_ON(%struct.mmc_request* %32)
  %34 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %35 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %36 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %35, i32 0, i32 2
  store %struct.mmc_request* %34, %struct.mmc_request** %36, align 8
  %37 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %38 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %26
  %42 = load i32, i32* @ESHUTDOWN, align 4
  %43 = sub nsw i32 0, %42
  %44 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %44, i32 0, i32 0
  %46 = load %struct.mmc_command*, %struct.mmc_command** %45, align 8
  %47 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 8
  br label %70

48:                                               ; preds = %26
  %49 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %50 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEDIUM, align 4
  %55 = sub nsw i32 0, %54
  %56 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %56, i32 0, i32 0
  %58 = load %struct.mmc_command*, %struct.mmc_command** %57, align 8
  %59 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 8
  br label %70

60:                                               ; preds = %48
  %61 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %62 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %65 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %64, i32 0, i32 3
  %66 = call i32 @queue_work(i32 %63, i32* %65)
  %67 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %68 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  br label %79

70:                                               ; preds = %53, %41
  %71 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %72 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %71, i32 0, i32 2
  store %struct.mmc_request* null, %struct.mmc_request** %72, align 8
  %73 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %5, align 8
  %74 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %77 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %78 = call i32 @mmc_request_done(%struct.mmc_host* %76, %struct.mmc_request* %77)
  br label %79

79:                                               ; preds = %70, %60
  ret void
}

declare dso_local %struct.gb_sdio_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(%struct.mmc_request*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
