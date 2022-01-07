; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_i801_check_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_i2c.c_i801_check_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Transaction timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Terminating the current operation\0A\00", align 1
@SMBHSTCNT_KILL = common dso_local global i32 0, align 4
@SMBHSTSTS_HOST_BUSY = common dso_local global i32 0, align 4
@SMBHSTSTS_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed terminating the transaction\0A\00", align 1
@STATUS_FLAGS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Transaction failed\0A\00", align 1
@SMBHSTSTS_DEV_ERR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"No response\0A\00", align 1
@SMBHSTSTS_BUS_ERR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Lost arbitration\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Failed clearing status flags at end of transaction (%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device*, i32, i32)* @i801_check_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_check_post(%struct.i2c_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_device* %0, %struct.i2c_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %62

11:                                               ; preds = %3
  %12 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %21 = call i32 @SMBHSTCNT(%struct.i2c_device* %20)
  %22 = call i32 @inb_p(i32 %21)
  %23 = load i32, i32* @SMBHSTCNT_KILL, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %26 = call i32 @SMBHSTCNT(%struct.i2c_device* %25)
  %27 = call i32 @outb_p(i32 %24, i32 %26)
  %28 = call i32 @usleep_range(i32 1000, i32 2000)
  %29 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %30 = call i32 @SMBHSTCNT(%struct.i2c_device* %29)
  %31 = call i32 @inb_p(i32 %30)
  %32 = load i32, i32* @SMBHSTCNT_KILL, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %36 = call i32 @SMBHSTCNT(%struct.i2c_device* %35)
  %37 = call i32 @outb_p(i32 %34, i32 %36)
  %38 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %39 = call i32 @SMBHSTSTS(%struct.i2c_device* %38)
  %40 = call i32 @inb_p(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @SMBHSTSTS_HOST_BUSY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %11
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SMBHSTSTS_FAILED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45, %11
  %51 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %52 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* @STATUS_FLAGS, align 4
  %57 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %58 = call i32 @SMBHSTSTS(%struct.i2c_device* %57)
  %59 = call i32 @outb_p(i32 %56, i32 %58)
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %124

62:                                               ; preds = %3
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @SMBHSTSTS_FAILED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  %70 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %71 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %67, %62
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @SMBHSTSTS_DEV_ERR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32, i32* @ENXIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  %82 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %83 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @dev_dbg(i32* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %79, %74
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @SMBHSTSTS_BUS_ERR, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* @EAGAIN, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  %94 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %95 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = call i32 @dev_dbg(i32* %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %91, %86
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @STATUS_FLAGS, align 4
  %104 = and i32 %102, %103
  %105 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %106 = call i32 @SMBHSTSTS(%struct.i2c_device* %105)
  %107 = call i32 @outb_p(i32 %104, i32 %106)
  %108 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %109 = call i32 @SMBHSTSTS(%struct.i2c_device* %108)
  %110 = call i32 @inb_p(i32 %109)
  %111 = load i32, i32* @STATUS_FLAGS, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %101
  %116 = load %struct.i2c_device*, %struct.i2c_device** %5, align 8
  %117 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @dev_warn(i32* %118, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %115, %101
  br label %122

122:                                              ; preds = %121, %98
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %55
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBHSTCNT(%struct.i2c_device*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @SMBHSTSTS(%struct.i2c_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
