; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex4.c_zcrypt_cex4_queue_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex4.c_zcrypt_cex4_queue_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ap_queue = type { %struct.TYPE_3__*, %struct.zcrypt_queue* }
%struct.TYPE_3__ = type { i32 }
%struct.zcrypt_queue = type { i32 }

@AP_FUNC_COPRO = common dso_local global i32 0, align 4
@cca_queue_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ap_device*)* @zcrypt_cex4_queue_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zcrypt_cex4_queue_remove(%struct.ap_device* %0) #0 {
  %2 = alloca %struct.ap_device*, align 8
  %3 = alloca %struct.ap_queue*, align 8
  %4 = alloca %struct.zcrypt_queue*, align 8
  store %struct.ap_device* %0, %struct.ap_device** %2, align 8
  %5 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %6 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %5, i32 0, i32 0
  %7 = call %struct.ap_queue* @to_ap_queue(%struct.TYPE_4__* %6)
  store %struct.ap_queue* %7, %struct.ap_queue** %3, align 8
  %8 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %9 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %8, i32 0, i32 1
  %10 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %9, align 8
  store %struct.zcrypt_queue* %10, %struct.zcrypt_queue** %4, align 8
  %11 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %12 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* @AP_FUNC_COPRO, align 4
  %16 = call i64 @ap_test_bit(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %20 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @sysfs_remove_group(i32* %21, i32* @cca_queue_attr_group)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %4, align 8
  %25 = icmp ne %struct.zcrypt_queue* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.zcrypt_queue*, %struct.zcrypt_queue** %4, align 8
  %28 = call i32 @zcrypt_queue_unregister(%struct.zcrypt_queue* %27)
  br label %29

29:                                               ; preds = %26, %23
  ret void
}

declare dso_local %struct.ap_queue* @to_ap_queue(%struct.TYPE_4__*) #1

declare dso_local i64 @ap_test_bit(i32*, i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @zcrypt_queue_unregister(%struct.zcrypt_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
