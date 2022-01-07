; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_rf_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_pn533.c_pn533_rf_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.pn533 = type { i32 }

@PN533_CFGITEM_RF_FIELD_AUTO_RFCA = common dso_local global i32 0, align 4
@PN533_CFGITEM_RF_FIELD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error on setting RF field\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_dev*, i32)* @pn533_rf_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_rf_field(%struct.nfc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pn533*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %10 = call %struct.pn533* @nfc_get_drvdata(%struct.nfc_dev* %9)
  store %struct.pn533* %10, %struct.pn533** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @PN533_CFGITEM_RF_FIELD_AUTO_RFCA, align 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load %struct.pn533*, %struct.pn533** %6, align 8
  %20 = load i32, i32* @PN533_CFGITEM_RF_FIELD, align 4
  %21 = call i32 @pn533_set_configuration(%struct.pn533* %19, i32 %20, i32* %7, i32 1)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.pn533*, %struct.pn533** %6, align 8
  %26 = getelementptr inbounds %struct.pn533, %struct.pn533* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nfc_err(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.pn533* @nfc_get_drvdata(%struct.nfc_dev*) #1

declare dso_local i32 @pn533_set_configuration(%struct.pn533*, i32, i32*, i32) #1

declare dso_local i32 @nfc_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
