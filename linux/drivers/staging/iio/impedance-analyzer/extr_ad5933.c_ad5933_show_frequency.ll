; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_show_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/impedance-analyzer/extr_ad5933.c_ad5933_show_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad5933_state = type { i32, i32 }
%struct.iio_dev_attr = type { i32 }
%union.anon = type { [4 x i32] }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ad5933_show_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5933_show_frequency(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.ad5933_state*, align 8
  %10 = alloca %struct.iio_dev_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %union.anon, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %8, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %17 = call %struct.ad5933_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad5933_state* %17, %struct.ad5933_state** %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %19 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %18)
  store %struct.iio_dev_attr* %19, %struct.iio_dev_attr** %10, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %21 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %3
  %27 = load %struct.ad5933_state*, %struct.ad5933_state** %9, align 8
  %28 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %10, align 8
  %31 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = bitcast %union.anon* %13 to [4 x i32]*
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i64 0, i64 1
  %35 = call i32 @ad5933_i2c_read(i32 %29, i32 %32, i32 3, i32* %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %37 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %36)
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %62

42:                                               ; preds = %26
  %43 = bitcast %union.anon* %13 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be32_to_cpu(i32 %44)
  %46 = and i32 %45, 16777215
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.ad5933_state*, %struct.ad5933_state** %9, align 8
  %50 = getelementptr inbounds %struct.ad5933_state, %struct.ad5933_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %48, %53
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @BIT(i32 27)
  %57 = call i32 @do_div(i64 %55, i32 %56)
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %12, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %42, %40, %24
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad5933_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @ad5933_i2c_read(i32, i32, i32, i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
