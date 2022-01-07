; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_send_stop_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c_send_stop_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.hostif_stop_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.ks_sdio_card = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HIF_STOP_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*)* @send_stop_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_stop_request(%struct.sdio_func* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca %struct.hostif_stop_request*, align 8
  %5 = alloca %struct.ks_sdio_card*, align 8
  %6 = alloca i64, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %3, align 8
  %7 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %8 = call %struct.ks_sdio_card* @sdio_get_drvdata(%struct.sdio_func* %7)
  store %struct.ks_sdio_card* %8, %struct.ks_sdio_card** %5, align 8
  %9 = call i32 @hif_align_size(i32 16)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.hostif_stop_request* @kzalloc(i32 %9, i32 %10)
  store %struct.hostif_stop_request* %11, %struct.hostif_stop_request** %4, align 8
  %12 = load %struct.hostif_stop_request*, %struct.hostif_stop_request** %4, align 8
  %13 = icmp ne %struct.hostif_stop_request* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %41

17:                                               ; preds = %1
  store i64 8, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i8* @cpu_to_le16(i64 %18)
  %20 = load %struct.hostif_stop_request*, %struct.hostif_stop_request** %4, align 8
  %21 = getelementptr inbounds %struct.hostif_stop_request, %struct.hostif_stop_request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load i64, i64* @HIF_STOP_REQ, align 8
  %24 = call i8* @cpu_to_le16(i64 %23)
  %25 = load %struct.hostif_stop_request*, %struct.hostif_stop_request** %4, align 8
  %26 = getelementptr inbounds %struct.hostif_stop_request, %struct.hostif_stop_request* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %29 = call i32 @sdio_claim_host(%struct.sdio_func* %28)
  %30 = load %struct.ks_sdio_card*, %struct.ks_sdio_card** %5, align 8
  %31 = getelementptr inbounds %struct.ks_sdio_card, %struct.ks_sdio_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hostif_stop_request*, %struct.hostif_stop_request** %4, align 8
  %34 = bitcast %struct.hostif_stop_request* %33 to i32*
  %35 = call i32 @hif_align_size(i32 16)
  %36 = call i32 @write_to_device(i32 %32, i32* %34, i32 %35)
  %37 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %38 = call i32 @sdio_release_host(%struct.sdio_func* %37)
  %39 = load %struct.hostif_stop_request*, %struct.hostif_stop_request** %4, align 8
  %40 = call i32 @kfree(%struct.hostif_stop_request* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %17, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.ks_sdio_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local %struct.hostif_stop_request* @kzalloc(i32, i32) #1

declare dso_local i32 @hif_align_size(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @write_to_device(i32, i32*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @kfree(%struct.hostif_stop_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
