; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_tg_listen_md.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_tg_listen_md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 }
%struct.trf7970a = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Listen MD - state: %d, timeout: %d ms\0A\00", align 1
@NFC_DIGITAL_CONFIG_RF_TECH = common dso_local global i32 0, align 4
@NFC_DIGITAL_RF_TECH_106A = common dso_local global i32 0, align 4
@NFC_DIGITAL_CONFIG_FRAMING = common dso_local global i32 0, align 4
@NFC_DIGITAL_FRAMING_NFCA_NFC_DEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfc_digital_dev*, i32, i32, i8*)* @trf7970a_tg_listen_md to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trf7970a_tg_listen_md(%struct.nfc_digital_dev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfc_digital_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.trf7970a*, align 8
  %11 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %13 = call %struct.trf7970a* @nfc_digital_get_drvdata(%struct.nfc_digital_dev* %12)
  store %struct.trf7970a* %13, %struct.trf7970a** %10, align 8
  %14 = load %struct.trf7970a*, %struct.trf7970a** %10, align 8
  %15 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.trf7970a*, %struct.trf7970a** %10, align 8
  %18 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %23 = load i32, i32* @NFC_DIGITAL_CONFIG_RF_TECH, align 4
  %24 = load i32, i32* @NFC_DIGITAL_RF_TECH_106A, align 4
  %25 = call i32 @trf7970a_tg_configure_hw(%struct.nfc_digital_dev* %22, i32 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %45

30:                                               ; preds = %4
  %31 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %32 = load i32, i32* @NFC_DIGITAL_CONFIG_FRAMING, align 4
  %33 = load i32, i32* @NFC_DIGITAL_FRAMING_NFCA_NFC_DEP, align 4
  %34 = call i32 @trf7970a_tg_configure_hw(%struct.nfc_digital_dev* %31, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %45

39:                                               ; preds = %30
  %40 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @_trf7970a_tg_listen(%struct.nfc_digital_dev* %40, i32 %41, i32 %42, i8* %43, i32 1)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %37, %28
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.trf7970a* @nfc_digital_get_drvdata(%struct.nfc_digital_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @trf7970a_tg_configure_hw(%struct.nfc_digital_dev*, i32, i32) #1

declare dso_local i32 @_trf7970a_tg_listen(%struct.nfc_digital_dev*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
