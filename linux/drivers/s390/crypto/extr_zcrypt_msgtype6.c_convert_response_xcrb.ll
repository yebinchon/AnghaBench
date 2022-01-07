; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_convert_response_xcrb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_convert_response_xcrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_queue = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ap_message = type { %struct.type86x_reply* }
%struct.type86x_reply = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ica_xcRB = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Cryptographic device %02x.%04x failed and was set offline\0A\00", align 1
@DBF_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"device=%02x.%04x rtype=0x%02x => online=0 rc=EAGAIN\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zcrypt_queue*, %struct.ap_message*, %struct.ica_xcRB*)* @convert_response_xcrb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_response_xcrb(%struct.zcrypt_queue* %0, %struct.ap_message* %1, %struct.ica_xcRB* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zcrypt_queue*, align 8
  %6 = alloca %struct.ap_message*, align 8
  %7 = alloca %struct.ica_xcRB*, align 8
  %8 = alloca %struct.type86x_reply*, align 8
  store %struct.zcrypt_queue* %0, %struct.zcrypt_queue** %5, align 8
  store %struct.ap_message* %1, %struct.ap_message** %6, align 8
  store %struct.ica_xcRB* %2, %struct.ica_xcRB** %7, align 8
  %9 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %10 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %9, i32 0, i32 0
  %11 = load %struct.type86x_reply*, %struct.type86x_reply** %10, align 8
  store %struct.type86x_reply* %11, %struct.type86x_reply** %8, align 8
  %12 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %13 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %51 [
    i32 130, label %16
    i32 128, label %16
    i32 129, label %22
  ]

16:                                               ; preds = %3, %3
  %17 = load %struct.ica_xcRB*, %struct.ica_xcRB** %7, align 8
  %18 = getelementptr inbounds %struct.ica_xcRB, %struct.ica_xcRB* %17, i32 0, i32 0
  store i32 525389, i32* %18, align 4
  %19 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %20 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %21 = call i32 @convert_error(%struct.zcrypt_queue* %19, %struct.ap_message* %20)
  store i32 %21, i32* %4, align 4
  br label %89

22:                                               ; preds = %3
  %23 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %24 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.ica_xcRB*, %struct.ica_xcRB** %7, align 8
  %30 = getelementptr inbounds %struct.ica_xcRB, %struct.ica_xcRB* %29, i32 0, i32 0
  %31 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %32 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32* %30, i32 %34, i32 4)
  %36 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %37 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %38 = call i32 @convert_error(%struct.zcrypt_queue* %36, %struct.ap_message* %37)
  store i32 %38, i32* %4, align 4
  br label %89

39:                                               ; preds = %22
  %40 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %41 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %47 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %48 = load %struct.ica_xcRB*, %struct.ica_xcRB** %7, align 8
  %49 = call i32 @convert_type86_xcrb(%struct.zcrypt_queue* %46, %struct.ap_message* %47, %struct.ica_xcRB* %48)
  store i32 %49, i32* %4, align 4
  br label %89

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %3, %50
  %52 = load %struct.ica_xcRB*, %struct.ica_xcRB** %7, align 8
  %53 = getelementptr inbounds %struct.ica_xcRB, %struct.ica_xcRB* %52, i32 0, i32 0
  store i32 525389, i32* %53, align 4
  %54 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %55 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %57 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @AP_QID_CARD(i32 %60)
  %62 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %63 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @AP_QID_QUEUE(i32 %66)
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %67)
  %69 = load i32, i32* @DBF_ERR, align 4
  %70 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %71 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @AP_QID_CARD(i32 %74)
  %76 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %77 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @AP_QID_QUEUE(i32 %80)
  %82 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %83 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ZCRYPT_DBF(i32 %69, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %81, i32 %85)
  %87 = load i32, i32* @EAGAIN, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %51, %45, %28, %16
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @convert_error(%struct.zcrypt_queue*, %struct.ap_message*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @convert_type86_xcrb(%struct.zcrypt_queue*, %struct.ap_message*, %struct.ica_xcRB*) #1

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
