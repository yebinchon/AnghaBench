; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_tci_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_tci_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_acpi_dev = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.acpi_buffer = type { i32, %union.acpi_object* }
%struct.TYPE_6__ = type { i32 }

@TCI_WORDS = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.toshiba_acpi_dev*, i32*, i32*)* @tci_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tci_raw(%struct.toshiba_acpi_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.toshiba_acpi_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.acpi_object_list, align 8
  %11 = alloca %struct.acpi_buffer, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.toshiba_acpi_dev* %0, %struct.toshiba_acpi_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* @TCI_WORDS, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* @TCI_WORDS, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* @TCI_WORDS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca %union.acpi_object, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* @TCI_WORDS, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = alloca %union.acpi_object, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %26 = load i32, i32* @TCI_WORDS, align 4
  %27 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 1
  store %union.acpi_object* %21, %union.acpi_object** %28, align 8
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %49, %3
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @TCI_WORDS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %21, i64 %36
  %38 = bitcast %union.acpi_object* %37 to i32*
  store i32 %34, i32* %38, align 16
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %21, i64 %45
  %47 = bitcast %union.acpi_object* %46 to %struct.TYPE_6__*
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 16
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %29

52:                                               ; preds = %29
  %53 = mul nuw i64 16, %24
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 1
  store %union.acpi_object* %25, %union.acpi_object** %56, align 8
  %57 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %58 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %63 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = call i64 @acpi_evaluate_object(i32 %61, i8* %65, %struct.acpi_object_list* %10, %struct.acpi_buffer* %11)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @AE_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %52
  %71 = bitcast %union.acpi_object* %25 to %struct.TYPE_10__*
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 16
  %74 = load i32, i32* @TCI_WORDS, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %70
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %97, %76
  %78 = load i32, i32* %13, align 4
  %79 = bitcast %union.acpi_object* %25 to %struct.TYPE_10__*
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 16
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %77
  %84 = bitcast %union.acpi_object* %25 to %struct.TYPE_10__*
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %83
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %77

100:                                              ; preds = %77
  br label %101

101:                                              ; preds = %100, %70, %52
  %102 = load i64, i64* %12, align 8
  %103 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %103)
  ret i64 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
