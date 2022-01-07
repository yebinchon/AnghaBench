; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_parse_insn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_parse_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*)*, i32, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i64, i8*, i32 (%struct.comedi_device.0*, %struct.comedi_insn.1*, i32*, i8*)*, i32 (%struct.comedi_device.2*, %struct.comedi_subdevice*, %struct.comedi_insn.3*, i32*)*, i64, i32*, i32, i32 (%struct.comedi_device.4*, %struct.comedi_subdevice*, %struct.comedi_insn.5*, i32*)*, i32, i32 (%struct.comedi_device.6*, %struct.comedi_subdevice*, %struct.comedi_insn.7*, i32*)*, i32 (%struct.comedi_device.8*, %struct.comedi_subdevice*, %struct.comedi_insn.9*, i32*)*, %struct.TYPE_2__* }
%struct.comedi_device.0 = type opaque
%struct.comedi_insn.1 = type opaque
%struct.comedi_device.2 = type opaque
%struct.comedi_insn.3 = type opaque
%struct.comedi_device.4 = type opaque
%struct.comedi_insn.5 = type opaque
%struct.comedi_device.6 = type opaque
%struct.comedi_insn.7 = type opaque
%struct.comedi_device.8 = type opaque
%struct.comedi_insn.9 = type opaque
%struct.TYPE_2__ = type { i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* }
%struct.comedi_insn = type { i32, i32, i64, i32 }
%struct.timespec64 = type { i32, i64 }

@INSN_MASK_SPECIAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%d not usable subdevice\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"no async\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"no inttrig\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@INSN_DEVICE_CONFIG_GET_ROUTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"invalid insn\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"subdevice %d out of range\0A\00", align 1
@COMEDI_SUBD_UNUSED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"device locked\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"bad chanspec\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"subdevice %d read instruction timed out\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"bad data value(s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"subdevice %d write instruction timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*, i8*)* @parse_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_insn(%struct.comedi_device* %0, %struct.comedi_insn* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_insn*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_insn* %1, %struct.comedi_insn** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 4
  %18 = call i32 @lockdep_assert_held(i32* %17)
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @INSN_MASK_SPECIAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %184

25:                                               ; preds = %4
  %26 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %27 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %176 [
    i32 132, label %29
    i32 129, label %50
    i32 131, label %69
    i32 133, label %144
  ]

29:                                               ; preds = %25
  %30 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  br label %183

37:                                               ; preds = %29
  %38 = call i32 @ktime_get_real_ts64(%struct.timespec64* %12)
  %39 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NSEC_PER_USEC, align 4
  %47 = udiv i32 %45, %46
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  store i32 2, i32* %10, align 4
  br label %183

50:                                               ; preds = %25
  %51 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp uge i32 %58, 100000
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %183

63:                                               ; preds = %55
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = udiv i32 %66, 1000
  %68 = call i32 @udelay(i32 %67)
  store i32 1, i32* %10, align 4
  br label %183

69:                                               ; preds = %25
  %70 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %183

77:                                               ; preds = %69
  %78 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %79 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp uge i64 %80, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %77
  %86 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %90 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i32, i8*, ...) @dev_dbg(i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %10, align 4
  br label %183

95:                                               ; preds = %77
  %96 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %97 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %96, i32 0, i32 3
  %98 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %97, align 8
  %99 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %100 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %98, i64 %101
  store %struct.comedi_subdevice* %102, %struct.comedi_subdevice** %9, align 8
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %104 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %103, i32 0, i32 11
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = icmp ne %struct.TYPE_2__* %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %95
  %108 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %109 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, ...) @dev_dbg(i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %10, align 4
  br label %183

114:                                              ; preds = %95
  %115 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %116 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %115, i32 0, i32 11
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %118, align 8
  %120 = icmp ne i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* %119, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %114
  %122 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, i8*, ...) @dev_dbg(i32 %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @EAGAIN, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %10, align 4
  br label %183

128:                                              ; preds = %114
  %129 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %130 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %129, i32 0, i32 11
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32)** %132, align 8
  %134 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %135 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 %133(%struct.comedi_device* %134, %struct.comedi_subdevice* %135, i32 %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %128
  store i32 1, i32* %10, align 4
  br label %143

143:                                              ; preds = %142, %128
  br label %183

144:                                              ; preds = %25
  %145 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @check_insn_device_config_length(%struct.comedi_insn* %145, i32* %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %183

151:                                              ; preds = %144
  %152 = load i32*, i32** %7, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @INSN_DEVICE_CONFIG_GET_ROUTES, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %151
  %158 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %159 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %160, 2
  %162 = sdiv i32 %161, 2
  %163 = load i32*, i32** %7, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = call i32 @get_valid_routes(%struct.comedi_device* %165, i32* %166)
  store i32 %167, i32* %10, align 4
  br label %183

168:                                              ; preds = %151
  %169 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %170 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %169, i32 0, i32 1
  %171 = load i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*)*, i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*)** %170, align 8
  %172 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %173 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %174 = load i32*, i32** %7, align 8
  %175 = call i32 %171(%struct.comedi_device* %172, %struct.comedi_insn* %173, i32* %174)
  store i32 %175, i32* %10, align 4
  br label %183

176:                                              ; preds = %25
  %177 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %178 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i8*, ...) @dev_dbg(i32 %179, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %176, %168, %157, %150, %143, %121, %107, %85, %74, %63, %60, %37, %34
  br label %455

184:                                              ; preds = %4
  %185 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %186 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %189 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp uge i64 %187, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %184
  %193 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %194 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %197 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = call i32 (i32, i8*, ...) @dev_dbg(i32 %195, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %198)
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %10, align 4
  br label %456

202:                                              ; preds = %184
  %203 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %204 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %203, i32 0, i32 3
  %205 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %204, align 8
  %206 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %207 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %205, i64 %208
  store %struct.comedi_subdevice* %209, %struct.comedi_subdevice** %9, align 8
  %210 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %211 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @COMEDI_SUBD_UNUSED, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %225

215:                                              ; preds = %202
  %216 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %217 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %220 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = call i32 (i32, i8*, ...) @dev_dbg(i32 %218, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %221)
  %223 = load i32, i32* @EIO, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %10, align 4
  br label %456

225:                                              ; preds = %202
  %226 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %227 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %243

230:                                              ; preds = %225
  %231 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %232 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = load i8*, i8** %8, align 8
  %235 = icmp ne i8* %233, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %230
  %237 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %238 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = call i32 (i32, i8*, ...) @dev_dbg(i32 %239, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %241 = load i32, i32* @EACCES, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %10, align 4
  br label %456

243:                                              ; preds = %230, %225
  %244 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %245 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %246 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %245, i32 0, i32 3
  %247 = call i32 @comedi_check_chanlist(%struct.comedi_subdevice* %244, i32 1, i32* %246)
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %243
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %10, align 4
  %253 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %254 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i32 (i32, i8*, ...) @dev_dbg(i32 %255, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %456

257:                                              ; preds = %243
  %258 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %259 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %258, i32 0, i32 2
  %260 = load i32 (%struct.comedi_device.0*, %struct.comedi_insn.1*, i32*, i8*)*, i32 (%struct.comedi_device.0*, %struct.comedi_insn.1*, i32*, i8*)** %259, align 8
  %261 = icmp ne i32 (%struct.comedi_device.0*, %struct.comedi_insn.1*, i32*, i8*)* %260, null
  br i1 %261, label %262, label %265

262:                                              ; preds = %257
  %263 = load i32, i32* @EBUSY, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %10, align 4
  br label %456

265:                                              ; preds = %257
  %266 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %267 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %266, i32 0, i32 2
  store i32 (%struct.comedi_device.0*, %struct.comedi_insn.1*, i32*, i8*)* bitcast (i32 (%struct.comedi_device*, %struct.comedi_insn*, i32*, i8*)* @parse_insn to i32 (%struct.comedi_device.0*, %struct.comedi_insn.1*, i32*, i8*)*), i32 (%struct.comedi_device.0*, %struct.comedi_insn.1*, i32*, i8*)** %267, align 8
  %268 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %269 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  switch i32 %270, label %449 [
    i32 130, label %271
    i32 128, label %295
    i32 135, label %369
    i32 134, label %431
  ]

271:                                              ; preds = %265
  %272 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %273 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %272, i32 0, i32 3
  %274 = load i32 (%struct.comedi_device.2*, %struct.comedi_subdevice*, %struct.comedi_insn.3*, i32*)*, i32 (%struct.comedi_device.2*, %struct.comedi_subdevice*, %struct.comedi_insn.3*, i32*)** %273, align 8
  %275 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %276 = bitcast %struct.comedi_device* %275 to %struct.comedi_device.2*
  %277 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %278 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %279 = bitcast %struct.comedi_insn* %278 to %struct.comedi_insn.3*
  %280 = load i32*, i32** %7, align 8
  %281 = call i32 %274(%struct.comedi_device.2* %276, %struct.comedi_subdevice* %277, %struct.comedi_insn.3* %279, i32* %280)
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @ETIMEDOUT, align 4
  %284 = sub nsw i32 0, %283
  %285 = icmp eq i32 %282, %284
  br i1 %285, label %286, label %294

286:                                              ; preds = %271
  %287 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %288 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %291 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %290, i32 0, i32 4
  %292 = load i64, i64* %291, align 8
  %293 = call i32 (i32, i8*, ...) @dev_dbg(i32 %289, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 %292)
  br label %294

294:                                              ; preds = %286, %271
  br label %452

295:                                              ; preds = %265
  %296 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %297 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %296, i32 0, i32 5
  %298 = load i32*, i32** %297, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %310

300:                                              ; preds = %295
  %301 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %302 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %301, i32 0, i32 5
  %303 = load i32*, i32** %302, align 8
  %304 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %305 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = call i64 @CR_CHAN(i32 %306)
  %308 = getelementptr inbounds i32, i32* %303, i64 %307
  %309 = load i32, i32* %308, align 4
  br label %314

310:                                              ; preds = %295
  %311 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %312 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %311, i32 0, i32 6
  %313 = load i32, i32* %312, align 8
  br label %314

314:                                              ; preds = %310, %300
  %315 = phi i32 [ %309, %300 ], [ %313, %310 ]
  store i32 %315, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %316

316:                                              ; preds = %338, %314
  %317 = load i32, i32* %11, align 4
  %318 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %319 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = icmp slt i32 %317, %320
  br i1 %321, label %322, label %341

322:                                              ; preds = %316
  %323 = load i32*, i32** %7, align 8
  %324 = load i32, i32* %11, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %13, align 4
  %329 = icmp ugt i32 %327, %328
  br i1 %329, label %330, label %337

330:                                              ; preds = %322
  %331 = load i32, i32* @EINVAL, align 4
  %332 = sub nsw i32 0, %331
  store i32 %332, i32* %10, align 4
  %333 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %334 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = call i32 (i32, i8*, ...) @dev_dbg(i32 %335, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %341

337:                                              ; preds = %322
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %11, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %11, align 4
  br label %316

341:                                              ; preds = %330, %316
  %342 = load i32, i32* %10, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %368

344:                                              ; preds = %341
  %345 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %346 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %345, i32 0, i32 7
  %347 = load i32 (%struct.comedi_device.4*, %struct.comedi_subdevice*, %struct.comedi_insn.5*, i32*)*, i32 (%struct.comedi_device.4*, %struct.comedi_subdevice*, %struct.comedi_insn.5*, i32*)** %346, align 8
  %348 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %349 = bitcast %struct.comedi_device* %348 to %struct.comedi_device.4*
  %350 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %351 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %352 = bitcast %struct.comedi_insn* %351 to %struct.comedi_insn.5*
  %353 = load i32*, i32** %7, align 8
  %354 = call i32 %347(%struct.comedi_device.4* %349, %struct.comedi_subdevice* %350, %struct.comedi_insn.5* %352, i32* %353)
  store i32 %354, i32* %10, align 4
  %355 = load i32, i32* %10, align 4
  %356 = load i32, i32* @ETIMEDOUT, align 4
  %357 = sub nsw i32 0, %356
  %358 = icmp eq i32 %355, %357
  br i1 %358, label %359, label %367

359:                                              ; preds = %344
  %360 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %361 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %364 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %363, i32 0, i32 4
  %365 = load i64, i64* %364, align 8
  %366 = call i32 (i32, i8*, ...) @dev_dbg(i32 %362, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i64 %365)
  br label %367

367:                                              ; preds = %359, %344
  br label %368

368:                                              ; preds = %367, %341
  br label %452

369:                                              ; preds = %265
  %370 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %371 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = icmp ne i32 %372, 2
  br i1 %373, label %374, label %377

374:                                              ; preds = %369
  %375 = load i32, i32* @EINVAL, align 4
  %376 = sub nsw i32 0, %375
  store i32 %376, i32* %10, align 4
  br label %430

377:                                              ; preds = %369
  %378 = load i32*, i32** %7, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 0
  %380 = load i32, i32* %379, align 4
  store i32 %380, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %381 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %382 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %381, i32 0, i32 8
  %383 = load i32, i32* %382, align 8
  %384 = icmp sle i32 %383, 32
  br i1 %384, label %385, label %407

385:                                              ; preds = %377
  %386 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %387 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 8
  %389 = call i64 @CR_CHAN(i32 %388)
  %390 = trunc i64 %389 to i32
  store i32 %390, i32* %15, align 4
  %391 = load i32, i32* %15, align 4
  %392 = icmp ugt i32 %391, 0
  br i1 %392, label %393, label %406

393:                                              ; preds = %385
  %394 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %395 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %394, i32 0, i32 3
  store i32 0, i32* %395, align 8
  %396 = load i32, i32* %15, align 4
  %397 = load i32*, i32** %7, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 0
  %399 = load i32, i32* %398, align 4
  %400 = shl i32 %399, %396
  store i32 %400, i32* %398, align 4
  %401 = load i32, i32* %15, align 4
  %402 = load i32*, i32** %7, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 1
  %404 = load i32, i32* %403, align 4
  %405 = shl i32 %404, %401
  store i32 %405, i32* %403, align 4
  br label %406

406:                                              ; preds = %393, %385
  br label %407

407:                                              ; preds = %406, %377
  %408 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %409 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %408, i32 0, i32 9
  %410 = load i32 (%struct.comedi_device.6*, %struct.comedi_subdevice*, %struct.comedi_insn.7*, i32*)*, i32 (%struct.comedi_device.6*, %struct.comedi_subdevice*, %struct.comedi_insn.7*, i32*)** %409, align 8
  %411 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %412 = bitcast %struct.comedi_device* %411 to %struct.comedi_device.6*
  %413 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %414 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %415 = bitcast %struct.comedi_insn* %414 to %struct.comedi_insn.7*
  %416 = load i32*, i32** %7, align 8
  %417 = call i32 %410(%struct.comedi_device.6* %412, %struct.comedi_subdevice* %413, %struct.comedi_insn.7* %415, i32* %416)
  store i32 %417, i32* %10, align 4
  %418 = load i32, i32* %14, align 4
  %419 = load i32*, i32** %7, align 8
  %420 = getelementptr inbounds i32, i32* %419, i64 0
  store i32 %418, i32* %420, align 4
  %421 = load i32, i32* %15, align 4
  %422 = icmp ugt i32 %421, 0
  br i1 %422, label %423, label %429

423:                                              ; preds = %407
  %424 = load i32, i32* %15, align 4
  %425 = load i32*, i32** %7, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 1
  %427 = load i32, i32* %426, align 4
  %428 = lshr i32 %427, %424
  store i32 %428, i32* %426, align 4
  br label %429

429:                                              ; preds = %423, %407
  br label %430

430:                                              ; preds = %429, %374
  br label %452

431:                                              ; preds = %265
  %432 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %433 = load i32*, i32** %7, align 8
  %434 = call i32 @check_insn_config_length(%struct.comedi_insn* %432, i32* %433)
  store i32 %434, i32* %10, align 4
  %435 = load i32, i32* %10, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %431
  br label %452

438:                                              ; preds = %431
  %439 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %440 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %439, i32 0, i32 10
  %441 = load i32 (%struct.comedi_device.8*, %struct.comedi_subdevice*, %struct.comedi_insn.9*, i32*)*, i32 (%struct.comedi_device.8*, %struct.comedi_subdevice*, %struct.comedi_insn.9*, i32*)** %440, align 8
  %442 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %443 = bitcast %struct.comedi_device* %442 to %struct.comedi_device.8*
  %444 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %445 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %446 = bitcast %struct.comedi_insn* %445 to %struct.comedi_insn.9*
  %447 = load i32*, i32** %7, align 8
  %448 = call i32 %441(%struct.comedi_device.8* %443, %struct.comedi_subdevice* %444, %struct.comedi_insn.9* %446, i32* %447)
  store i32 %448, i32* %10, align 4
  br label %452

449:                                              ; preds = %265
  %450 = load i32, i32* @EINVAL, align 4
  %451 = sub nsw i32 0, %450
  store i32 %451, i32* %10, align 4
  br label %452

452:                                              ; preds = %449, %438, %437, %430, %368, %294
  %453 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %454 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %453, i32 0, i32 2
  store i32 (%struct.comedi_device.0*, %struct.comedi_insn.1*, i32*, i8*)* null, i32 (%struct.comedi_device.0*, %struct.comedi_insn.1*, i32*, i8*)** %454, align 8
  br label %455

455:                                              ; preds = %452, %183
  br label %456

456:                                              ; preds = %455, %262, %250, %236, %215, %192
  %457 = load i32, i32* %10, align 4
  ret i32 %457
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @check_insn_device_config_length(%struct.comedi_insn*, i32*) #1

declare dso_local i32 @get_valid_routes(%struct.comedi_device*, i32*) #1

declare dso_local i32 @comedi_check_chanlist(%struct.comedi_subdevice*, i32, i32*) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @check_insn_config_length(%struct.comedi_insn*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
