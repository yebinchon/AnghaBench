; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_convert_response_ep11_xcrb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_convert_response_ep11_xcrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_queue = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ap_message = type { %struct.type86_ep11_reply* }
%struct.type86_ep11_reply = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ep11_urb = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Cryptographic device %02x.%04x failed and was set offline\0A\00", align 1
@DBF_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"device=%02x.%04x rtype=0x%02x => online=0 rc=EAGAIN\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zcrypt_queue*, %struct.ap_message*, %struct.ep11_urb*)* @convert_response_ep11_xcrb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_response_ep11_xcrb(%struct.zcrypt_queue* %0, %struct.ap_message* %1, %struct.ep11_urb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zcrypt_queue*, align 8
  %6 = alloca %struct.ap_message*, align 8
  %7 = alloca %struct.ep11_urb*, align 8
  %8 = alloca %struct.type86_ep11_reply*, align 8
  store %struct.zcrypt_queue* %0, %struct.zcrypt_queue** %5, align 8
  store %struct.ap_message* %1, %struct.ap_message** %6, align 8
  store %struct.ep11_urb* %2, %struct.ep11_urb** %7, align 8
  %9 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %10 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %9, i32 0, i32 0
  %11 = load %struct.type86_ep11_reply*, %struct.type86_ep11_reply** %10, align 8
  store %struct.type86_ep11_reply* %11, %struct.type86_ep11_reply** %8, align 8
  %12 = load %struct.type86_ep11_reply*, %struct.type86_ep11_reply** %8, align 8
  %13 = getelementptr inbounds %struct.type86_ep11_reply, %struct.type86_ep11_reply* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %42 [
    i32 130, label %16
    i32 128, label %16
    i32 129, label %20
  ]

16:                                               ; preds = %3, %3
  %17 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %18 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %19 = call i32 @convert_error(%struct.zcrypt_queue* %17, %struct.ap_message* %18)
  store i32 %19, i32* %4, align 4
  br label %78

20:                                               ; preds = %3
  %21 = load %struct.type86_ep11_reply*, %struct.type86_ep11_reply** %8, align 8
  %22 = getelementptr inbounds %struct.type86_ep11_reply, %struct.type86_ep11_reply* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %28 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %29 = call i32 @convert_error(%struct.zcrypt_queue* %27, %struct.ap_message* %28)
  store i32 %29, i32* %4, align 4
  br label %78

30:                                               ; preds = %20
  %31 = load %struct.type86_ep11_reply*, %struct.type86_ep11_reply** %8, align 8
  %32 = getelementptr inbounds %struct.type86_ep11_reply, %struct.type86_ep11_reply* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %38 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %39 = load %struct.ep11_urb*, %struct.ep11_urb** %7, align 8
  %40 = call i32 @convert_type86_ep11_xcrb(%struct.zcrypt_queue* %37, %struct.ap_message* %38, %struct.ep11_urb* %39)
  store i32 %40, i32* %4, align 4
  br label %78

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %3, %41
  %43 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %44 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  %45 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %46 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @AP_QID_CARD(i32 %49)
  %51 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %52 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @AP_QID_QUEUE(i32 %55)
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %56)
  %58 = load i32, i32* @DBF_ERR, align 4
  %59 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %60 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @AP_QID_CARD(i32 %63)
  %65 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %66 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @AP_QID_QUEUE(i32 %69)
  %71 = load %struct.type86_ep11_reply*, %struct.type86_ep11_reply** %8, align 8
  %72 = getelementptr inbounds %struct.type86_ep11_reply, %struct.type86_ep11_reply* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ZCRYPT_DBF(i32 %58, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %70, i32 %74)
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %42, %36, %26, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @convert_error(%struct.zcrypt_queue*, %struct.ap_message*) #1

declare dso_local i32 @convert_type86_ep11_xcrb(%struct.zcrypt_queue*, %struct.ap_message*, %struct.ep11_urb*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @AP_QID_CARD(i32) #1

declare dso_local i32 @AP_QID_QUEUE(i32) #1

declare dso_local i32 @ZCRYPT_DBF(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
