; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_sysfs.c_ctcm_buffer_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_sysfs.c_ctcm_buffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.ctcm_priv = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, %struct.net_device* }

@CTCM_READ = common dso_local global i64 0, align 8
@SETUP = common dso_local global i32 0, align 4
@CTC_DBF_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"bfnondev\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@CTCM_BUFSIZE_LIMIT = common dso_local global i32 0, align 4
@LL_HEADER_LENGTH = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@CTCM_WRITE = common dso_local global i64 0, align 8
@CHANNEL_FLAGS_BUFSIZE_CHANGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"buff_err\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ctcm_buffer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ctcm_buffer_write(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ctcm_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.ctcm_priv* @dev_get_drvdata(%struct.device* %14)
  store %struct.ctcm_priv* %15, %struct.ctcm_priv** %12, align 8
  %16 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %17 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %17, align 8
  %19 = load i64, i64* @CTCM_READ, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %10, align 8
  %24 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %25 = icmp ne %struct.ctcm_priv* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %4
  %27 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %28 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i64, i64* @CTCM_READ, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.net_device*, %struct.net_device** %10, align 8
  %36 = icmp ne %struct.net_device* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34, %26, %4
  %38 = load i32, i32* @SETUP, align 4
  %39 = load i32, i32* @CTC_DBF_ERROR, align 4
  %40 = call i32 @CTCM_DBF_TEXT(i32 %38, i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %41 = load i64, i64* @ENODEV, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %143

43:                                               ; preds = %34
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @kstrtouint(i8* %44, i32 0, i32* %11)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %137

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @CTCM_BUFSIZE_LIMIT, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %137

54:                                               ; preds = %49
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %57 = add nsw i32 576, %56
  %58 = add nsw i32 %57, 2
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %137

61:                                               ; preds = %54
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %64 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.net_device*, %struct.net_device** %10, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFF_RUNNING, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.net_device*, %struct.net_device** %10, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %77 = add nsw i32 %75, %76
  %78 = add nsw i32 %77, 2
  %79 = icmp ult i32 %72, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %137

81:                                               ; preds = %71, %61
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %84 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %84, align 8
  %86 = load i64, i64* @CTCM_READ, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %85, i64 %86
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %82, i32* %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %92 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %92, align 8
  %94 = load i64, i64* @CTCM_WRITE, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %93, i64 %94
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %90, i32* %97, align 8
  %98 = load %struct.net_device*, %struct.net_device** %10, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IFF_RUNNING, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %81
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %107 = sub i32 %105, %106
  %108 = sub i32 %107, 2
  %109 = load %struct.net_device*, %struct.net_device** %10, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %104, %81
  %112 = load i32, i32* @CHANNEL_FLAGS_BUFSIZE_CHANGED, align 4
  %113 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %114 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %114, align 8
  %116 = load i64, i64* @CTCM_READ, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %115, i64 %116
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %112
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* @CHANNEL_FLAGS_BUFSIZE_CHANGED, align 4
  %123 = load %struct.ctcm_priv*, %struct.ctcm_priv** %12, align 8
  %124 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %124, align 8
  %126 = load i64, i64* @CTCM_WRITE, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %125, i64 %126
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %122
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* @SETUP, align 4
  %133 = load %struct.net_device*, %struct.net_device** %10, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @CTCM_DBF_DEV(i32 %132, %struct.net_device* %133, i8* %134)
  %136 = load i64, i64* %9, align 8
  store i64 %136, i64* %5, align 8
  br label %143

137:                                              ; preds = %80, %60, %53, %48
  %138 = load i32, i32* @SETUP, align 4
  %139 = load %struct.net_device*, %struct.net_device** %10, align 8
  %140 = call i32 @CTCM_DBF_DEV(i32 %138, %struct.net_device* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i64, i64* @EINVAL, align 8
  %142 = sub i64 0, %141
  store i64 %142, i64* %5, align 8
  br label %143

143:                                              ; preds = %137, %111, %37
  %144 = load i64, i64* %5, align 8
  ret i64 %144
}

declare dso_local %struct.ctcm_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @CTCM_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @CTCM_DBF_DEV(i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
