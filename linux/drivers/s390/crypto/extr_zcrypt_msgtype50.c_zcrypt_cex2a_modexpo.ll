; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype50.c_zcrypt_cex2a_modexpo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype50.c_zcrypt_cex2a_modexpo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.zcrypt_queue = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ica_rsa_modexpo = type { i32, i32 }
%struct.ap_message = type { i32, i8*, %struct.completion*, i64, i32 }
%struct.completion = type { i32 }

@ZCRYPT_CEX2A = common dso_local global i64 0, align 8
@MSGTYPE50_CRB2_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MSGTYPE50_CRB3_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@zcrypt_cex2a_receive = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@zcrypt_step = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.zcrypt_queue*, %struct.ica_rsa_modexpo*)* @zcrypt_cex2a_modexpo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zcrypt_cex2a_modexpo(%struct.zcrypt_queue* %0, %struct.ica_rsa_modexpo* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.zcrypt_queue*, align 8
  %5 = alloca %struct.ica_rsa_modexpo*, align 8
  %6 = alloca %struct.ap_message, align 8
  %7 = alloca %struct.completion, align 4
  %8 = alloca i32, align 4
  store %struct.zcrypt_queue* %0, %struct.zcrypt_queue** %4, align 8
  store %struct.ica_rsa_modexpo* %1, %struct.ica_rsa_modexpo** %5, align 8
  %9 = call i32 @ap_init_message(%struct.ap_message* %6)
  %10 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %4, align 8
  %11 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZCRYPT_CEX2A, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @MSGTYPE50_CRB2_MAX_MSG_SIZE, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmalloc(i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @MSGTYPE50_CRB3_MAX_MSG_SIZE, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @ENOMEM, align 8
  %33 = sub nsw i64 0, %32
  store i64 %33, i64* %3, align 8
  br label %87

34:                                               ; preds = %27
  %35 = load i32, i32* @zcrypt_cex2a_receive, align 4
  %36 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 4
  store i32 %35, i32* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = shl i64 %39, 32
  %41 = call i64 @atomic_inc_return(i32* @zcrypt_step)
  %42 = add i64 %40, %41
  %43 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 3
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 2
  store %struct.completion* %7, %struct.completion** %44, align 8
  %45 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %4, align 8
  %46 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %5, align 8
  %47 = call i32 @ICAMEX_msg_to_type50MEX_msg(%struct.zcrypt_queue* %45, %struct.ap_message* %6, %struct.ica_rsa_modexpo* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %81

51:                                               ; preds = %34
  %52 = call i32 @init_completion(%struct.completion* %7)
  %53 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %4, align 8
  %54 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ap_queue_message(i32 %55, %struct.ap_message* %6)
  %57 = call i32 @wait_for_completion_interruptible(%struct.completion* %7)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %4, align 8
  %67 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %5, align 8
  %68 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ica_rsa_modexpo*, %struct.ica_rsa_modexpo** %5, align 8
  %71 = getelementptr inbounds %struct.ica_rsa_modexpo, %struct.ica_rsa_modexpo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @convert_response(%struct.zcrypt_queue* %66, %struct.ap_message* %6, i32 %69, i32 %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %65, %60
  br label %80

75:                                               ; preds = %51
  %76 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %4, align 8
  %77 = getelementptr inbounds %struct.zcrypt_queue, %struct.zcrypt_queue* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ap_cancel_message(i32 %78, %struct.ap_message* %6)
  br label %80

80:                                               ; preds = %75, %74
  br label %81

81:                                               ; preds = %80, %50
  %82 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %6, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @kfree(i8* %83)
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %81, %31
  %88 = load i64, i64* %3, align 8
  ret i64 %88
}

declare dso_local i32 @ap_init_message(%struct.ap_message*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @ICAMEX_msg_to_type50MEX_msg(%struct.zcrypt_queue*, %struct.ap_message*, %struct.ica_rsa_modexpo*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @ap_queue_message(i32, %struct.ap_message*) #1

declare dso_local i32 @wait_for_completion_interruptible(%struct.completion*) #1

declare dso_local i32 @convert_response(%struct.zcrypt_queue*, %struct.ap_message*, i32, i32) #1

declare dso_local i32 @ap_cancel_message(i32, %struct.ap_message*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
