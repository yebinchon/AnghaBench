; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_nci_unregister_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_nci_unregister_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_private = type { %struct.TYPE_4__, %struct.nci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.nci_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfcmrvl_nci_unregister_dev(%struct.nfcmrvl_private* %0) #0 {
  %2 = alloca %struct.nfcmrvl_private*, align 8
  %3 = alloca %struct.nci_dev*, align 8
  store %struct.nfcmrvl_private* %0, %struct.nfcmrvl_private** %2, align 8
  %4 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %2, align 8
  %5 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %4, i32 0, i32 1
  %6 = load %struct.nci_dev*, %struct.nci_dev** %5, align 8
  store %struct.nci_dev* %6, %struct.nci_dev** %3, align 8
  %7 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %2, align 8
  %8 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %7, i32 0, i32 1
  %9 = load %struct.nci_dev*, %struct.nci_dev** %8, align 8
  %10 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %2, align 8
  %17 = call i32 @nfcmrvl_fw_dnld_abort(%struct.nfcmrvl_private* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %2, align 8
  %20 = call i32 @nfcmrvl_fw_dnld_deinit(%struct.nfcmrvl_private* %19)
  %21 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %2, align 8
  %22 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @gpio_is_valid(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %2, align 8
  %29 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @gpio_free(i32 %31)
  br label %33

33:                                               ; preds = %27, %18
  %34 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %35 = call i32 @nci_unregister_device(%struct.nci_dev* %34)
  %36 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %37 = call i32 @nci_free_device(%struct.nci_dev* %36)
  %38 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %2, align 8
  %39 = call i32 @kfree(%struct.nfcmrvl_private* %38)
  ret void
}

declare dso_local i32 @nfcmrvl_fw_dnld_abort(%struct.nfcmrvl_private*) #1

declare dso_local i32 @nfcmrvl_fw_dnld_deinit(%struct.nfcmrvl_private*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @nci_unregister_device(%struct.nci_dev*) #1

declare dso_local i32 @nci_free_device(%struct.nci_dev*) #1

declare dso_local i32 @kfree(%struct.nfcmrvl_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
