; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9834.c_ad9834_store_wavetype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/frequency/extr_ad9834.c_ad9834_store_wavetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad9834_state = type { i64, i32, i32, i32, i32, i32 }
%struct.iio_dev_attr = type { i32 }

@ID_AD9833 = common dso_local global i64 0, align 8
@ID_AD9837 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"sine\00", align 1
@AD9834_MODE = common dso_local global i32 0, align 4
@AD9834_OPBITEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"triangle\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"square\00", align 1
@AD9834_REG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ad9834_store_wavetype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9834_store_wavetype(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.ad9834_state*, align 8
  %11 = alloca %struct.iio_dev_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %9, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %17 = call %struct.ad9834_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad9834_state* %17, %struct.ad9834_state** %10, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %19 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %18)
  store %struct.iio_dev_attr* %19, %struct.iio_dev_attr** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %21 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ID_AD9833, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %27 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ID_AD9837, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %25, %4
  %32 = phi i1 [ true, %4 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %35 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %34, i32 0, i32 2
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %11, align 8
  %38 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %150 [
    i32 0, label %40
    i32 1, label %123
  ]

40:                                               ; preds = %31
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @sysfs_streq(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i32, i32* @AD9834_MODE, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %48 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load i32, i32* @AD9834_OPBITEN, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %57 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %53, %44
  br label %122

61:                                               ; preds = %40
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @sysfs_streq(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %61
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i32, i32* @AD9834_OPBITEN, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %72 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @AD9834_MODE, align 4
  %76 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %77 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %97

80:                                               ; preds = %65
  %81 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %82 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AD9834_OPBITEN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %12, align 4
  br label %96

90:                                               ; preds = %80
  %91 = load i32, i32* @AD9834_MODE, align 4
  %92 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %93 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %87
  br label %97

97:                                               ; preds = %96, %68
  br label %121

98:                                               ; preds = %61
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %98
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @sysfs_streq(i8* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i32, i32* @AD9834_MODE, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %109 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* @AD9834_OPBITEN, align 4
  %113 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %114 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %120

117:                                              ; preds = %101, %98
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %117, %105
  br label %121

121:                                              ; preds = %120, %97
  br label %122

122:                                              ; preds = %121, %60
  br label %153

123:                                              ; preds = %31
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @sysfs_streq(i8* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %123
  %128 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %129 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @AD9834_MODE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* @AD9834_MODE, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %138 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* @AD9834_OPBITEN, align 4
  %142 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %143 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %149

146:                                              ; preds = %127, %123
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %146, %134
  br label %153

150:                                              ; preds = %31
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %150, %149, %122
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %171, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* @AD9834_REG_CMD, align 4
  %158 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %159 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %157, %160
  %162 = call i32 @cpu_to_be16(i32 %161)
  %163 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %164 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 8
  %165 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %166 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %169 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %168, i32 0, i32 3
  %170 = call i32 @spi_sync(i32 %167, i32* %169)
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %156, %153
  %172 = load %struct.ad9834_state*, %struct.ad9834_state** %10, align 8
  %173 = getelementptr inbounds %struct.ad9834_state, %struct.ad9834_state* %172, i32 0, i32 2
  %174 = call i32 @mutex_unlock(i32* %173)
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  br label %182

180:                                              ; preds = %171
  %181 = load i64, i64* %8, align 8
  br label %182

182:                                              ; preds = %180, %177
  %183 = phi i64 [ %179, %177 ], [ %181, %180 ]
  %184 = trunc i64 %183 to i32
  ret i32 %184
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ad9834_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
