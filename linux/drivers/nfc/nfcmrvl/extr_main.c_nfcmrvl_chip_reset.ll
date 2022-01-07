; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_chip_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_private = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@NFCMRVL_PHY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"reset the chip\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"no reset available on this interface\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfcmrvl_chip_reset(%struct.nfcmrvl_private* %0) #0 {
  %2 = alloca %struct.nfcmrvl_private*, align 8
  store %struct.nfcmrvl_private* %0, %struct.nfcmrvl_private** %2, align 8
  %3 = load i32, i32* @NFCMRVL_PHY_ERROR, align 4
  %4 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %2, align 8
  %5 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %4, i32 0, i32 2
  %6 = call i32 @clear_bit(i32 %3, i32* %5)
  %7 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %2, align 8
  %8 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @gpio_is_valid(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %2, align 8
  %15 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nfc_info(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %2, align 8
  %19 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gpio_set_value(i32 %21, i32 0)
  %23 = call i32 @usleep_range(i32 5000, i32 10000)
  %24 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %2, align 8
  %25 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpio_set_value(i32 %27, i32 1)
  br label %34

29:                                               ; preds = %1
  %30 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %2, align 8
  %31 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nfc_info(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %13
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @nfc_info(i32, i8*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
