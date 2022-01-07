; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex2a.c_zcrypt_cex2a_queue_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex2a.c_zcrypt_cex2a_queue_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i32, i32 }
%struct.ap_queue = type { %struct.zcrypt_queue*, i32 }
%struct.zcrypt_queue = type { i32, i32, i32, %struct.ap_queue*, i32 }

@CEX2A_MAX_RESPONSE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEX3A_MAX_RESPONSE_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MSGTYPE50_NAME = common dso_local global i32 0, align 4
@MSGTYPE50_VARIANT_DEFAULT = common dso_local global i32 0, align 4
@CEX2A_CLEANUP_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_device*)* @zcrypt_cex2a_queue_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_cex2a_queue_probe(%struct.ap_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_device*, align 8
  %4 = alloca %struct.ap_queue*, align 8
  %5 = alloca %struct.zcrypt_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.ap_device* %0, %struct.ap_device** %3, align 8
  %7 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %8 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %7, i32 0, i32 1
  %9 = call %struct.ap_queue* @to_ap_queue(i32* %8)
  store %struct.ap_queue* %9, %struct.ap_queue** %4, align 8
  store %struct.zcrypt_queue* null, %struct.zcrypt_queue** %5, align 8
  %10 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %11 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %31 [
    i32 129, label %13
    i32 128, label %22
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @CEX2A_MAX_RESPONSE_SIZE, align 4
  %15 = call %struct.zcrypt_queue* @zcrypt_queue_alloc(i32 %14)
  store %struct.zcrypt_queue* %15, %struct.zcrypt_queue** %5, align 8
  %16 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %17 = icmp ne %struct.zcrypt_queue* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %72

21:                                               ; preds = %13
  br label %31

22:                                               ; preds = %1
  %23 = load i32, i32* @CEX3A_MAX_RESPONSE_SIZE, align 4
  %24 = call %struct.zcrypt_queue* @zcrypt_queue_alloc(i32 %23)
  store %struct.zcrypt_queue* %24, %struct.zcrypt_queue** %5, align 8
  %25 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %26 = icmp ne %struct.zcrypt_queue* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %72

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %1, %30, %21
  %32 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %33 = icmp ne %struct.zcrypt_queue* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %72

37:                                               ; preds = %31
  %38 = load i32, i32* @MSGTYPE50_NAME, align 4
  %39 = load i32, i32* @MSGTYPE50_VARIANT_DEFAULT, align 4
  %40 = call i32 @zcrypt_msgtype(i32 %38, i32 %39)
  %41 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %42 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %44 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %45 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %44, i32 0, i32 3
  store %struct.ap_queue* %43, %struct.ap_queue** %45, align 8
  %46 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %47 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %49 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %48, i32 0, i32 2
  %50 = call i32 @atomic_set(i32* %49, i32 0)
  %51 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %52 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %53 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %52, i32 0, i32 1
  %54 = call i32 @ap_queue_init_reply(%struct.ap_queue* %51, i32* %53)
  %55 = load i32, i32* @CEX2A_CLEANUP_TIME, align 4
  %56 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %57 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %59 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %60 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %59, i32 0, i32 0
  store %struct.zcrypt_queue* %58, %struct.zcrypt_queue** %60, align 8
  %61 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %62 = call i32 @zcrypt_queue_register(%struct.zcrypt_queue* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %37
  %66 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %67 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %66, i32 0, i32 0
  store %struct.zcrypt_queue* null, %struct.zcrypt_queue** %67, align 8
  %68 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %69 = call i32 @zcrypt_queue_free(%struct.zcrypt_queue* %68)
  br label %70

70:                                               ; preds = %65, %37
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %34, %27, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.ap_queue* @to_ap_queue(i32*) #1

declare dso_local %struct.zcrypt_queue* @zcrypt_queue_alloc(i32) #1

declare dso_local i32 @zcrypt_msgtype(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ap_queue_init_reply(%struct.ap_queue*, i32*) #1

declare dso_local i32 @zcrypt_queue_register(%struct.zcrypt_queue*) #1

declare dso_local i32 @zcrypt_queue_free(%struct.zcrypt_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
