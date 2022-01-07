; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_get_cprb_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_get_cprb_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ica_xcRB = type { i32 }
%struct.ap_message = type { i32, i64, i32, i32 }
%struct.response_type = type { i32 }

@CEXXC_RESPONSE_TYPE_XCRB = common dso_local global i32 0, align 4
@MSGTYPE06_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zcrypt_msgtype6_receive = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@zcrypt_step = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_cprb_fc(%struct.ica_xcRB* %0, %struct.ap_message* %1, i32* %2, i16** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ica_xcRB*, align 8
  %7 = alloca %struct.ap_message*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i16**, align 8
  %10 = alloca %struct.response_type, align 4
  store %struct.ica_xcRB* %0, %struct.ica_xcRB** %6, align 8
  store %struct.ap_message* %1, %struct.ap_message** %7, align 8
  store i32* %2, i32** %8, align 8
  store i16** %3, i16*** %9, align 8
  %11 = getelementptr inbounds %struct.response_type, %struct.response_type* %10, i32 0, i32 0
  %12 = load i32, i32* @CEXXC_RESPONSE_TYPE_XCRB, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* @MSGTYPE06_MAX_MSG_SIZE, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @kmalloc(i32 %13, i32 %14)
  %16 = load %struct.ap_message*, %struct.ap_message** %7, align 8
  %17 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ap_message*, %struct.ap_message** %7, align 8
  %19 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %54

25:                                               ; preds = %4
  %26 = load i32, i32* @zcrypt_msgtype6_receive, align 4
  %27 = load %struct.ap_message*, %struct.ap_message** %7, align 8
  %28 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = shl i64 %31, 32
  %33 = call i64 @atomic_inc_return(i32* @zcrypt_step)
  %34 = add i64 %32, %33
  %35 = load %struct.ap_message*, %struct.ap_message** %7, align 8
  %36 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @kmemdup(%struct.response_type* %10, i32 4, i32 %37)
  %39 = load %struct.ap_message*, %struct.ap_message** %7, align 8
  %40 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ap_message*, %struct.ap_message** %7, align 8
  %42 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %25
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %54

48:                                               ; preds = %25
  %49 = load %struct.ap_message*, %struct.ap_message** %7, align 8
  %50 = load %struct.ica_xcRB*, %struct.ica_xcRB** %6, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i16**, i16*** %9, align 8
  %53 = call i32 @XCRB_msg_to_type6CPRB_msgX(%struct.ap_message* %49, %struct.ica_xcRB* %50, i32* %51, i16** %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %48, %45, %22
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @kmemdup(%struct.response_type*, i32, i32) #1

declare dso_local i32 @XCRB_msg_to_type6CPRB_msgX(%struct.ap_message*, %struct.ica_xcRB*, i32*, i16**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
