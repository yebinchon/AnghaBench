; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_i2c.c_nfcmrvl_i2c_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_i2c.c_nfcmrvl_i2c_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.nfcmrvl_platform_data = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to get generic entries\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"i2c-int-falling\00", align 1
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to get irq, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.nfcmrvl_platform_data*)* @nfcmrvl_i2c_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_i2c_parse_dt(%struct.device_node* %0, %struct.nfcmrvl_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.nfcmrvl_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.nfcmrvl_platform_data* %1, %struct.nfcmrvl_platform_data** %5, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %9 = call i32 @nfcmrvl_parse_dt(%struct.device_node* %7, %struct.nfcmrvl_platform_data* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call i64 @of_find_property(%struct.device_node* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %21 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %22 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %25 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %26 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = call i32 @irq_of_parse_and_map(%struct.device_node* %28, i32 0)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %39 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %32, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @nfcmrvl_parse_dt(%struct.device_node*, %struct.nfcmrvl_platform_data*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
