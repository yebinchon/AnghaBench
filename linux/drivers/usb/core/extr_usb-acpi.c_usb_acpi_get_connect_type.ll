; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb-acpi.c_usb_acpi_get_connect_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb-acpi.c_usb_acpi_get_connect_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pld_info = type { i64 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@USB_PORT_CONNECT_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_UPC\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@USB_PORT_CONNECT_TYPE_HOT_PLUG = common dso_local global i32 0, align 4
@USB_PORT_CONNECT_TYPE_HARD_WIRED = common dso_local global i32 0, align 4
@USB_PORT_NOT_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.acpi_pld_info*)* @usb_acpi_get_connect_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_acpi_get_connect_type(i32 %0, %struct.acpi_pld_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_pld_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.acpi_pld_info* %1, %struct.acpi_pld_info** %4, align 8
  %9 = load i32, i32* @USB_PORT_CONNECT_TYPE_UNKNOWN, align 4
  store i32 %9, i32* %5, align 4
  %10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %11 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %union.acpi_object*
  store %union.acpi_object* %13, %union.acpi_object** %10, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @acpi_evaluate_object(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %6)
  store i32 %17, i32* %8, align 4
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %19 = load %union.acpi_object*, %union.acpi_object** %18, align 8
  store %union.acpi_object* %19, %union.acpi_object** %7, align 8
  %20 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %21 = icmp ne %union.acpi_object* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %24 = bitcast %union.acpi_object* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %30 = bitcast %union.acpi_object* %29 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22, %2
  br label %64

35:                                               ; preds = %28
  %36 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %37 = bitcast %union.acpi_object* %36 to %struct.TYPE_6__*
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %35
  %46 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %47 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @USB_PORT_CONNECT_TYPE_HOT_PLUG, align 4
  store i32 %51, i32* %5, align 4
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @USB_PORT_CONNECT_TYPE_HARD_WIRED, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %50
  br label %63

55:                                               ; preds = %35
  %56 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %57 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @USB_PORT_NOT_USED, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %55
  br label %63

63:                                               ; preds = %62, %54
  br label %64

64:                                               ; preds = %63, %34
  %65 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %66 = call i32 @kfree(%union.acpi_object* %65)
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
