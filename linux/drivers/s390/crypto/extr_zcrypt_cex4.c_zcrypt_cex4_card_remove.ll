; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex4.c_zcrypt_cex4_card_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex4.c_zcrypt_cex4_card_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ap_card = type { i32, %struct.zcrypt_card* }
%struct.zcrypt_card = type { i32 }

@AP_FUNC_COPRO = common dso_local global i32 0, align 4
@cca_card_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ap_device*)* @zcrypt_cex4_card_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zcrypt_cex4_card_remove(%struct.ap_device* %0) #0 {
  %2 = alloca %struct.ap_device*, align 8
  %3 = alloca %struct.ap_card*, align 8
  %4 = alloca %struct.zcrypt_card*, align 8
  store %struct.ap_device* %0, %struct.ap_device** %2, align 8
  %5 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %6 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %5, i32 0, i32 0
  %7 = call %struct.ap_card* @to_ap_card(%struct.TYPE_2__* %6)
  store %struct.ap_card* %7, %struct.ap_card** %3, align 8
  %8 = load %struct.ap_card*, %struct.ap_card** %3, align 8
  %9 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %8, i32 0, i32 1
  %10 = load %struct.zcrypt_card*, %struct.zcrypt_card** %9, align 8
  store %struct.zcrypt_card* %10, %struct.zcrypt_card** %4, align 8
  %11 = load %struct.ap_card*, %struct.ap_card** %3, align 8
  %12 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %11, i32 0, i32 0
  %13 = load i32, i32* @AP_FUNC_COPRO, align 4
  %14 = call i64 @ap_test_bit(i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %18 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @sysfs_remove_group(i32* %19, i32* @cca_card_attr_group)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.zcrypt_card*, %struct.zcrypt_card** %4, align 8
  %23 = icmp ne %struct.zcrypt_card* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.zcrypt_card*, %struct.zcrypt_card** %4, align 8
  %26 = call i32 @zcrypt_card_unregister(%struct.zcrypt_card* %25)
  br label %27

27:                                               ; preds = %24, %21
  ret void
}

declare dso_local %struct.ap_card* @to_ap_card(%struct.TYPE_2__*) #1

declare dso_local i64 @ap_test_bit(i32*, i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @zcrypt_card_unregister(%struct.zcrypt_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
