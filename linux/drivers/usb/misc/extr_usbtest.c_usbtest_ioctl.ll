; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_usbtest_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_usbtest_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.usbtest_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.usbtest_param_64 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.usbtest_param_32 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@mod_pattern = common dso_local global i32 0, align 4
@pattern = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"set altsetting to %d failed, %d\0A\00", align 1
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32, i8*)* @usbtest_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtest_ioctl(%struct.usb_interface* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usbtest_dev*, align 8
  %9 = alloca %struct.usbtest_param_64*, align 8
  %10 = alloca %struct.usbtest_param_32, align 4
  %11 = alloca %struct.usbtest_param_32*, align 8
  %12 = alloca %struct.timespec64, align 4
  %13 = alloca %struct.timespec64, align 4
  %14 = alloca %struct.timespec64, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.timespec64, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %18 = call %struct.usbtest_dev* @usb_get_intfdata(%struct.usb_interface* %17)
  store %struct.usbtest_dev* %18, %struct.usbtest_dev** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.usbtest_param_64*
  store %struct.usbtest_param_64* %20, %struct.usbtest_param_64** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.usbtest_param_32*
  store %struct.usbtest_param_32* %22, %struct.usbtest_param_32** %11, align 8
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* @mod_pattern, align 4
  store i32 %25, i32* @pattern, align 4
  %26 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %27 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %26, i32 0, i32 0
  %28 = call i64 @mutex_lock_interruptible(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ERESTARTSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %150

33:                                               ; preds = %3
  %34 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %35 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %33
  %41 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %42 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %15, align 4
  br label %145

51:                                               ; preds = %40
  %52 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %53 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %54 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @set_altsetting(%struct.usbtest_dev* %52, i64 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %51
  %62 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %63 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %62, i32 0, i32 0
  %64 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %65 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %68, i32 %69)
  br label %145

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i32, i32* %6, align 4
  switch i32 %73, label %96 [
    i32 128, label %74
    i32 129, label %95
  ]

74:                                               ; preds = %72
  %75 = load %struct.usbtest_param_64*, %struct.usbtest_param_64** %9, align 8
  %76 = getelementptr inbounds %struct.usbtest_param_64, %struct.usbtest_param_64* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %10, i32 0, i32 6
  store i32 %77, i32* %78, align 4
  %79 = load %struct.usbtest_param_64*, %struct.usbtest_param_64** %9, align 8
  %80 = getelementptr inbounds %struct.usbtest_param_64, %struct.usbtest_param_64* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %10, i32 0, i32 5
  store i32 %81, i32* %82, align 4
  %83 = load %struct.usbtest_param_64*, %struct.usbtest_param_64** %9, align 8
  %84 = getelementptr inbounds %struct.usbtest_param_64, %struct.usbtest_param_64* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %10, i32 0, i32 4
  store i32 %85, i32* %86, align 4
  %87 = load %struct.usbtest_param_64*, %struct.usbtest_param_64** %9, align 8
  %88 = getelementptr inbounds %struct.usbtest_param_64, %struct.usbtest_param_64* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %10, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  %91 = load %struct.usbtest_param_64*, %struct.usbtest_param_64** %9, align 8
  %92 = getelementptr inbounds %struct.usbtest_param_64, %struct.usbtest_param_64* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %10, i32 0, i32 2
  store i32 %93, i32* %94, align 4
  store %struct.usbtest_param_32* %10, %struct.usbtest_param_32** %11, align 8
  br label %99

95:                                               ; preds = %72
  br label %99

96:                                               ; preds = %72
  %97 = load i32, i32* @EOPNOTSUPP, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %15, align 4
  br label %145

99:                                               ; preds = %95, %74
  %100 = call i32 @ktime_get_ts64(%struct.timespec64* %12)
  %101 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %102 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %11, align 8
  %103 = call i32 @usbtest_do_ioctl(%struct.usb_interface* %101, %struct.usbtest_param_32* %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %145

107:                                              ; preds = %99
  %108 = call i32 @ktime_get_ts64(%struct.timespec64* %13)
  %109 = bitcast %struct.timespec64* %13 to i64*
  %110 = load i64, i64* %109, align 4
  %111 = bitcast %struct.timespec64* %12 to i64*
  %112 = load i64, i64* %111, align 4
  %113 = call i64 @timespec64_sub(i64 %110, i64 %112)
  %114 = bitcast %struct.timespec64* %16 to i64*
  store i64 %113, i64* %114, align 4
  %115 = bitcast %struct.timespec64* %14 to i8*
  %116 = bitcast %struct.timespec64* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 8, i1 false)
  %117 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %14, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %10, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %14, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @NSEC_PER_USEC, align 4
  %123 = sdiv i32 %121, %122
  %124 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %10, i32 0, i32 0
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %6, align 4
  switch i32 %125, label %144 [
    i32 129, label %126
    i32 128, label %135
  ]

126:                                              ; preds = %107
  %127 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %10, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %11, align 8
  %130 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %10, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %11, align 8
  %134 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %144

135:                                              ; preds = %107
  %136 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %10, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.usbtest_param_64*, %struct.usbtest_param_64** %9, align 8
  %139 = getelementptr inbounds %struct.usbtest_param_64, %struct.usbtest_param_64* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %10, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.usbtest_param_64*, %struct.usbtest_param_64** %9, align 8
  %143 = getelementptr inbounds %struct.usbtest_param_64, %struct.usbtest_param_64* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %107, %135, %126
  br label %145

145:                                              ; preds = %144, %106, %96, %61, %48
  %146 = load %struct.usbtest_dev*, %struct.usbtest_dev** %8, align 8
  %147 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %146, i32 0, i32 0
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %145, %30
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.usbtest_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @set_altsetting(%struct.usbtest_dev*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32) #1

declare dso_local i32 @ktime_get_ts64(%struct.timespec64*) #1

declare dso_local i32 @usbtest_do_ioctl(%struct.usb_interface*, %struct.usbtest_param_32*) #1

declare dso_local i64 @timespec64_sub(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
