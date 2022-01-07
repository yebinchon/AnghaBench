; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_cros_ec_spi_receive_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_cros_ec_spi_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32, i64*, i32 }
%struct.ec_host_response = type { i32 }

@EC_MSG_PREAMBLE_COUNT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EC_MSG_DEADLINE_MS = common dso_local global i32 0, align 4
@EC_SPI_FRAME_START = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"msg found at %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"EC failed to respond in time\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"need %d, got %d bytes from preamble\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"loop, todo=%d, need_len=%d, ptr=%zd\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"loop done, ptr=%zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, i32)* @cros_ec_spi_receive_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_spi_receive_packet(%struct.cros_ec_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ec_host_response*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %14 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @EC_MSG_PREAMBLE_COUNT, align 4
  %17 = icmp slt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i32, i32* @EC_MSG_DEADLINE_MS, align 4
  %22 = call i64 @msecs_to_jiffies(i32 %21)
  %23 = add i64 %20, %22
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %2, %88
  %25 = load i64, i64* @jiffies, align 8
  store i64 %25, i64* %12, align 8
  %26 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %27 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %28 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* @EC_MSG_PREAMBLE_COUNT, align 4
  %31 = call i32 @receive_n_bytes(%struct.cros_ec_device* %26, i64* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %222

36:                                               ; preds = %24
  %37 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %38 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  store i64* %39, i64** %7, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i32, i32* @EC_MSG_PREAMBLE_COUNT, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64* %43, i64** %8, align 8
  br label %44

44:                                               ; preds = %68, %36
  %45 = load i64*, i64** %7, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = icmp ne i64* %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EC_SPI_FRAME_START, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %55 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %59 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = ptrtoint i64* %57 to i64
  %62 = ptrtoint i64* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %71

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67
  %69 = load i64*, i64** %7, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %7, align 8
  br label %44

71:                                               ; preds = %53, %44
  %72 = load i64*, i64** %7, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = icmp ne i64* %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %89

76:                                               ; preds = %71
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i64 @time_after(i64 %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %83 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_warn(i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @ETIMEDOUT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %222

88:                                               ; preds = %76
  br label %24

89:                                               ; preds = %75
  %90 = load i64*, i64** %8, align 8
  %91 = load i64*, i64** %7, align 8
  %92 = getelementptr inbounds i64, i64* %91, i32 1
  store i64* %92, i64** %7, align 8
  %93 = ptrtoint i64* %90 to i64
  %94 = ptrtoint i64* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %103 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %101, %104
  br label %106

106:                                              ; preds = %100, %89
  %107 = phi i1 [ true, %89 ], [ %105, %100 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @BUG_ON(i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @min(i32 %110, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %114 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i64*, i64** %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @memmove(i64* %115, i64* %116, i32 %117)
  %119 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %120 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  store i64* %124, i64** %7, align 8
  %125 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %126 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %5, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp ult i64 %135, 4
  br i1 %136, label %137, label %156

137:                                              ; preds = %106
  %138 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %139 = load i64*, i64** %7, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = sub i64 4, %141
  %143 = trunc i64 %142 to i32
  %144 = call i32 @receive_n_bytes(%struct.cros_ec_device* %138, i64* %139, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = load i32, i32* @EBADMSG, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %222

150:                                              ; preds = %137
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = sub i64 4, %152
  %154 = load i64*, i64** %7, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 %153
  store i64* %155, i64** %7, align 8
  store i32 4, i32* %11, align 4
  br label %156

156:                                              ; preds = %150, %106
  %157 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %158 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = bitcast i64* %159 to %struct.ec_host_response*
  store %struct.ec_host_response* %160, %struct.ec_host_response** %6, align 8
  %161 = load %struct.ec_host_response*, %struct.ec_host_response** %6, align 8
  %162 = getelementptr inbounds %struct.ec_host_response, %struct.ec_host_response* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %165 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sgt i32 %163, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %156
  %169 = load i32, i32* @EMSGSIZE, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %222

171:                                              ; preds = %156
  br label %172

172:                                              ; preds = %200, %171
  %173 = load i32, i32* %5, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %208

175:                                              ; preds = %172
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @min(i32 %176, i32 256)
  store i32 %177, i32* %11, align 4
  %178 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %179 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load i64*, i64** %7, align 8
  %184 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %185 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %184, i32 0, i32 1
  %186 = load i64*, i64** %185, align 8
  %187 = ptrtoint i64* %183 to i64
  %188 = ptrtoint i64* %186 to i64
  %189 = sub i64 %187, %188
  %190 = sdiv exact i64 %189, 8
  %191 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %180, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %181, i32 %182, i64 %190)
  %192 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %193 = load i64*, i64** %7, align 8
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @receive_n_bytes(%struct.cros_ec_device* %192, i64* %193, i32 %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %175
  %199 = load i32, i32* %9, align 4
  store i32 %199, i32* %3, align 4
  br label %222

200:                                              ; preds = %175
  %201 = load i32, i32* %11, align 4
  %202 = load i64*, i64** %7, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i64, i64* %202, i64 %203
  store i64* %204, i64** %7, align 8
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* %5, align 4
  %207 = sub nsw i32 %206, %205
  store i32 %207, i32* %5, align 4
  br label %172

208:                                              ; preds = %172
  %209 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %210 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i64*, i64** %7, align 8
  %213 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %214 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %213, i32 0, i32 1
  %215 = load i64*, i64** %214, align 8
  %216 = ptrtoint i64* %212 to i64
  %217 = ptrtoint i64* %215 to i64
  %218 = sub i64 %216, %217
  %219 = sdiv exact i64 %218, 8
  %220 = trunc i64 %219 to i32
  %221 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %211, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %220)
  store i32 0, i32* %3, align 4
  br label %222

222:                                              ; preds = %208, %198, %168, %147, %81, %34
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @receive_n_bytes(%struct.cros_ec_device*, i64*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
