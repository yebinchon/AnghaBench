; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_cros_ec_spi_receive_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_cros_ec_spi_receive_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32, i64*, i32 }

@EC_MSG_PREAMBLE_COUNT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EC_MSG_DEADLINE_MS = common dso_local global i32 0, align 4
@EC_SPI_FRAME_START = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"msg found at %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"EC failed to respond in time\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"need %d, got %d bytes from preamble\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"loop, todo=%d, need_len=%d, ptr=%zd\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"interim\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"loop done, ptr=%zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, i32)* @cros_ec_spi_receive_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_spi_receive_response(%struct.cros_ec_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %13 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @EC_MSG_PREAMBLE_COUNT, align 4
  %16 = icmp slt i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i32, i32* @EC_MSG_DEADLINE_MS, align 4
  %21 = call i64 @msecs_to_jiffies(i32 %20)
  %22 = add i64 %19, %21
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %2, %87
  %24 = load i64, i64* @jiffies, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %26 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %27 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* @EC_MSG_PREAMBLE_COUNT, align 4
  %30 = call i32 @receive_n_bytes(%struct.cros_ec_device* %25, i64* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %189

35:                                               ; preds = %23
  %36 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %37 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  store i64* %38, i64** %6, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = load i32, i32* @EC_MSG_PREAMBLE_COUNT, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64* %42, i64** %7, align 8
  br label %43

43:                                               ; preds = %67, %35
  %44 = load i64*, i64** %6, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = icmp ne i64* %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %43
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EC_SPI_FRAME_START, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %54 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i64*, i64** %6, align 8
  %57 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %58 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = ptrtoint i64* %56 to i64
  %61 = ptrtoint i64* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %70

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66
  %68 = load i64*, i64** %6, align 8
  %69 = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %69, i64** %6, align 8
  br label %43

70:                                               ; preds = %52, %43
  %71 = load i64*, i64** %6, align 8
  %72 = load i64*, i64** %7, align 8
  %73 = icmp ne i64* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %88

75:                                               ; preds = %70
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @time_after(i64 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %82 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_warn(i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %189

87:                                               ; preds = %75
  br label %23

88:                                               ; preds = %74
  %89 = load i64*, i64** %7, align 8
  %90 = load i64*, i64** %6, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %6, align 8
  %92 = ptrtoint i64* %89 to i64
  %93 = ptrtoint i64* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %88
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %102 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %100, %103
  br label %105

105:                                              ; preds = %99, %88
  %106 = phi i1 [ true, %88 ], [ %104, %99 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @BUG_ON(i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @min(i32 %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %113 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i64*, i64** %6, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @memmove(i64* %114, i64* %115, i32 %116)
  %118 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %119 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64* %123, i64** %6, align 8
  %124 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %125 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %5, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %161, %105
  %134 = load i32, i32* %5, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %175

136:                                              ; preds = %133
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @min(i32 %137, i32 256)
  store i32 %138, i32* %10, align 4
  %139 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %140 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i64*, i64** %6, align 8
  %145 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %146 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = ptrtoint i64* %144 to i64
  %149 = ptrtoint i64* %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 8
  %152 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %142, i32 %143, i64 %151)
  %153 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %154 = load i64*, i64** %6, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @receive_n_bytes(%struct.cros_ec_device* %153, i64* %154, i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %136
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %3, align 4
  br label %189

161:                                              ; preds = %136
  %162 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %163 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i64*, i64** %6, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @debug_packet(i32 %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64* %165, i32 %166)
  %168 = load i32, i32* %10, align 4
  %169 = load i64*, i64** %6, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  store i64* %171, i64** %6, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %5, align 4
  %174 = sub nsw i32 %173, %172
  store i32 %174, i32* %5, align 4
  br label %133

175:                                              ; preds = %133
  %176 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %177 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i64*, i64** %6, align 8
  %180 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %181 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = ptrtoint i64* %179 to i64
  %184 = ptrtoint i64* %182 to i64
  %185 = sub i64 %183, %184
  %186 = sdiv exact i64 %185, 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %178, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %187)
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %175, %159, %80, %33
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @receive_n_bytes(%struct.cros_ec_device*, i64*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @debug_packet(i32, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
