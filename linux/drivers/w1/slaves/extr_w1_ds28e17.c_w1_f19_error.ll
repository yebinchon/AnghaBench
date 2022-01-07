; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_w1_f19_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e17.c_w1_f19_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32 }

@W1_F19_STATUS_CRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"crc16 mismatch\0A\00", align 1
@W1_F19_STATUS_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"i2c device not responding\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"i2c short write, %d bytes not acknowledged\0A\00", align 1
@ENXIO = common dso_local global i64 0, align 8
@W1_F19_STATUS_START = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.w1_slave*, i32*)* @w1_f19_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @w1_f19_error(%struct.w1_slave* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.w1_slave*, align 8
  %5 = alloca i32*, align 8
  store %struct.w1_slave* %0, %struct.w1_slave** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @W1_F19_STATUS_CRC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %14 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_warn(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @W1_F19_STATUS_ADDRESS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %25 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_warn(i32* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %16
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @W1_F19_STATUS_CRC, align 4
  %32 = load i32, i32* @W1_F19_STATUS_ADDRESS, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %27
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %43 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %42, i32 0, i32 0
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32*, i8*, ...) @dev_warn(i32* %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %41, %36, %27
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @W1_F19_STATUS_ADDRESS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i64, i64* @ENXIO, align 8
  %57 = sub i64 0, %56
  store i64 %57, i64* %3, align 8
  br label %82

58:                                               ; preds = %48
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @W1_F19_STATUS_START, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i64, i64* @EAGAIN, align 8
  %67 = sub i64 0, %66
  store i64 %67, i64* %3, align 8
  br label %82

68:                                               ; preds = %58
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %68
  %79 = load i64, i64* @EIO, align 8
  %80 = sub i64 0, %79
  store i64 %80, i64* %3, align 8
  br label %82

81:                                               ; preds = %73
  store i64 0, i64* %3, align 8
  br label %82

82:                                               ; preds = %81, %78, %65, %55
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
