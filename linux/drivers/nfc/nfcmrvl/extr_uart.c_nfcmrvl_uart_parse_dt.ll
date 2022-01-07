; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_uart.c_nfcmrvl_uart_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_uart.c_nfcmrvl_uart_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.nfcmrvl_platform_data = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"marvell,nfc-uart\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"mrvl,nfc-uart\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get generic entries\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"flow-control\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"break-control\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.nfcmrvl_platform_data*)* @nfcmrvl_uart_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_uart_parse_dt(%struct.device_node* %0, %struct.nfcmrvl_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.nfcmrvl_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.nfcmrvl_platform_data* %1, %struct.nfcmrvl_platform_data** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = call %struct.device_node* @of_get_compatible_child(%struct.device_node* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %9, %struct.device_node** %6, align 8
  %10 = load %struct.device_node*, %struct.device_node** %6, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call %struct.device_node* @of_get_compatible_child(%struct.device_node* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %24 = call i32 @nfcmrvl_parse_dt(%struct.device_node* %22, %struct.nfcmrvl_platform_data* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = call i32 @of_node_put(%struct.device_node* %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %55

32:                                               ; preds = %21
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = call i64 @of_find_property(%struct.device_node* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %38 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %42

39:                                               ; preds = %32
  %40 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %41 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  %44 = call i64 @of_find_property(%struct.device_node* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %48 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %52

49:                                               ; preds = %42
  %50 = load %struct.nfcmrvl_platform_data*, %struct.nfcmrvl_platform_data** %5, align 8
  %51 = getelementptr inbounds %struct.nfcmrvl_platform_data, %struct.nfcmrvl_platform_data* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.device_node*, %struct.device_node** %6, align 8
  %54 = call i32 @of_node_put(%struct.device_node* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %27, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.device_node* @of_get_compatible_child(%struct.device_node*, i8*) #1

declare dso_local i32 @nfcmrvl_parse_dt(%struct.device_node*, %struct.nfcmrvl_platform_data*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
