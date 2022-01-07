; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_i2c.c_nfcmrvl_i2c_nci_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_i2c.c_nfcmrvl_i2c_nci_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_private = type { %struct.nfcmrvl_i2c_drv_data* }
%struct.nfcmrvl_i2c_drv_data = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfcmrvl_private*)* @nfcmrvl_i2c_nci_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_i2c_nci_open(%struct.nfcmrvl_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfcmrvl_private*, align 8
  %4 = alloca %struct.nfcmrvl_i2c_drv_data*, align 8
  store %struct.nfcmrvl_private* %0, %struct.nfcmrvl_private** %3, align 8
  %5 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %6 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %5, i32 0, i32 0
  %7 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %6, align 8
  store %struct.nfcmrvl_i2c_drv_data* %7, %struct.nfcmrvl_i2c_drv_data** %4, align 8
  %8 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %4, align 8
  %9 = icmp ne %struct.nfcmrvl_i2c_drv_data* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
