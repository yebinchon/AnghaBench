; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_sdio_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c_gb_sdio_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_sdio_host = type { i32, i32 }
%struct.gb_sdio_set_ios_request = type { i32 }

@GB_SDIO_TYPE_SET_IOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_sdio_host*, %struct.gb_sdio_set_ios_request*)* @gb_sdio_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_sdio_set_ios(%struct.gb_sdio_host* %0, %struct.gb_sdio_set_ios_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_sdio_host*, align 8
  %5 = alloca %struct.gb_sdio_set_ios_request*, align 8
  %6 = alloca i32, align 4
  store %struct.gb_sdio_host* %0, %struct.gb_sdio_host** %4, align 8
  store %struct.gb_sdio_set_ios_request* %1, %struct.gb_sdio_set_ios_request** %5, align 8
  %7 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %8 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @gbphy_runtime_get_sync(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %17 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GB_SDIO_TYPE_SET_IOS, align 4
  %20 = load %struct.gb_sdio_set_ios_request*, %struct.gb_sdio_set_ios_request** %5, align 8
  %21 = call i32 @gb_operation_sync(i32 %18, i32 %19, %struct.gb_sdio_set_ios_request* %20, i32 4, i32* null, i32 0)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.gb_sdio_host*, %struct.gb_sdio_host** %4, align 8
  %23 = getelementptr inbounds %struct.gb_sdio_host, %struct.gb_sdio_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gbphy_runtime_put_autosuspend(i32 %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %15, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @gbphy_runtime_get_sync(i32) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_sdio_set_ios_request*, i32, i32*, i32) #1

declare dso_local i32 @gbphy_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
