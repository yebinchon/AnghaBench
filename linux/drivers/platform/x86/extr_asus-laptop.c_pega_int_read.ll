; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_pega_int_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_pega_int_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_2__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@METHOD_PEGA_READ = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_laptop*, i32, i32*)* @pega_int_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pega_int_read(%struct.asus_laptop* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.asus_laptop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.acpi_buffer, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_object*, align 8
  store %struct.asus_laptop* %0, %struct.asus_laptop** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %11 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %union.acpi_object*
  store %union.acpi_object* %13, %union.acpi_object** %10, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = load %struct.asus_laptop*, %struct.asus_laptop** %4, align 8
  %17 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @METHOD_PEGA_READ, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @write_acpi_int_ret(i32 %18, i32 %19, i32 %20, %struct.acpi_buffer* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %26 = load %union.acpi_object*, %union.acpi_object** %25, align 8
  store %union.acpi_object* %26, %union.acpi_object** %9, align 8
  %27 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %28 = icmp ne %union.acpi_object* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %31 = bitcast %union.acpi_object* %30 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %37 = bitcast %union.acpi_object* %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  br label %44

41:                                               ; preds = %29, %24
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i32 @write_acpi_int_ret(i32, i32, i32, %struct.acpi_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
