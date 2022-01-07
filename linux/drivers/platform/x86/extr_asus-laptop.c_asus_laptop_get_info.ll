; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_laptop_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_laptop_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { i32, i32, i32, i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_SIG_DSDT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Couldn't get the DSDT table header\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Hotkey initialization failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"BSTS\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Error calling BSTS\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"BSTS called, 0x%02x returned\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"CWAP\00", align 1
@wapf = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Error calling CWAP(%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"  %s model detected\0A\00", align 1
@METHOD_WL_STATUS = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_laptop*)* @asus_laptop_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_laptop_get_info(%struct.asus_laptop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_laptop*, align 8
  %4 = alloca %struct.acpi_buffer, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.asus_laptop* %0, %struct.asus_laptop** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %10 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %union.acpi_object*
  store %union.acpi_object* %12, %union.acpi_object** %9, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 2
  store i32 0, i32* %14, align 8
  store %union.acpi_object* null, %union.acpi_object** %5, align 8
  store i8* null, i8** %7, align 8
  %15 = load i32, i32* @ACPI_SIG_DSDT, align 4
  %16 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %17 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %16, i32 0, i32 3
  %18 = call i32 @acpi_get_table(i32 %15, i32 1, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %1
  %25 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %26 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @write_acpi_int_ret(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.acpi_buffer* %4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %120

34:                                               ; preds = %24
  %35 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %36 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @acpi_evaluate_integer(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i64* %6)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %52

44:                                               ; preds = %34
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i64, i64* %6, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @pr_notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %47, %44
  br label %52

52:                                               ; preds = %51, %42
  %53 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %54 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @wapf, align 4
  %57 = call i64 @write_acpi_int(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @wapf, align 4
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %64 = load %union.acpi_object*, %union.acpi_object** %63, align 8
  %65 = icmp ne %union.acpi_object* %64, null
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %68 = load %union.acpi_object*, %union.acpi_object** %67, align 8
  store %union.acpi_object* %68, %union.acpi_object** %5, align 8
  %69 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %70 = bitcast %union.acpi_object* %69 to i32*
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %82 [
    i32 128, label %72
    i32 129, label %77
  ]

72:                                               ; preds = %66
  %73 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %74 = bitcast %union.acpi_object* %73 to %struct.TYPE_3__*
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %7, align 8
  br label %83

77:                                               ; preds = %66
  %78 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %79 = bitcast %union.acpi_object* %78 to %struct.TYPE_4__*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %7, align 8
  br label %83

82:                                               ; preds = %66
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %83

83:                                               ; preds = %82, %77, %72
  br label %84

84:                                               ; preds = %83, %62
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i32 @kstrdup(i8* %85, i32 %86)
  %88 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %89 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %91 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %96 = load %union.acpi_object*, %union.acpi_object** %95, align 8
  %97 = call i32 @kfree(%union.acpi_object* %96)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %120

100:                                              ; preds = %84
  %101 = load i8*, i8** %7, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %108 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @METHOD_WL_STATUS, align 4
  %111 = call i32 @acpi_check_handle(i32 %109, i32 %110, i32* null)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = load %struct.asus_laptop*, %struct.asus_laptop** %3, align 8
  %115 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %106
  %117 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %118 = call i32 @kfree(%union.acpi_object* %117)
  %119 = load i32, i32* @AE_OK, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %116, %94, %30
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @acpi_get_table(i32, i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @write_acpi_int_ret(i32, i8*, i32, %struct.acpi_buffer*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i32 @pr_notice(i8*, i8*) #1

declare dso_local i64 @write_acpi_int(i32, i8*, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

declare dso_local i32 @acpi_check_handle(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
