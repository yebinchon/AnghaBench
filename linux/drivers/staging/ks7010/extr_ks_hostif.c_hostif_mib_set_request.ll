; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_mib_set_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_mib_set_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i64 }
%struct.hostif_mib_set_request_t = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@DEVICE_STATE_BOOT = common dso_local global i64 0, align 8
@HIF_MIB_SET_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*, i32, i32, i8*, i64)* @hostif_mib_set_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_mib_set_request(%struct.ks_wlan_private* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.ks_wlan_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.hostif_mib_set_request_t*, align 8
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %13 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DEVICE_STATE_BOOT, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %53

18:                                               ; preds = %5
  %19 = load i32, i32* @HIF_MIB_SET_REQ, align 4
  %20 = call %struct.hostif_mib_set_request_t* @hostif_generic_request(i32 32, i32 %19)
  store %struct.hostif_mib_set_request_t* %20, %struct.hostif_mib_set_request_t** %11, align 8
  %21 = load %struct.hostif_mib_set_request_t*, %struct.hostif_mib_set_request_t** %11, align 8
  %22 = icmp ne %struct.hostif_mib_set_request_t* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %53

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load %struct.hostif_mib_set_request_t*, %struct.hostif_mib_set_request_t** %11, align 8
  %28 = getelementptr inbounds %struct.hostif_mib_set_request_t, %struct.hostif_mib_set_request_t* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* %10, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.hostif_mib_set_request_t*, %struct.hostif_mib_set_request_t** %11, align 8
  %33 = getelementptr inbounds %struct.hostif_mib_set_request_t, %struct.hostif_mib_set_request_t* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.hostif_mib_set_request_t*, %struct.hostif_mib_set_request_t** %11, align 8
  %38 = getelementptr inbounds %struct.hostif_mib_set_request_t, %struct.hostif_mib_set_request_t* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.hostif_mib_set_request_t*, %struct.hostif_mib_set_request_t** %11, align 8
  %41 = getelementptr inbounds %struct.hostif_mib_set_request_t, %struct.hostif_mib_set_request_t* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @memcpy(i32* %42, i8* %43, i64 %44)
  %46 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %6, align 8
  %47 = load %struct.hostif_mib_set_request_t*, %struct.hostif_mib_set_request_t** %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add i64 32, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @hif_align_size(i32 %50)
  %52 = call i32 @send_request_to_device(%struct.ks_wlan_private* %46, %struct.hostif_mib_set_request_t* %47, i32 %51)
  br label %53

53:                                               ; preds = %24, %23, %17
  ret void
}

declare dso_local %struct.hostif_mib_set_request_t* @hostif_generic_request(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @send_request_to_device(%struct.ks_wlan_private*, %struct.hostif_mib_set_request_t*, i32) #1

declare dso_local i32 @hif_align_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
