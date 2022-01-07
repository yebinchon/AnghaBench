; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex2c.c_zcrypt_cex2c_card_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex2c.c_zcrypt_cex2c_card_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i32 }
%struct.ap_card = type { %struct.zcrypt_card*, %struct.TYPE_2__ }
%struct.zcrypt_card = type { i8*, i32, i8*, i8*, i32, i32, i32, %struct.ap_card* }
%struct.TYPE_2__ = type { i32 }

@zcrypt_cex2c_card_probe.CEX2C_SPEED_IDX = internal constant [8 x i32] [i32 1000, i32 1400, i32 2400, i32 1100, i32 1500, i32 2600, i32 100, i32 12], align 16
@zcrypt_cex2c_card_probe.CEX3C_SPEED_IDX = internal constant [8 x i32] [i32 500, i32 700, i32 1400, i32 550, i32 800, i32 1500, i32 80, i32 10], align 16
@ENOMEM = common dso_local global i32 0, align 4
@ZCRYPT_CEX2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"CEX2C\00", align 1
@CEX2C_MIN_MOD_SIZE = common dso_local global i32 0, align 4
@CEX2C_MAX_MOD_SIZE = common dso_local global i8* null, align 8
@ZCRYPT_CEX3C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"CEX3C\00", align 1
@CEX3C_MIN_MOD_SIZE = common dso_local global i32 0, align 4
@CEX3C_MAX_MOD_SIZE = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_device*)* @zcrypt_cex2c_card_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_cex2c_card_probe(%struct.ap_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_device*, align 8
  %4 = alloca %struct.ap_card*, align 8
  %5 = alloca %struct.zcrypt_card*, align 8
  %6 = alloca i32, align 4
  store %struct.ap_device* %0, %struct.ap_device** %3, align 8
  %7 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %8 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %7, i32 0, i32 0
  %9 = call %struct.ap_card* @to_ap_card(i32* %8)
  store %struct.ap_card* %9, %struct.ap_card** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = call %struct.zcrypt_card* (...) @zcrypt_card_alloc()
  store %struct.zcrypt_card* %10, %struct.zcrypt_card** %5, align 8
  %11 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %12 = icmp ne %struct.zcrypt_card* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %84

16:                                               ; preds = %1
  %17 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %18 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %19 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %18, i32 0, i32 7
  store %struct.ap_card* %17, %struct.ap_card** %19, align 8
  %20 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %21 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %22 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %21, i32 0, i32 0
  store %struct.zcrypt_card* %20, %struct.zcrypt_card** %22, align 8
  %23 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %24 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %65 [
    i32 129, label %27
    i32 128, label %46
  ]

27:                                               ; preds = %16
  %28 = load i32, i32* @ZCRYPT_CEX2C, align 4
  %29 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %30 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %32 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %34 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32 %35, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex2c_card_probe.CEX2C_SPEED_IDX, i64 0, i64 0), i32 32)
  %37 = load i32, i32* @CEX2C_MIN_MOD_SIZE, align 4
  %38 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %39 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** @CEX2C_MAX_MOD_SIZE, align 8
  %41 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %42 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @CEX2C_MAX_MOD_SIZE, align 8
  %44 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %45 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  br label %70

46:                                               ; preds = %16
  %47 = load i32, i32* @ZCRYPT_CEX3C, align 4
  %48 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %49 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %51 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %51, align 8
  %52 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %53 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i32 %54, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex2c_card_probe.CEX3C_SPEED_IDX, i64 0, i64 0), i32 32)
  %56 = load i32, i32* @CEX3C_MIN_MOD_SIZE, align 4
  %57 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %58 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** @CEX3C_MAX_MOD_SIZE, align 8
  %60 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %61 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @CEX3C_MAX_MOD_SIZE, align 8
  %63 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %64 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  br label %70

65:                                               ; preds = %16
  %66 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %67 = call i32 @zcrypt_card_free(%struct.zcrypt_card* %66)
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %84

70:                                               ; preds = %46, %27
  %71 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %72 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %71, i32 0, i32 1
  store i32 1, i32* %72, align 8
  %73 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %74 = call i32 @zcrypt_card_register(%struct.zcrypt_card* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %79 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %78, i32 0, i32 0
  store %struct.zcrypt_card* null, %struct.zcrypt_card** %79, align 8
  %80 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %81 = call i32 @zcrypt_card_free(%struct.zcrypt_card* %80)
  br label %82

82:                                               ; preds = %77, %70
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %65, %13
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.ap_card* @to_ap_card(i32*) #1

declare dso_local %struct.zcrypt_card* @zcrypt_card_alloc(...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @zcrypt_card_free(%struct.zcrypt_card*) #1

declare dso_local i32 @zcrypt_card_register(%struct.zcrypt_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
