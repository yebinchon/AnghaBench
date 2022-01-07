; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_dirmap_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_dirmap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem_dirmap_desc = type { %struct.TYPE_13__*, i64, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.spi_controller* }
%struct.spi_controller = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { {}* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_mem_dirmap_read(%struct.spi_mem_dirmap_desc* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_mem_dirmap_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.spi_controller*, align 8
  %11 = alloca i32, align 4
  store %struct.spi_mem_dirmap_desc* %0, %struct.spi_mem_dirmap_desc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %6, align 8
  %13 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.spi_controller*, %struct.spi_controller** %17, align 8
  store %struct.spi_controller* %18, %struct.spi_controller** %10, align 8
  %19 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %6, align 8
  %20 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %89

30:                                               ; preds = %4
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %89

34:                                               ; preds = %30
  %35 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %6, align 8
  %36 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @spi_mem_no_dirmap_read(%struct.spi_mem_dirmap_desc* %40, i32 %41, i64 %42, i8* %43)
  store i32 %44, i32* %11, align 4
  br label %87

45:                                               ; preds = %34
  %46 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  %47 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %83

50:                                               ; preds = %45
  %51 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  %52 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = bitcast {}** %54 to i32 (%struct.spi_mem_dirmap_desc*, i32, i64, i8*)**
  %56 = load i32 (%struct.spi_mem_dirmap_desc*, i32, i64, i8*)*, i32 (%struct.spi_mem_dirmap_desc*, i32, i64, i8*)** %55, align 8
  %57 = icmp ne i32 (%struct.spi_mem_dirmap_desc*, i32, i64, i8*)* %56, null
  br i1 %57, label %58, label %83

58:                                               ; preds = %50
  %59 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %6, align 8
  %60 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = call i32 @spi_mem_access_start(%struct.TYPE_13__* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %89

67:                                               ; preds = %58
  %68 = load %struct.spi_controller*, %struct.spi_controller** %10, align 8
  %69 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = bitcast {}** %71 to i32 (%struct.spi_mem_dirmap_desc*, i32, i64, i8*)**
  %73 = load i32 (%struct.spi_mem_dirmap_desc*, i32, i64, i8*)*, i32 (%struct.spi_mem_dirmap_desc*, i32, i64, i8*)** %72, align 8
  %74 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i64, i64* %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 %73(%struct.spi_mem_dirmap_desc* %74, i32 %75, i64 %76, i8* %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %6, align 8
  %80 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = call i32 @spi_mem_access_end(%struct.TYPE_13__* %81)
  br label %86

83:                                               ; preds = %50, %45
  %84 = load i32, i32* @ENOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %83, %67
  br label %87

87:                                               ; preds = %86, %39
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %65, %33, %27
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @spi_mem_no_dirmap_read(%struct.spi_mem_dirmap_desc*, i32, i64, i8*) #1

declare dso_local i32 @spi_mem_access_start(%struct.TYPE_13__*) #1

declare dso_local i32 @spi_mem_access_end(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
