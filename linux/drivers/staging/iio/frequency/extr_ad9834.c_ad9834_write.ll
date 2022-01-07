; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9834.c_ad9834_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9834.c_ad9834_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad9834_state = type { i32, i32, i32, i32, i8* }
%struct.iio_dev_attr = type { i32 }

@AD9834_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AD9834_REG_CMD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad9834_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9834_write(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.ad9834_state*, align 8
  %12 = alloca %struct.iio_dev_attr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %10, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %18 = call %struct.ad9834_state* @iio_priv(%struct.iio_dev* %17)
  store %struct.ad9834_state* %18, %struct.ad9834_state** %11, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %19)
  store %struct.iio_dev_attr* %20, %struct.iio_dev_attr** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 10, i64* %14)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %206

27:                                               ; preds = %4
  %28 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %29 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %32 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %189 [
    i32 132, label %34
    i32 131, label %34
    i32 130, label %41
    i32 129, label %41
    i32 135, label %48
    i32 134, label %86
    i32 136, label %114
    i32 133, label %114
    i32 128, label %161
  ]

34:                                               ; preds = %27, %27
  %35 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %36 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %37 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @ad9834_write_frequency(%struct.ad9834_state* %35, i32 %38, i64 %39)
  store i32 %40, i32* %13, align 4
  br label %192

41:                                               ; preds = %27, %27
  %42 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %43 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %44 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @ad9834_write_phase(%struct.ad9834_state* %42, i32 %45, i64 %46)
  store i32 %47, i32* %13, align 4
  br label %192

48:                                               ; preds = %27
  %49 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %50 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AD9834_MODE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %192

58:                                               ; preds = %48
  %59 = load i64, i64* %14, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %63 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, 135
  store i32 %65, i32* %63, align 8
  br label %71

66:                                               ; preds = %58
  %67 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %68 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, -136
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i32, i32* @AD9834_REG_CMD, align 4
  %73 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %74 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %72, %75
  %77 = call i8* @cpu_to_be16(i32 %76)
  %78 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %79 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %81 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %84 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %83, i32 0, i32 2
  %85 = call i32 @spi_sync(i32 %82, i32* %84)
  store i32 %85, i32* %13, align 4
  br label %192

86:                                               ; preds = %27
  %87 = load i64, i64* %14, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %91 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, 134
  store i32 %93, i32* %91, align 8
  br label %99

94:                                               ; preds = %86
  %95 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %96 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, -135
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* @AD9834_REG_CMD, align 4
  %101 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %102 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %100, %103
  %105 = call i8* @cpu_to_be16(i32 %104)
  %106 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %107 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %109 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %112 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %111, i32 0, i32 2
  %113 = call i32 @spi_sync(i32 %110, i32* %112)
  store i32 %113, i32* %13, align 4
  br label %192

114:                                              ; preds = %27, %27
  %115 = load i64, i64* %14, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %114
  %118 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %119 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, 134
  %122 = xor i32 %121, -1
  %123 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %124 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %146

127:                                              ; preds = %114
  %128 = load i64, i64* %14, align 8
  %129 = icmp eq i64 %128, 1
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %132 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %135 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %139 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, -135
  store i32 %141, i32* %139, align 8
  br label %145

142:                                              ; preds = %127
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %13, align 4
  br label %192

145:                                              ; preds = %130
  br label %146

146:                                              ; preds = %145, %117
  %147 = load i32, i32* @AD9834_REG_CMD, align 4
  %148 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %149 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %147, %150
  %152 = call i8* @cpu_to_be16(i32 %151)
  %153 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %154 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %153, i32 0, i32 4
  store i8* %152, i8** %154, align 8
  %155 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %156 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %159 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %158, i32 0, i32 2
  %160 = call i32 @spi_sync(i32 %157, i32* %159)
  store i32 %160, i32* %13, align 4
  br label %192

161:                                              ; preds = %27
  %162 = load i64, i64* %14, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %166 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, -129
  store i32 %168, i32* %166, align 8
  br label %174

169:                                              ; preds = %161
  %170 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %171 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, 128
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %169, %164
  %175 = load i32, i32* @AD9834_REG_CMD, align 4
  %176 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %177 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %175, %178
  %180 = call i8* @cpu_to_be16(i32 %179)
  %181 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %182 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %181, i32 0, i32 4
  store i8* %180, i8** %182, align 8
  %183 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %184 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %187 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %186, i32 0, i32 2
  %188 = call i32 @spi_sync(i32 %185, i32* %187)
  store i32 %188, i32* %13, align 4
  br label %192

189:                                              ; preds = %27
  %190 = load i32, i32* @ENODEV, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %189, %174, %146, %142, %99, %71, %55, %41, %34
  %193 = load %struct.ad9834_state*, %struct.ad9834_state** %11, align 8
  %194 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %193, i32 0, i32 1
  %195 = call i32 @mutex_unlock(i32* %194)
  %196 = load i32, i32* %13, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  br label %203

201:                                              ; preds = %192
  %202 = load i64, i64* %9, align 8
  br label %203

203:                                              ; preds = %201, %198
  %204 = phi i64 [ %200, %198 ], [ %202, %201 ]
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %203, %25
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad9834_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad9834_write_frequency(%struct.ad9834_state*, i32, i64) #1

declare dso_local i32 @ad9834_write_phase(%struct.ad9834_state*, i32, i64) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
