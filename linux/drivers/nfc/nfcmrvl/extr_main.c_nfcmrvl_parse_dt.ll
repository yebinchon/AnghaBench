; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_main.c_nfcmrvl_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.nfcmrvl_platform_data = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"reset-n-io\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"no reset-n-io config\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid reset-n-io GPIO\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"hci-muxed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfcmrvl_parse_dt(%struct.device_node* %0, %struct.nfcmrvl_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.nfcmrvl_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.nfcmrvl_platform_data* %1, %struct.nfcmrvl_platform_data** %5, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = call i32 @of_get_named_gpio(%struct.device_node* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %21

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @gpio_is_valid(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %11
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %24 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = call i64 @of_find_property(%struct.device_node* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %30 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  br label %34

31:                                               ; preds = %21
  %32 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %33 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
