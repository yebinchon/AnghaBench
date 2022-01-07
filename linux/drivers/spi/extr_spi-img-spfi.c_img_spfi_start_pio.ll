; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_start_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_start_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i8*, i32, i32, i8* }
%struct.img_spfi = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"PIO transfer timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @img_spfi_start_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spfi_start_pio(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.img_spfi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.img_spfi* @spi_master_get_devdata(i32 %19)
  store %struct.img_spfi* %20, %struct.img_spfi** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %11, align 8
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 3
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %29, %3
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %42 = call i32 @spfi_start(%struct.img_spfi* %41)
  %43 = load i64, i64* @jiffies, align 8
  %44 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %45 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = mul i32 %46, 8
  %48 = mul i32 %47, 1000
  %49 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = udiv i32 %48, %51
  %53 = add i32 %52, 100
  %54 = call i64 @msecs_to_jiffies(i32 %53)
  %55 = add i64 %43, %54
  store i64 %55, i64* %13, align 8
  br label %56

56:                                               ; preds = %95, %40
  %57 = load i32, i32* %9, align 4
  %58 = icmp ugt i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = icmp ugt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59, %56
  %63 = load i64, i64* @jiffies, align 8
  %64 = load i64, i64* %13, align 8
  %65 = call i64 @time_before(i64 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %62, %59
  %68 = phi i1 [ false, %59 ], [ %66, %62 ]
  br i1 %68, label %69, label %111

69:                                               ; preds = %67
  %70 = load i32, i32* %9, align 4
  %71 = icmp uge i32 %70, 4
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @spfi_pio_write32(%struct.img_spfi* %73, i8* %74, i32 %75)
  store i32 %76, i32* %15, align 4
  br label %82

77:                                               ; preds = %69
  %78 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @spfi_pio_write8(%struct.img_spfi* %78, i8* %79, i32 %80)
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %10, align 4
  %84 = icmp uge i32 %83, 4
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @spfi_pio_read32(%struct.img_spfi* %86, i8* %87, i32 %88)
  store i32 %89, i32* %16, align 4
  br label %95

90:                                               ; preds = %82
  %91 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @spfi_pio_read8(%struct.img_spfi* %91, i8* %92, i32 %93)
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %15, align 4
  %97 = load i8*, i8** %11, align 8
  %98 = zext i32 %96 to i64
  %99 = getelementptr i8, i8* %97, i64 %98
  store i8* %99, i8** %11, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i8*, i8** %12, align 8
  %102 = zext i32 %100 to i64
  %103 = getelementptr i8, i8* %101, i64 %102
  store i8* %103, i8** %12, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sub i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sub i32 %108, %107
  store i32 %109, i32* %10, align 4
  %110 = call i32 (...) @cpu_relax()
  br label %56

111:                                              ; preds = %67
  %112 = load i32, i32* %10, align 4
  %113 = icmp ugt i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = icmp ugt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114, %111
  %118 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %119 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dev_err(i32 %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* @ETIMEDOUT, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %132

124:                                              ; preds = %114
  %125 = load %struct.img_spfi*, %struct.img_spfi** %8, align 8
  %126 = call i32 @spfi_wait_all_done(%struct.img_spfi* %125)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %4, align 4
  br label %132

131:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %129, %117
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.img_spfi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @spfi_start(%struct.img_spfi*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @spfi_pio_write32(%struct.img_spfi*, i8*, i32) #1

declare dso_local i32 @spfi_pio_write8(%struct.img_spfi*, i8*, i32) #1

declare dso_local i32 @spfi_pio_read32(%struct.img_spfi*, i8*, i32) #1

declare dso_local i32 @spfi_pio_read8(%struct.img_spfi*, i8*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spfi_wait_all_done(%struct.img_spfi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
