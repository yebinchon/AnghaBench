; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_convert_response_rng.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype6.c_convert_response_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcrypt_queue = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ap_message = type { %struct.type86x_reply* }
%struct.type86x_reply = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Cryptographic device %02x.%04x failed and was set offline\0A\00", align 1
@DBF_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"device=%02x.%04x rtype=0x%02x => online=0 rc=EAGAIN\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zcrypt_queue*, %struct.ap_message*, i8*)* @convert_response_rng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_response_rng(%struct.zcrypt_queue* %0, %struct.ap_message* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zcrypt_queue*, align 8
  %6 = alloca %struct.ap_message*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.type86x_reply*, align 8
  store %struct.zcrypt_queue* %0, %struct.zcrypt_queue** %5, align 8
  store %struct.ap_message* %1, %struct.ap_message** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %10 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %9, i32 0, i32 0
  %11 = load %struct.type86x_reply*, %struct.type86x_reply** %10, align 8
  store %struct.type86x_reply* %11, %struct.type86x_reply** %8, align 8
  %12 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %13 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %40 [
    i32 130, label %16
    i32 128, label %16
    i32 129, label %19
  ]

16:                                               ; preds = %3, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %76

19:                                               ; preds = %3
  %20 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %21 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %76

28:                                               ; preds = %19
  %29 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %30 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %36 = load %struct.ap_message*, %struct.ap_message** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @convert_type86_rng(%struct.zcrypt_queue* %35, %struct.ap_message* %36, i8* %37)
  store i32 %38, i32* %4, align 4
  br label %76

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %3, %39
  %41 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %42 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  %43 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %44 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @AP_QID_CARD(i32 %47)
  %49 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %50 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @AP_QID_QUEUE(i32 %53)
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %54)
  %56 = load i32, i32* @DBF_ERR, align 4
  %57 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %58 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @AP_QID_CARD(i32 %61)
  %63 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %5, align 8
  %64 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @AP_QID_QUEUE(i32 %67)
  %69 = load %struct.type86x_reply*, %struct.type86x_reply** %8, align 8
  %70 = getelementptr inbounds %struct.type86x_reply, %struct.type86x_reply* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ZCRYPT_DBF(i32 %56, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %68, i32 %72)
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %40, %34, %25, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @convert_type86_rng(%struct.zcrypt_queue*, %struct.ap_message*, i8*) #1

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
