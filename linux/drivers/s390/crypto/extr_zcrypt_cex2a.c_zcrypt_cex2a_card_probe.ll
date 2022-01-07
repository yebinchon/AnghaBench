; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex2a.c_zcrypt_cex2a_card_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_cex2a.c_zcrypt_cex2a_card_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i32 }
%struct.ap_card = type { %struct.zcrypt_card*, i32, %struct.TYPE_2__ }
%struct.zcrypt_card = type { i8*, i32, i32, i32, i8*, i8*, i8*, %struct.ap_card* }
%struct.TYPE_2__ = type { i64 }

@zcrypt_cex2a_card_probe.CEX2A_SPEED_IDX = internal constant [8 x i32] [i32 800, i32 1000, i32 2000, i32 900, i32 1200, i32 2400, i32 0, i32 0], align 16
@zcrypt_cex2a_card_probe.CEX3A_SPEED_IDX = internal constant [8 x i32] [i32 400, i32 500, i32 1000, i32 450, i32 550, i32 1200, i32 0, i32 0], align 16
@ENOMEM = common dso_local global i32 0, align 4
@AP_DEVICE_TYPE_CEX2A = common dso_local global i64 0, align 8
@CEX2A_MIN_MOD_SIZE = common dso_local global i8* null, align 8
@CEX2A_MAX_MOD_SIZE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"CEX2A\00", align 1
@ZCRYPT_CEX2A = common dso_local global i32 0, align 4
@AP_DEVICE_TYPE_CEX3A = common dso_local global i64 0, align 8
@AP_FUNC_MEX4K = common dso_local global i32 0, align 4
@AP_FUNC_CRT4K = common dso_local global i32 0, align 4
@CEX3A_MAX_MOD_SIZE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"CEX3A\00", align 1
@ZCRYPT_CEX3A = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_device*)* @zcrypt_cex2a_card_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcrypt_cex2a_card_probe(%struct.ap_device* %0) #0 {
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
  br label %113

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
  %24 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AP_DEVICE_TYPE_CEX2A, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %16
  %30 = load i8*, i8** @CEX2A_MIN_MOD_SIZE, align 8
  %31 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %32 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @CEX2A_MAX_MOD_SIZE, align 8
  %34 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %35 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  %36 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %37 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memcpy(i32 %38, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex2a_card_probe.CEX2A_SPEED_IDX, i64 0, i64 0), i32 32)
  %40 = load i8*, i8** @CEX2A_MAX_MOD_SIZE, align 8
  %41 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %42 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %44 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @ZCRYPT_CEX2A, align 4
  %46 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %47 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %99

48:                                               ; preds = %16
  %49 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %50 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AP_DEVICE_TYPE_CEX3A, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %93

55:                                               ; preds = %48
  %56 = load i8*, i8** @CEX2A_MIN_MOD_SIZE, align 8
  %57 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %58 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @CEX2A_MAX_MOD_SIZE, align 8
  %60 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %61 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @CEX2A_MAX_MOD_SIZE, align 8
  %63 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %64 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %66 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %65, i32 0, i32 1
  %67 = load i32, i32* @AP_FUNC_MEX4K, align 4
  %68 = call i64 @ap_test_bit(i32* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %55
  %71 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %72 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %71, i32 0, i32 1
  %73 = load i32, i32* @AP_FUNC_CRT4K, align 4
  %74 = call i64 @ap_test_bit(i32* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i8*, i8** @CEX3A_MAX_MOD_SIZE, align 8
  %78 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %79 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @CEX3A_MAX_MOD_SIZE, align 8
  %81 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %82 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %76, %70, %55
  %84 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %85 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @memcpy(i32 %86, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @zcrypt_cex2a_card_probe.CEX3A_SPEED_IDX, i64 0, i64 0), i32 32)
  %88 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %89 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %88, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %89, align 8
  %90 = load i32, i32* @ZCRYPT_CEX3A, align 4
  %91 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %92 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  br label %98

93:                                               ; preds = %48
  %94 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %95 = call i32 @zcrypt_card_free(%struct.zcrypt_card* %94)
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %113

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98, %29
  %100 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %101 = getelementptr inbounds %struct.zcrypt_card, %struct.zcrypt_card* %100, i32 0, i32 1
  store i32 1, i32* %101, align 8
  %102 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %103 = call i32 @zcrypt_card_register(%struct.zcrypt_card* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.ap_card*, %struct.ap_card** %4, align 8
  %108 = getelementptr inbounds %struct.ap_card, %struct.ap_card* %107, i32 0, i32 0
  store %struct.zcrypt_card* null, %struct.zcrypt_card** %108, align 8
  %109 = load %struct.zcrypt_card*, %struct.zcrypt_card** %5, align 8
  %110 = call i32 @zcrypt_card_free(%struct.zcrypt_card* %109)
  br label %111

111:                                              ; preds = %106, %99
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %93, %13
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.ap_card* @to_ap_card(i32*) #1

declare dso_local %struct.zcrypt_card* @zcrypt_card_alloc(...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @ap_test_bit(i32*, i32) #1

declare dso_local i32 @zcrypt_card_free(%struct.zcrypt_card*) #1

declare dso_local i32 @zcrypt_card_register(%struct.zcrypt_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
