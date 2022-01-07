; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex2c.c_zcrypt_cex2c_queue_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex2c.c_zcrypt_cex2c_queue_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i32 }
%struct.ap_queue = type { %struct.zcrypt_queue*, i32 }
%struct.zcrypt_queue = type { i32, i32, i8*, i32, %struct.ap_queue* }

@CEX2C_MAX_XCRB_MESSAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MSGTYPE06_NAME = common dso_local global i32 0, align 4
@MSGTYPE06_VARIANT_DEFAULT = common dso_local global i32 0, align 4
@MSGTYPE06_VARIANT_NORNG = common dso_local global i32 0, align 4
@CEX2C_CLEANUP_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_device*)* @zcrypt_cex2c_queue_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_cex2c_queue_probe(%struct.ap_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_device*, align 8
  %4 = alloca %struct.ap_queue*, align 8
  %5 = alloca %struct.zcrypt_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.ap_device* %0, %struct.ap_device** %3, align 8
  %7 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %8 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %7, i32 0, i32 0
  %9 = call %struct.ap_queue* @to_ap_queue(i32* %8)
  store %struct.ap_queue* %9, %struct.ap_queue** %4, align 8
  %10 = load i32, i32* @CEX2C_MAX_XCRB_MESSAGE_SIZE, align 4
  %11 = call %struct.zcrypt_queue* @zcrypt_queue_alloc(i32 %10)
  store %struct.zcrypt_queue* %11, %struct.zcrypt_queue** %5, align 8
  %12 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %13 = icmp ne %struct.zcrypt_queue* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %71

17:                                               ; preds = %1
  %18 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %19 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %20 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %19, i32 0, i32 4
  store %struct.ap_queue* %18, %struct.ap_queue** %20, align 8
  %21 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %22 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %24 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %23, i32 0, i32 3
  %25 = call i32 @atomic_set(i32* %24, i32 0)
  %26 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %27 = call i32 @zcrypt_cex2c_rng_supported(%struct.ap_queue* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %32 = call i32 @zcrypt_queue_free(%struct.zcrypt_queue* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %71

34:                                               ; preds = %17
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* @MSGTYPE06_NAME, align 4
  %39 = load i32, i32* @MSGTYPE06_VARIANT_DEFAULT, align 4
  %40 = call i8* @zcrypt_msgtype(i32 %38, i32 %39)
  %41 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %42 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  br label %49

43:                                               ; preds = %34
  %44 = load i32, i32* @MSGTYPE06_NAME, align 4
  %45 = load i32, i32* @MSGTYPE06_VARIANT_NORNG, align 4
  %46 = call i8* @zcrypt_msgtype(i32 %44, i32 %45)
  %47 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %48 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %51 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %52 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %51, i32 0, i32 1
  %53 = call i32 @ap_queue_init_reply(%struct.ap_queue* %50, i32* %52)
  %54 = load i32, i32* @CEX2C_CLEANUP_TIME, align 4
  %55 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %56 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %58 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %59 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %58, i32 0, i32 0
  store %struct.zcrypt_queue* %57, %struct.zcrypt_queue** %59, align 8
  %60 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %61 = call i32 @zcrypt_queue_register(%struct.zcrypt_queue* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load %struct.ap_queue*, %struct.ap_queue** %4, align 8
  %66 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %65, i32 0, i32 0
  store %struct.zcrypt_queue* null, %struct.zcrypt_queue** %66, align 8
  %67 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %68 = call i32 @zcrypt_queue_free(%struct.zcrypt_queue* %67)
  br label %69

69:                                               ; preds = %64, %49
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %30, %14
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.ap_queue* @to_ap_queue(i32*) #1

declare dso_local %struct.zcrypt_queue* @zcrypt_queue_alloc(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @zcrypt_cex2c_rng_supported(%struct.ap_queue*) #1

declare dso_local i32 @zcrypt_queue_free(%struct.zcrypt_queue*) #1

declare dso_local i8* @zcrypt_msgtype(i32, i32) #1

declare dso_local i32 @ap_queue_init_reply(%struct.ap_queue*, i32*) #1

declare dso_local i32 @zcrypt_queue_register(%struct.zcrypt_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
