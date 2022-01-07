; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_one_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_one_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32, i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64, i64, i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.pic32_spi = type { i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"dma submit error\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"wait error/timedout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @pic32_spi_one_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_spi_one_transfer(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.pic32_spi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %13 = call %struct.pic32_spi* @spi_master_get_devdata(%struct.spi_master* %12)
  store %struct.pic32_spi* %13, %struct.pic32_spi** %8, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %3
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %23 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  %27 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @pic32_spi_set_word_size(%struct.pic32_spi* %27, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %172

36:                                               ; preds = %26
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %41 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %18, %3
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %49 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %52 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @pic32_spi_set_clk_rate(%struct.pic32_spi* %56, i64 %59)
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %62 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %65 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %55, %47, %42
  %67 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %68 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %67, i32 0, i32 3
  %69 = call i32 @reinit_completion(i32* %68)
  %70 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %71 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %66
  %76 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %77 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %83 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %84 = call i32 @pic32_spi_dma_transfer(%struct.pic32_spi* %82, %struct.spi_transfer* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %89 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %88, i32 0, i32 0
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %172

92:                                               ; preds = %81
  store i32 1, i32* %9, align 4
  br label %143

93:                                               ; preds = %75, %66
  %94 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %95 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %99 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %98, i32 0, i32 9
  store i8* %97, i8** %99, align 8
  %100 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %101 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %105 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %104, i32 0, i32 7
  store i8* %103, i8** %105, align 8
  %106 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %107 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %106, i32 0, i32 9
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %110 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr i8, i8* %108, i64 %112
  %114 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %115 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %114, i32 0, i32 10
  store i8* %113, i8** %115, align 8
  %116 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %117 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %116, i32 0, i32 7
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %120 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr i8, i8* %118, i64 %122
  %124 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %125 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %124, i32 0, i32 8
  store i8* %123, i8** %125, align 8
  %126 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %127 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %130 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %132 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @enable_irq(i32 %133)
  %135 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %136 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @enable_irq(i32 %137)
  %139 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %140 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @enable_irq(i32 %141)
  br label %143

143:                                              ; preds = %93, %92
  %144 = load %struct.pic32_spi*, %struct.pic32_spi** %8, align 8
  %145 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %144, i32 0, i32 3
  %146 = load i32, i32* @HZ, align 4
  %147 = mul nsw i32 2, %146
  %148 = call i64 @wait_for_completion_timeout(i32* %145, i32 %147)
  store i64 %148, i64* %10, align 8
  %149 = load i64, i64* %10, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %143
  %152 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %153 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %152, i32 0, i32 0
  %154 = call i32 @dev_err(i32* %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %151
  %158 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %159 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @dmaengine_terminate_all(i32 %160)
  %162 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %163 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dmaengine_terminate_all(i32 %164)
  br label %166

166:                                              ; preds = %157, %151
  %167 = load i32, i32* @ETIMEDOUT, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %11, align 4
  br label %170

169:                                              ; preds = %143
  store i32 0, i32* %11, align 4
  br label %170

170:                                              ; preds = %169, %166
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %170, %87, %34
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local %struct.pic32_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @pic32_spi_set_word_size(%struct.pic32_spi*, i64) #1

declare dso_local i32 @pic32_spi_set_clk_rate(%struct.pic32_spi*, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @pic32_spi_dma_transfer(%struct.pic32_spi*, %struct.spi_transfer*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
