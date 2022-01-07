; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me_daq.c_me2600_xilinx_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me_daq.c_me2600_xilinx_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, %struct.me_private_data* }
%struct.me_private_data = type { i64 }

@PLX9052_INTCSR = common dso_local global i64 0, align 8
@XILINX_DOWNLOAD_RESET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PLX9052_INTCSR_LI2STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Xilinx download failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PLX9052_INTCSR_LI1ENAB = common dso_local global i32 0, align 4
@PLX9052_INTCSR_LI1POL = common dso_local global i32 0, align 4
@PLX9052_INTCSR_PCIENAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32*, i64, i64)* @me2600_xilinx_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me2600_xilinx_download(%struct.comedi_device* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.me_private_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 2
  %16 = load %struct.me_private_data*, %struct.me_private_data** %15, align 8
  store %struct.me_private_data* %16, %struct.me_private_data** %10, align 8
  %17 = load %struct.me_private_data*, %struct.me_private_data** %10, align 8
  %18 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PLX9052_INTCSR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 0, i64 %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @XILINX_DOWNLOAD_RESET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readw(i64 %27)
  store i32 %28, i32* %11, align 4
  %29 = call i32 @sleep(i32 1)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 0
  %34 = call i32 @writeb(i32 0, i64 %33)
  %35 = call i32 @sleep(i32 1)
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %36, 16
  br i1 %37, label %38, label %41

38:                                               ; preds = %4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %134

41:                                               ; preds = %4
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  %46 = shl i32 %45, 24
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 255
  %51 = shl i32 %50, 16
  %52 = add i32 %46, %51
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 255
  %57 = shl i32 %56, 8
  %58 = add i32 %52, %57
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 255
  %63 = add i32 %58, %62
  store i32 %63, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %81, %41
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = add i32 16, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 255
  %76 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 0
  %80 = call i32 @writeb(i32 %75, i64 %79)
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %13, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %64

84:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %94, %84
  %86 = load i32, i32* %13, align 4
  %87 = icmp ult i32 %86, 5
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %90 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 0
  %93 = call i32 @writeb(i32 0, i64 %92)
  br label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %13, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %85

97:                                               ; preds = %85
  %98 = load %struct.me_private_data*, %struct.me_private_data** %10, align 8
  %99 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PLX9052_INTCSR, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @readl(i64 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @PLX9052_INTCSR_LI2STAT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %97
  %109 = load %struct.me_private_data*, %struct.me_private_data** %10, align 8
  %110 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PLX9052_INTCSR, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel(i32 0, i64 %113)
  %115 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %116 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %134

121:                                              ; preds = %97
  %122 = call i32 @sleep(i32 1)
  %123 = load i32, i32* @PLX9052_INTCSR_LI1ENAB, align 4
  %124 = load i32, i32* @PLX9052_INTCSR_LI1POL, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @PLX9052_INTCSR_PCIENAB, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.me_private_data*, %struct.me_private_data** %10, align 8
  %129 = getelementptr inbounds %struct.me_private_data, %struct.me_private_data* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @PLX9052_INTCSR, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @writel(i32 %127, i64 %132)
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %121, %108, %38
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
