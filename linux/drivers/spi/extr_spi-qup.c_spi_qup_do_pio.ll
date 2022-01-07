; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_do_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_do_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.spi_master* }
%struct.spi_master = type { i32 }
%struct.spi_transfer = type { i64, i64 }
%struct.spi_qup = type { i32, i32, i64, i32, i32, i64, i64 }

@SPI_MAX_XFER = common dso_local global i32 0, align 4
@QUP_IO_M_MODE_FIFO = common dso_local global i64 0, align 8
@QUP_STATE_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot set RUN state\0A\00", align 1
@QUP_STATE_PAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot set PAUSE state\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*, i64)* @spi_qup_do_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_qup_do_pio(%struct.spi_device* %0, %struct.spi_transfer* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.spi_master*, align 8
  %9 = alloca %struct.spi_qup*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = load %struct.spi_master*, %struct.spi_master** %15, align 8
  store %struct.spi_master* %16, %struct.spi_master** %8, align 8
  %17 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %18 = call %struct.spi_qup* @spi_master_get_devdata(%struct.spi_master* %17)
  store %struct.spi_qup* %18, %struct.spi_qup** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %20 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @SPI_MAX_XFER, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %29 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %28, i32 0, i32 5
  store i64 %27, i64* %29, align 8
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %34 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %33, i32 0, i32 6
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %166, %3
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @SPI_MAX_XFER, align 4
  %40 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %41 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %48

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @SPI_MAX_XFER, align 4
  %45 = srem i32 %43, %44
  %46 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %47 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %38
  %49 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %50 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @SPI_MAX_XFER, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %59, %63
  %65 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %66 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %65, i32 0, i32 6
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %56, %53, %48
  %68 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %69 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %77 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @SPI_MAX_XFER, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %78, %82
  %84 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %85 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %84, i32 0, i32 5
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %75, %72, %67
  %87 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %88 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %92 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = udiv i64 %94, 4
  %96 = icmp ule i64 %90, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %86
  %98 = load i64, i64* @QUP_IO_M_MODE_FIFO, align 8
  %99 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %100 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %86
  %102 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %103 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %104 = call i32 @spi_qup_io_config(%struct.spi_device* %102, %struct.spi_transfer* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %4, align 4
  br label %171

109:                                              ; preds = %101
  %110 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %111 = load i32, i32* @QUP_STATE_RUN, align 4
  %112 = call i32 @spi_qup_set_state(%struct.spi_qup* %110, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %117 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @dev_warn(i32 %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %171

121:                                              ; preds = %109
  %122 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %123 = load i32, i32* @QUP_STATE_PAUSE, align 4
  %124 = call i32 @spi_qup_set_state(%struct.spi_qup* %122, i32 %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %129 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @dev_warn(i32 %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %4, align 4
  br label %171

133:                                              ; preds = %121
  %134 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %135 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @QUP_IO_M_MODE_FIFO, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %141 = call i32 @spi_qup_write(%struct.spi_qup* %140)
  br label %142

142:                                              ; preds = %139, %133
  %143 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %144 = load i32, i32* @QUP_STATE_RUN, align 4
  %145 = call i32 @spi_qup_set_state(%struct.spi_qup* %143, i32 %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %150 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @dev_warn(i32 %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %4, align 4
  br label %171

154:                                              ; preds = %142
  %155 = load %struct.spi_qup*, %struct.spi_qup** %9, align 8
  %156 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %155, i32 0, i32 3
  %157 = load i64, i64* %7, align 8
  %158 = call i32 @wait_for_completion_timeout(i32* %156, i64 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %154
  %161 = load i32, i32* @ETIMEDOUT, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %171

163:                                              ; preds = %154
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %12, align 4
  %169 = icmp ne i32 %167, 0
  br i1 %169, label %35, label %170

170:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %170, %160, %148, %127, %115, %107
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.spi_qup* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spi_qup_io_config(%struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @spi_qup_set_state(%struct.spi_qup*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @spi_qup_write(%struct.spi_qup*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
