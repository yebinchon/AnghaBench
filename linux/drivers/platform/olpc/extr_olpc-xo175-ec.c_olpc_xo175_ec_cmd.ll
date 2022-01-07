; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-xo175-ec.c_olpc_xo175_ec_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-xo175-ec.c_olpc_xo175_ec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.olpc_xo175_ec = type { i32, i64, i64, i64, i32, i32, i32*, %struct.TYPE_3__*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { i64, i32*, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"CMD %x, %zd bytes expected\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"command len %zd too big!\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"unknown command 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"response too big: %zd!\0A\00", align 1
@CMD_STATE_WAITING_FOR_SWITCH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"EC cmd error: timeout in STATE %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CMD_STATE_ERROR_RECEIVED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"command 0x%x returned error 0x%x\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"command 0x%x returned %d bytes, expected %zd bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i32*, i64, i8*)* @olpc_xo175_ec_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_xo175_ec_cmd(i32 %0, i32* %1, i64 %2, i32* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.olpc_xo175_ec*, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = bitcast i8* %19 to %struct.olpc_xo175_ec*
  store %struct.olpc_xo175_ec* %20, %struct.olpc_xo175_ec** %14, align 8
  %21 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %22 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %21, i32 0, i32 7
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %15, align 8
  store i32 0, i32* %18, align 4
  %25 = load %struct.device*, %struct.device** %15, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @dev_dbg(%struct.device* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27)
  %29 = load i64, i64* %10, align 8
  %30 = icmp ugt i64 %29, 5
  br i1 %30, label %31, label %37

31:                                               ; preds = %6
  %32 = load %struct.device*, %struct.device** %15, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EOVERFLOW, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %200

37:                                               ; preds = %6
  %38 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %39 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %200

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @olpc_xo175_ec_resp_len(i32 %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %15, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @dev_err_ratelimited(%struct.device* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i64, i64* %12, align 8
  %56 = icmp ugt i64 %55, 8
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.device*, %struct.device** %15, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @EOVERFLOW, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %200

63:                                               ; preds = %51
  %64 = load i64, i64* %12, align 8
  store i64 %64, i64* %17, align 8
  br label %68

65:                                               ; preds = %46
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %17, align 8
  store i32 0, i32* %18, align 4
  br label %68

68:                                               ; preds = %65, %63
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %17, align 8
  %71 = call i64 @min(i64 %69, i64 %70)
  store i64 %71, i64* %12, align 8
  %72 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %73 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %72, i32 0, i32 4
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %77 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %76, i32 0, i32 8
  %78 = call i32 @init_completion(i32* %77)
  %79 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %80 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load i64, i64* @CMD_STATE_WAITING_FOR_SWITCH, align 8
  %82 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %83 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %85 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %84, i32 0, i32 9
  %86 = call i32 @memset(%struct.TYPE_4__* %85, i32 0, i32 32)
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %89 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %88, i32 0, i32 9
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %93 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %92, i32 0, i32 9
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i64 %91, i64* %94, align 8
  %95 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %96 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %95, i32 0, i32 9
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %99 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %98, i32 0, i32 9
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @memcpy(i32* %101, i32* %102, i64 %103)
  %105 = load i64, i64* %17, align 8
  %106 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %107 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %109 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %108, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %111 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @gpiod_set_value_cansleep(i32 %112, i32 1)
  %114 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %115 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %114, i32 0, i32 4
  %116 = load i64, i64* %16, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %119 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %118, i32 0, i32 8
  %120 = call i32 @msecs_to_jiffies(i32 4000)
  %121 = call i32 @wait_for_completion_timeout(i32* %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %141, label %123

123:                                              ; preds = %68
  %124 = load %struct.device*, %struct.device** %15, align 8
  %125 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %126 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %127)
  %129 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %130 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @gpiod_set_value_cansleep(i32 %131, i32 0)
  %133 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %134 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %133, i32 0, i32 7
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = call i32 @spi_slave_abort(%struct.TYPE_3__* %135)
  %137 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %138 = call i32 @olpc_xo175_ec_read_packet(%struct.olpc_xo175_ec* %137)
  %139 = load i32, i32* @ETIMEDOUT, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %7, align 4
  br label %200

141:                                              ; preds = %68
  %142 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %143 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %142, i32 0, i32 4
  %144 = load i64, i64* %16, align 8
  %145 = call i32 @spin_lock_irqsave(i32* %143, i64 %144)
  %146 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %147 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @CMD_STATE_ERROR_RECEIVED, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %141
  %152 = load %struct.device*, %struct.device** %15, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %156 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %155, i32 0, i32 6
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %152, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %154, i32 %159)
  %161 = load i32, i32* @EREMOTEIO, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %18, align 4
  br label %188

163:                                              ; preds = %141
  %164 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %165 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %17, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %163
  %170 = load %struct.device*, %struct.device** %15, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %174 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %17, align 8
  %177 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %170, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i64 %172, i64 %175, i64 %176)
  %178 = load i32, i32* @EREMOTEIO, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %18, align 4
  br label %187

180:                                              ; preds = %163
  %181 = load i32*, i32** %11, align 8
  %182 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %183 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %182, i32 0, i32 6
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* %12, align 8
  %186 = call i32 @memcpy(i32* %181, i32* %184, i64 %185)
  br label %187

187:                                              ; preds = %180, %169
  br label %188

188:                                              ; preds = %187, %151
  %189 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %190 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @gpiod_set_value_cansleep(i32 %191, i32 0)
  %193 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %194 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %193, i32 0, i32 0
  store i32 0, i32* %194, align 8
  %195 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %14, align 8
  %196 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %195, i32 0, i32 4
  %197 = load i64, i64* %16, align 8
  %198 = call i32 @spin_unlock_irqrestore(i32* %196, i64 %197)
  %199 = load i32, i32* %18, align 4
  store i32 %199, i32* %7, align 4
  br label %200

200:                                              ; preds = %188, %123, %57, %43, %31
  %201 = load i32, i32* %7, align 4
  ret i32 %201
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @olpc_xo175_ec_resp_len(i32) #1

declare dso_local i32 @dev_err_ratelimited(%struct.device*, i8*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spi_slave_abort(%struct.TYPE_3__*) #1

declare dso_local i32 @olpc_xo175_ec_read_packet(%struct.olpc_xo175_ec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
