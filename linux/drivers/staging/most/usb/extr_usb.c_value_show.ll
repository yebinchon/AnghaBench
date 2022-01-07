; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_value_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/usb/extr_usb.c_value_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.most_dci_obj = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"arb_address\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"arb_value\00", align 1
@ro_regs = common dso_local global i32 0, align 4
@rw_regs = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @value_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @value_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.most_dci_obj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.most_dci_obj* @to_dci_obj(%struct.device* %17)
  store %struct.most_dci_obj* %18, %struct.most_dci_obj** %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load %struct.most_dci_obj*, %struct.most_dci_obj** %9, align 8
  %26 = getelementptr inbounds %struct.most_dci_obj, %struct.most_dci_obj* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %4, align 4
  br label %66

29:                                               ; preds = %3
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.most_dci_obj*, %struct.most_dci_obj** %9, align 8
  %35 = getelementptr inbounds %struct.most_dci_obj, %struct.most_dci_obj* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  br label %51

37:                                               ; preds = %29
  %38 = load i32, i32* @ro_regs, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @get_static_reg_addr(i32 %38, i8* %39, i32* %11)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32, i32* @rw_regs, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call i64 @get_static_reg_addr(i32 %43, i8* %44, i32* %11)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %66

50:                                               ; preds = %42, %37
  br label %51

51:                                               ; preds = %50, %33
  %52 = load %struct.most_dci_obj*, %struct.most_dci_obj** %9, align 8
  %53 = getelementptr inbounds %struct.most_dci_obj, %struct.most_dci_obj* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @drci_rd_reg(i32 %54, i32 %55, i32* %10)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %51
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @snprintf(i8* %62, i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %59, %47, %22
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.most_dci_obj* @to_dci_obj(%struct.device*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @get_static_reg_addr(i32, i8*, i32*) #1

declare dso_local i32 @drci_rd_reg(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
