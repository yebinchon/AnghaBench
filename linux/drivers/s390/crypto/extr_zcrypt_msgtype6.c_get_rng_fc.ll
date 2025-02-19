; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_get_rng_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_get_rng_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ap_message = type { i32, i64, i32, i32 }
%struct.response_type = type { i32 }

@CEXXC_RESPONSE_TYPE_XCRB = common dso_local global i32 0, align 4
@MSGTYPE06_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zcrypt_msgtype6_receive = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@zcrypt_step = common dso_local global i32 0, align 4
@ZCRYPT_RNG_BUFFER_SIZE = common dso_local global i32 0, align 4
@HWRNG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_rng_fc(%struct.ap_message* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ap_message*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.response_type, align 4
  store %struct.ap_message* %0, %struct.ap_message** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = getelementptr inbounds %struct.response_type, %struct.response_type* %8, i32 0, i32 0
  %10 = load i32, i32* @CEXXC_RESPONSE_TYPE_XCRB, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @MSGTYPE06_MAX_MSG_SIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @kmalloc(i32 %11, i32 %12)
  %14 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %15 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %17 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %53

23:                                               ; preds = %3
  %24 = load i32, i32* @zcrypt_msgtype6_receive, align 4
  %25 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %26 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = shl i64 %29, 32
  %31 = call i64 @atomic_inc_return(i32* @zcrypt_step)
  %32 = add i64 %30, %31
  %33 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %34 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @kmemdup(%struct.response_type* %8, i32 4, i32 %35)
  %37 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %38 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %40 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %23
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %53

46:                                               ; preds = %23
  %47 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %48 = load i32, i32* @ZCRYPT_RNG_BUFFER_SIZE, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @rng_type6CPRB_msgX(%struct.ap_message* %47, i32 %48, i32* %49)
  %51 = load i32, i32* @HWRNG, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %43, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @kmemdup(%struct.response_type*, i32, i32) #1

declare dso_local i32 @rng_type6CPRB_msgX(%struct.ap_message*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
