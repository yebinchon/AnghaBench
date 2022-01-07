; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_zcrypt_msgtype6_send_cprb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_zcrypt_msgtype6_send_cprb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_queue = type { i32 }
%struct.ica_xcRB = type { i32 }
%struct.ap_message = type { i32, i64 }
%struct.response_type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.zcrypt_queue*, %struct.ica_xcRB*, %struct.ap_message*)* @zcrypt_msgtype6_send_cprb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zcrypt_msgtype6_send_cprb(%struct.zcrypt_queue* %0, %struct.ica_xcRB* %1, %struct.ap_message* %2) #0 {
  %4 = alloca %struct.zcrypt_queue*, align 8
  %5 = alloca %struct.ica_xcRB*, align 8
  %6 = alloca %struct.ap_message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.response_type*, align 8
  store %struct.zcrypt_queue* %0, %struct.zcrypt_queue** %4, align 8
  store %struct.ica_xcRB* %1, %struct.ica_xcRB** %5, align 8
  store %struct.ap_message* %2, %struct.ap_message** %6, align 8
  %9 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %10 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.response_type*
  store %struct.response_type* %12, %struct.response_type** %8, align 8
  %13 = load %struct.response_type*, %struct.response_type** %8, align 8
  %14 = getelementptr inbounds %struct.response_type, %struct.response_type* %13, i32 0, i32 0
  %15 = call i32 @init_completion(i32* %14)
  %16 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %4, align 8
  %17 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %20 = call i32 @ap_queue_message(i32 %18, %struct.ap_message* %19)
  %21 = load %struct.response_type*, %struct.response_type** %8, align 8
  %22 = getelementptr inbounds %struct.response_type, %struct.response_type* %21, i32 0, i32 0
  %23 = call i32 @wait_for_completion_interruptible(i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %3
  %27 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %28 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %4, align 8
  %34 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %35 = load %struct.ica_xcRB*, %struct.ica_xcRB** %5, align 8
  %36 = call i32 @convert_response_xcrb(%struct.zcrypt_queue* %33, %struct.ap_message* %34, %struct.ica_xcRB* %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %26
  br label %44

38:                                               ; preds = %3
  %39 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %4, align 8
  %40 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %43 = call i32 @ap_cancel_message(i32 %41, %struct.ap_message* %42)
  br label %44

44:                                               ; preds = %38, %37
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  ret i64 %46
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ap_queue_message(i32, %struct.ap_message*) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @convert_response_xcrb(%struct.zcrypt_queue*, %struct.ap_message*, %struct.ica_xcRB*) #1

declare dso_local i32 @ap_cancel_message(i32, %struct.ap_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
