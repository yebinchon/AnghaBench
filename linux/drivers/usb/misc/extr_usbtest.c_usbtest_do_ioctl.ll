; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_usbtest_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_usbtest_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbtest_param_32 = type { i64, i64, i32, i32, i32 }
%struct.usbtest_dev = type { i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, i32*, i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.urb = type { i32 }
%struct.scatterlist = type { i32 }
%struct.usb_sg_request = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_SGLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"TEST 0:  NOP\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"TEST 1:  write %d bytes %u times\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"test1\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"TEST 2:  read %d bytes %u times\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"test2\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"TEST 3:  write/%d 0..%d bytes %u times\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"test3\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"TEST 4:  read/%d 0..%d bytes %u times\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"test4\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"TEST 5:  write %d sglists %d entries of %d bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"TEST 6:  read %d sglists %d entries of %d bytes\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"TEST 7:  write/%d %d sglists %d entries 0..%d bytes\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"TEST 8:  read/%d %d sglists %d entries 0..%d bytes\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"TEST 9:  ch9 (subset) control tests, %d times\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"ch9 subset failed, iterations left %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"TEST 10:  queue %d control calls, %d times\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"TEST 11:  unlink %d reads of %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"unlink reads failed %d, iterations left %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"TEST 12:  unlink %d writes of %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"unlink writes failed %d, iterations left %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"TEST 13:  set/clear %d halts\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"halts failed, iterations left %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"TEST 14:  %d ep0out, %d..%d vary %d\0A\00", align 1
@realworld = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [48 x i8] c"TEST 15:  write %d iso, %d entries of %d bytes\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"TEST 16:  read %d iso, %d entries of %d bytes\0A\00", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"TEST 17:  write odd addr %d bytes %u times core map\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"test17\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"TEST 18:  read odd addr %d bytes %u times core map\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"test18\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"TEST 19:  write odd addr %d bytes %u times premapped\0A\00", align 1
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"test19\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"TEST 20:  read odd addr %d bytes %u times premapped\0A\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"test20\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"TEST 21:  %d ep0out odd addr, %d..%d vary %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"TEST 22:  write %d iso odd, %d entries of %d bytes\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"TEST 23:  read %d iso odd, %d entries of %d bytes\0A\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"TEST 24:  unlink from %d queues of %d %d-byte writes\0A\00", align 1
@.str.37 = private unnamed_addr constant [52 x i8] c"unlink queued writes failed %d, iterations left %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"TEST 25: write %d bytes %u times\0A\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"test25\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"TEST 26: read %d bytes %u times\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"test26\00", align 1
@pattern = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [30 x i8] c"TEST 27: bulk write %dMbytes\0A\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"TEST 28: bulk read %dMbytes\0A\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"TEST 29: Clear toggle between bulk writes %d times\0A\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"toggle sync failed, iterations left %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usbtest_param_32*)* @usbtest_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtest_do_ioctl(%struct.usb_interface* %0, %struct.usbtest_param_32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usbtest_param_32*, align 8
  %6 = alloca %struct.usbtest_dev*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.usb_sg_request, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usbtest_param_32* %1, %struct.usbtest_param_32** %5, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usbtest_dev* @usb_get_intfdata(%struct.usb_interface* %13)
  store %struct.usbtest_dev* %14, %struct.usbtest_dev** %6, align 8
  %15 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %16 = call %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev* %15)
  store %struct.usb_device* %16, %struct.usb_device** %7, align 8
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %20 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %1252

26:                                               ; preds = %2
  %27 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %28 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MAX_SGLEN, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %1252

35:                                               ; preds = %26
  %36 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %37 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %1250 [
    i32 0, label %39
    i32 1, label %43
    i32 2, label %81
    i32 3, label %119
    i32 4, label %168
    i32 5, label %217
    i32 6, label %275
    i32 7, label %333
    i32 8, label %402
    i32 9, label %471
    i32 10, label %503
    i32 11, label %516
    i32 12, label %569
    i32 13, label %622
    i32 14, label %664
    i32 15, label %701
    i32 16, label %734
    i32 17, label %767
    i32 18, label %795
    i32 19, label %823
    i32 20, label %852
    i32 21, label %881
    i32 22, label %918
    i32 23, label %951
    i32 24, label %984
    i32 25, label %1051
    i32 26, label %1094
    i32 27, label %1137
    i32 28, label %1174
    i32 29, label %1211
  ]

39:                                               ; preds = %35
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_info(i32* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %1250

43:                                               ; preds = %35
  %44 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %45 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %1250

49:                                               ; preds = %43
  %50 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %51 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %50, i32 0, i32 0
  %52 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %53 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %56 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32*, i8*, ...) @dev_info(i32* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %54, i64 %57)
  %59 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %60 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %61 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %64 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.urb* @simple_alloc_urb(%struct.usb_device* %59, i32 %62, i32 %65, i32 0)
  store %struct.urb* %66, %struct.urb** %8, align 8
  %67 = load %struct.urb*, %struct.urb** %8, align 8
  %68 = icmp ne %struct.urb* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %49
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %12, align 4
  br label %1250

72:                                               ; preds = %49
  %73 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %74 = load %struct.urb*, %struct.urb** %8, align 8
  %75 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %76 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @simple_io(%struct.usbtest_dev* %73, %struct.urb* %74, i64 %77, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %78, i32* %12, align 4
  %79 = load %struct.urb*, %struct.urb** %8, align 8
  %80 = call i32 @simple_free_urb(%struct.urb* %79)
  br label %1250

81:                                               ; preds = %35
  %82 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %83 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %1250

87:                                               ; preds = %81
  %88 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %89 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %88, i32 0, i32 0
  %90 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %91 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %94 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32*, i8*, ...) @dev_info(i32* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %92, i64 %95)
  %97 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %98 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %99 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %102 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.urb* @simple_alloc_urb(%struct.usb_device* %97, i32 %100, i32 %103, i32 0)
  store %struct.urb* %104, %struct.urb** %8, align 8
  %105 = load %struct.urb*, %struct.urb** %8, align 8
  %106 = icmp ne %struct.urb* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %87
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %12, align 4
  br label %1250

110:                                              ; preds = %87
  %111 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %112 = load %struct.urb*, %struct.urb** %8, align 8
  %113 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %114 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @simple_io(%struct.usbtest_dev* %111, %struct.urb* %112, i64 %115, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %116, i32* %12, align 4
  %117 = load %struct.urb*, %struct.urb** %8, align 8
  %118 = call i32 @simple_free_urb(%struct.urb* %117)
  br label %1250

119:                                              ; preds = %35
  %120 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %121 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %126 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124, %119
  br label %1250

130:                                              ; preds = %124
  %131 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %132 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %131, i32 0, i32 0
  %133 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %134 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %137 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %140 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (i32*, i8*, ...) @dev_info(i32* %132, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %135, i32 %138, i64 %141)
  %143 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %144 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %145 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %148 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call %struct.urb* @simple_alloc_urb(%struct.usb_device* %143, i32 %146, i32 %149, i32 0)
  store %struct.urb* %150, %struct.urb** %8, align 8
  %151 = load %struct.urb*, %struct.urb** %8, align 8
  %152 = icmp ne %struct.urb* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %130
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %12, align 4
  br label %1250

156:                                              ; preds = %130
  %157 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %158 = load %struct.urb*, %struct.urb** %8, align 8
  %159 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %160 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %163 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @simple_io(%struct.usbtest_dev* %157, %struct.urb* %158, i64 %161, i32 %164, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 %165, i32* %12, align 4
  %166 = load %struct.urb*, %struct.urb** %8, align 8
  %167 = call i32 @simple_free_urb(%struct.urb* %166)
  br label %1250

168:                                              ; preds = %35
  %169 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %170 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %175 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173, %168
  br label %1250

179:                                              ; preds = %173
  %180 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %181 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %180, i32 0, i32 0
  %182 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %183 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %186 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %189 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 (i32*, i8*, ...) @dev_info(i32* %181, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %184, i32 %187, i64 %190)
  %192 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %193 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %194 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %197 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = call %struct.urb* @simple_alloc_urb(%struct.usb_device* %192, i32 %195, i32 %198, i32 0)
  store %struct.urb* %199, %struct.urb** %8, align 8
  %200 = load %struct.urb*, %struct.urb** %8, align 8
  %201 = icmp ne %struct.urb* %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %179
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %12, align 4
  br label %1250

205:                                              ; preds = %179
  %206 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %207 = load %struct.urb*, %struct.urb** %8, align 8
  %208 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %209 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %212 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @simple_io(%struct.usbtest_dev* %206, %struct.urb* %207, i64 %210, i32 %213, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 %214, i32* %12, align 4
  %215 = load %struct.urb*, %struct.urb** %8, align 8
  %216 = call i32 @simple_free_urb(%struct.urb* %215)
  br label %1250

217:                                              ; preds = %35
  %218 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %219 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %217
  %223 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %224 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %222, %217
  br label %1250

228:                                              ; preds = %222
  %229 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %230 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %229, i32 0, i32 0
  %231 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %232 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %235 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %238 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i32*, i8*, ...) @dev_info(i32* %230, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i64 %233, i64 %236, i32 %239)
  %241 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %242 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %245 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %248 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %249 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call %struct.scatterlist* @alloc_sglist(i64 %243, i32 %246, i32 0, %struct.usbtest_dev* %247, i32 %250)
  store %struct.scatterlist* %251, %struct.scatterlist** %9, align 8
  %252 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %253 = icmp ne %struct.scatterlist* %252, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %228
  %255 = load i32, i32* @ENOMEM, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %12, align 4
  br label %1250

257:                                              ; preds = %228
  %258 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %259 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %260 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %263 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %266 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %267 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @perform_sglist(%struct.usbtest_dev* %258, i64 %261, i32 %264, %struct.usb_sg_request* %10, %struct.scatterlist* %265, i64 %268)
  store i32 %269, i32* %12, align 4
  %270 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %271 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %272 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @free_sglist(%struct.scatterlist* %270, i64 %273)
  br label %1250

275:                                              ; preds = %35
  %276 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %277 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %285, label %280

280:                                              ; preds = %275
  %281 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %282 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %280, %275
  br label %1250

286:                                              ; preds = %280
  %287 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %288 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %287, i32 0, i32 0
  %289 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %290 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %293 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %296 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = call i32 (i32*, i8*, ...) @dev_info(i32* %288, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i64 %291, i64 %294, i32 %297)
  %299 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %300 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %303 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %306 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %307 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call %struct.scatterlist* @alloc_sglist(i64 %301, i32 %304, i32 0, %struct.usbtest_dev* %305, i32 %308)
  store %struct.scatterlist* %309, %struct.scatterlist** %9, align 8
  %310 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %311 = icmp ne %struct.scatterlist* %310, null
  br i1 %311, label %315, label %312

312:                                              ; preds = %286
  %313 = load i32, i32* @ENOMEM, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %12, align 4
  br label %1250

315:                                              ; preds = %286
  %316 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %317 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %318 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %321 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %324 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %325 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = call i32 @perform_sglist(%struct.usbtest_dev* %316, i64 %319, i32 %322, %struct.usb_sg_request* %10, %struct.scatterlist* %323, i64 %326)
  store i32 %327, i32* %12, align 4
  %328 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %329 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %330 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = call i32 @free_sglist(%struct.scatterlist* %328, i64 %331)
  br label %1250

333:                                              ; preds = %35
  %334 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %335 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %348, label %338

338:                                              ; preds = %333
  %339 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %340 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %348, label %343

343:                                              ; preds = %338
  %344 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %345 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %343, %338, %333
  br label %1250

349:                                              ; preds = %343
  %350 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %351 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %350, i32 0, i32 0
  %352 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %353 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %356 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %359 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %362 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 4
  %364 = call i32 (i32*, i8*, ...) @dev_info(i32* %351, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i32 %354, i64 %357, i64 %360, i32 %363)
  %365 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %366 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %369 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %372 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %375 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %376 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = call %struct.scatterlist* @alloc_sglist(i64 %367, i32 %370, i32 %373, %struct.usbtest_dev* %374, i32 %377)
  store %struct.scatterlist* %378, %struct.scatterlist** %9, align 8
  %379 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %380 = icmp ne %struct.scatterlist* %379, null
  br i1 %380, label %384, label %381

381:                                              ; preds = %349
  %382 = load i32, i32* @ENOMEM, align 4
  %383 = sub nsw i32 0, %382
  store i32 %383, i32* %12, align 4
  br label %1250

384:                                              ; preds = %349
  %385 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %386 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %387 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %390 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %393 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %394 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = call i32 @perform_sglist(%struct.usbtest_dev* %385, i64 %388, i32 %391, %struct.usb_sg_request* %10, %struct.scatterlist* %392, i64 %395)
  store i32 %396, i32* %12, align 4
  %397 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %398 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %399 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = call i32 @free_sglist(%struct.scatterlist* %397, i64 %400)
  br label %1250

402:                                              ; preds = %35
  %403 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %404 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %417, label %407

407:                                              ; preds = %402
  %408 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %409 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %417, label %412

412:                                              ; preds = %407
  %413 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %414 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 8
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %412, %407, %402
  br label %1250

418:                                              ; preds = %412
  %419 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %420 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %419, i32 0, i32 0
  %421 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %422 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %425 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %428 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %431 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 4
  %433 = call i32 (i32*, i8*, ...) @dev_info(i32* %420, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i32 %423, i64 %426, i64 %429, i32 %432)
  %434 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %435 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %434, i32 0, i32 1
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %438 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %437, i32 0, i32 3
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %441 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %440, i32 0, i32 4
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %444 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %445 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = call %struct.scatterlist* @alloc_sglist(i64 %436, i32 %439, i32 %442, %struct.usbtest_dev* %443, i32 %446)
  store %struct.scatterlist* %447, %struct.scatterlist** %9, align 8
  %448 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %449 = icmp ne %struct.scatterlist* %448, null
  br i1 %449, label %453, label %450

450:                                              ; preds = %418
  %451 = load i32, i32* @ENOMEM, align 4
  %452 = sub nsw i32 0, %451
  store i32 %452, i32* %12, align 4
  br label %1250

453:                                              ; preds = %418
  %454 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %455 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %456 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %459 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %462 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %463 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %462, i32 0, i32 1
  %464 = load i64, i64* %463, align 8
  %465 = call i32 @perform_sglist(%struct.usbtest_dev* %454, i64 %457, i32 %460, %struct.usb_sg_request* %10, %struct.scatterlist* %461, i64 %464)
  store i32 %465, i32* %12, align 4
  %466 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %467 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %468 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = call i32 @free_sglist(%struct.scatterlist* %466, i64 %469)
  br label %1250

471:                                              ; preds = %35
  store i32 0, i32* %12, align 4
  %472 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %473 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %472, i32 0, i32 0
  %474 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %475 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = call i32 (i32*, i8*, ...) @dev_info(i32* %473, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i64 %476)
  %478 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %479 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %478, i32 0, i32 0
  %480 = load i64, i64* %479, align 8
  %481 = trunc i64 %480 to i32
  store i32 %481, i32* %11, align 4
  br label %482

482:                                              ; preds = %491, %471
  %483 = load i32, i32* %12, align 4
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %485, label %489

485:                                              ; preds = %482
  %486 = load i32, i32* %11, align 4
  %487 = add i32 %486, -1
  store i32 %487, i32* %11, align 4
  %488 = icmp ne i32 %486, 0
  br label %489

489:                                              ; preds = %485, %482
  %490 = phi i1 [ false, %482 ], [ %488, %485 ]
  br i1 %490, label %491, label %494

491:                                              ; preds = %489
  %492 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %493 = call i32 @ch9_postconfig(%struct.usbtest_dev* %492)
  store i32 %493, i32* %12, align 4
  br label %482

494:                                              ; preds = %489
  %495 = load i32, i32* %12, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %502

497:                                              ; preds = %494
  %498 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %499 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %498, i32 0, i32 0
  %500 = load i32, i32* %11, align 4
  %501 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %499, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32 %500)
  br label %502

502:                                              ; preds = %497, %494
  br label %1250

503:                                              ; preds = %35
  store i32 0, i32* %12, align 4
  %504 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %505 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %504, i32 0, i32 0
  %506 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %507 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %506, i32 0, i32 1
  %508 = load i64, i64* %507, align 8
  %509 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %510 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = call i32 (i32*, i8*, ...) @dev_info(i32* %505, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i64 %508, i64 %511)
  %513 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %514 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %515 = call i32 @test_ctrl_queue(%struct.usbtest_dev* %513, %struct.usbtest_param_32* %514)
  store i32 %515, i32* %12, align 4
  br label %1250

516:                                              ; preds = %35
  %517 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %518 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %526, label %521

521:                                              ; preds = %516
  %522 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %523 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %522, i32 0, i32 3
  %524 = load i32, i32* %523, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %527, label %526

526:                                              ; preds = %521, %516
  br label %1250

527:                                              ; preds = %521
  store i32 0, i32* %12, align 4
  %528 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %529 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %528, i32 0, i32 0
  %530 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %531 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %530, i32 0, i32 0
  %532 = load i64, i64* %531, align 8
  %533 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %534 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %533, i32 0, i32 3
  %535 = load i32, i32* %534, align 4
  %536 = call i32 (i32*, i8*, ...) @dev_info(i32* %529, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i64 %532, i32 %535)
  %537 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %538 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = trunc i64 %539 to i32
  store i32 %540, i32* %11, align 4
  br label %541

541:                                              ; preds = %550, %527
  %542 = load i32, i32* %12, align 4
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %548

544:                                              ; preds = %541
  %545 = load i32, i32* %11, align 4
  %546 = add i32 %545, -1
  store i32 %546, i32* %11, align 4
  %547 = icmp ne i32 %545, 0
  br label %548

548:                                              ; preds = %544, %541
  %549 = phi i1 [ false, %541 ], [ %547, %544 ]
  br i1 %549, label %550, label %559

550:                                              ; preds = %548
  %551 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %552 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %553 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 4
  %555 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %556 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %555, i32 0, i32 3
  %557 = load i32, i32* %556, align 4
  %558 = call i32 @unlink_simple(%struct.usbtest_dev* %551, i32 %554, i32 %557)
  store i32 %558, i32* %12, align 4
  br label %541

559:                                              ; preds = %548
  %560 = load i32, i32* %12, align 4
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %568

562:                                              ; preds = %559
  %563 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %564 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %563, i32 0, i32 0
  %565 = load i32, i32* %12, align 4
  %566 = load i32, i32* %11, align 4
  %567 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %564, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i32 %565, i32 %566)
  br label %568

568:                                              ; preds = %562, %559
  br label %1250

569:                                              ; preds = %35
  %570 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %571 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %579, label %574

574:                                              ; preds = %569
  %575 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %576 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %575, i32 0, i32 3
  %577 = load i32, i32* %576, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %580, label %579

579:                                              ; preds = %574, %569
  br label %1250

580:                                              ; preds = %574
  store i32 0, i32* %12, align 4
  %581 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %582 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %581, i32 0, i32 0
  %583 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %584 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %583, i32 0, i32 0
  %585 = load i64, i64* %584, align 8
  %586 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %587 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %586, i32 0, i32 3
  %588 = load i32, i32* %587, align 4
  %589 = call i32 (i32*, i8*, ...) @dev_info(i32* %582, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i64 %585, i32 %588)
  %590 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %591 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %590, i32 0, i32 0
  %592 = load i64, i64* %591, align 8
  %593 = trunc i64 %592 to i32
  store i32 %593, i32* %11, align 4
  br label %594

594:                                              ; preds = %603, %580
  %595 = load i32, i32* %12, align 4
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %601

597:                                              ; preds = %594
  %598 = load i32, i32* %11, align 4
  %599 = add i32 %598, -1
  store i32 %599, i32* %11, align 4
  %600 = icmp ne i32 %598, 0
  br label %601

601:                                              ; preds = %597, %594
  %602 = phi i1 [ false, %594 ], [ %600, %597 ]
  br i1 %602, label %603, label %612

603:                                              ; preds = %601
  %604 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %605 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %606 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 8
  %608 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %609 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %608, i32 0, i32 3
  %610 = load i32, i32* %609, align 4
  %611 = call i32 @unlink_simple(%struct.usbtest_dev* %604, i32 %607, i32 %610)
  store i32 %611, i32* %12, align 4
  br label %594

612:                                              ; preds = %601
  %613 = load i32, i32* %12, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %621

615:                                              ; preds = %612
  %616 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %617 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %616, i32 0, i32 0
  %618 = load i32, i32* %12, align 4
  %619 = load i32, i32* %11, align 4
  %620 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %617, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0), i32 %618, i32 %619)
  br label %621

621:                                              ; preds = %615, %612
  br label %1250

622:                                              ; preds = %35
  %623 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %624 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %623, i32 0, i32 0
  %625 = load i32, i32* %624, align 8
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %633

627:                                              ; preds = %622
  %628 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %629 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 4
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %633

632:                                              ; preds = %627
  br label %1250

633:                                              ; preds = %627, %622
  store i32 0, i32* %12, align 4
  %634 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %635 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %634, i32 0, i32 0
  %636 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %637 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %636, i32 0, i32 0
  %638 = load i64, i64* %637, align 8
  %639 = call i32 (i32*, i8*, ...) @dev_info(i32* %635, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i64 %638)
  %640 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %641 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %640, i32 0, i32 0
  %642 = load i64, i64* %641, align 8
  %643 = trunc i64 %642 to i32
  store i32 %643, i32* %11, align 4
  br label %644

644:                                              ; preds = %653, %633
  %645 = load i32, i32* %12, align 4
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %651

647:                                              ; preds = %644
  %648 = load i32, i32* %11, align 4
  %649 = add i32 %648, -1
  store i32 %649, i32* %11, align 4
  %650 = icmp ne i32 %648, 0
  br label %651

651:                                              ; preds = %647, %644
  %652 = phi i1 [ false, %644 ], [ %650, %647 ]
  br i1 %652, label %653, label %656

653:                                              ; preds = %651
  %654 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %655 = call i32 @halt_simple(%struct.usbtest_dev* %654)
  store i32 %655, i32* %12, align 4
  br label %644

656:                                              ; preds = %651
  %657 = load i32, i32* %12, align 4
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %659, label %663

659:                                              ; preds = %656
  %660 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %661 = load i32, i32* %11, align 4
  %662 = call i32 @ERROR(%struct.usbtest_dev* %660, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i32 %661)
  br label %663

663:                                              ; preds = %659, %656
  br label %1250

664:                                              ; preds = %35
  %665 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %666 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %665, i32 0, i32 10
  %667 = load %struct.TYPE_4__*, %struct.TYPE_4__** %666, align 8
  %668 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %667, i32 0, i32 0
  %669 = load i32, i32* %668, align 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %672, label %671

671:                                              ; preds = %664
  br label %1250

672:                                              ; preds = %664
  %673 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %674 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %673, i32 0, i32 0
  %675 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %676 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %675, i32 0, i32 0
  %677 = load i64, i64* %676, align 8
  %678 = load i32, i32* @realworld, align 4
  %679 = icmp ne i32 %678, 0
  %680 = zext i1 %679 to i64
  %681 = select i1 %679, i32 1, i32 0
  %682 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %683 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %682, i32 0, i32 3
  %684 = load i32, i32* %683, align 4
  %685 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %686 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %685, i32 0, i32 4
  %687 = load i32, i32* %686, align 8
  %688 = call i32 (i32*, i8*, ...) @dev_info(i32* %674, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), i64 %677, i32 %681, i32 %684, i32 %687)
  %689 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %690 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %691 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %690, i32 0, i32 0
  %692 = load i64, i64* %691, align 8
  %693 = trunc i64 %692 to i32
  %694 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %695 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %694, i32 0, i32 3
  %696 = load i32, i32* %695, align 4
  %697 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %698 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %697, i32 0, i32 4
  %699 = load i32, i32* %698, align 8
  %700 = call i32 @ctrl_out(%struct.usbtest_dev* %689, i32 %693, i32 %696, i32 %699, i32 0)
  store i32 %700, i32* %12, align 4
  br label %1250

701:                                              ; preds = %35
  %702 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %703 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %702, i32 0, i32 9
  %704 = load i32, i32* %703, align 8
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %711, label %706

706:                                              ; preds = %701
  %707 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %708 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %707, i32 0, i32 1
  %709 = load i64, i64* %708, align 8
  %710 = icmp eq i64 %709, 0
  br i1 %710, label %711, label %712

711:                                              ; preds = %706, %701
  br label %1250

712:                                              ; preds = %706
  %713 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %714 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %713, i32 0, i32 0
  %715 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %716 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %715, i32 0, i32 0
  %717 = load i64, i64* %716, align 8
  %718 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %719 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %718, i32 0, i32 1
  %720 = load i64, i64* %719, align 8
  %721 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %722 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %721, i32 0, i32 3
  %723 = load i32, i32* %722, align 4
  %724 = call i32 (i32*, i8*, ...) @dev_info(i32* %714, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0), i64 %717, i64 %720, i32 %723)
  %725 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %726 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %727 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %728 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %727, i32 0, i32 9
  %729 = load i32, i32* %728, align 8
  %730 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %731 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %730, i32 0, i32 8
  %732 = load i32*, i32** %731, align 8
  %733 = call i32 @test_queue(%struct.usbtest_dev* %725, %struct.usbtest_param_32* %726, i32 %729, i32* %732, i32 0)
  store i32 %733, i32* %12, align 4
  br label %1250

734:                                              ; preds = %35
  %735 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %736 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %735, i32 0, i32 7
  %737 = load i32, i32* %736, align 8
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %744, label %739

739:                                              ; preds = %734
  %740 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %741 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %740, i32 0, i32 1
  %742 = load i64, i64* %741, align 8
  %743 = icmp eq i64 %742, 0
  br i1 %743, label %744, label %745

744:                                              ; preds = %739, %734
  br label %1250

745:                                              ; preds = %739
  %746 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %747 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %746, i32 0, i32 0
  %748 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %749 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %748, i32 0, i32 0
  %750 = load i64, i64* %749, align 8
  %751 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %752 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %751, i32 0, i32 1
  %753 = load i64, i64* %752, align 8
  %754 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %755 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %754, i32 0, i32 3
  %756 = load i32, i32* %755, align 4
  %757 = call i32 (i32*, i8*, ...) @dev_info(i32* %747, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0), i64 %750, i64 %753, i32 %756)
  %758 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %759 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %760 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %761 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %760, i32 0, i32 7
  %762 = load i32, i32* %761, align 8
  %763 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %764 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %763, i32 0, i32 6
  %765 = load i32*, i32** %764, align 8
  %766 = call i32 @test_queue(%struct.usbtest_dev* %758, %struct.usbtest_param_32* %759, i32 %762, i32* %765, i32 0)
  store i32 %766, i32* %12, align 4
  br label %1250

767:                                              ; preds = %35
  %768 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %769 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %768, i32 0, i32 0
  %770 = load i32, i32* %769, align 8
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %772, label %773

772:                                              ; preds = %767
  br label %1250

773:                                              ; preds = %767
  %774 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %775 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %774, i32 0, i32 0
  %776 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %777 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %776, i32 0, i32 3
  %778 = load i32, i32* %777, align 4
  %779 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %780 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %779, i32 0, i32 0
  %781 = load i64, i64* %780, align 8
  %782 = call i32 (i32*, i8*, ...) @dev_info(i32* %775, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.25, i64 0, i64 0), i32 %778, i64 %781)
  %783 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %784 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %785 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %784, i32 0, i32 0
  %786 = load i32, i32* %785, align 8
  %787 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %788 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %787, i32 0, i32 3
  %789 = load i32, i32* %788, align 4
  %790 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %791 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %790, i32 0, i32 0
  %792 = load i64, i64* %791, align 8
  %793 = trunc i64 %792 to i32
  %794 = call i32 @test_unaligned_bulk(%struct.usbtest_dev* %783, i32 %786, i32 %789, i32 %793, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  store i32 %794, i32* %12, align 4
  br label %1250

795:                                              ; preds = %35
  %796 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %797 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %796, i32 0, i32 1
  %798 = load i32, i32* %797, align 4
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %800, label %801

800:                                              ; preds = %795
  br label %1250

801:                                              ; preds = %795
  %802 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %803 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %802, i32 0, i32 0
  %804 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %805 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %804, i32 0, i32 3
  %806 = load i32, i32* %805, align 4
  %807 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %808 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %807, i32 0, i32 0
  %809 = load i64, i64* %808, align 8
  %810 = call i32 (i32*, i8*, ...) @dev_info(i32* %803, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i64 0, i64 0), i32 %806, i64 %809)
  %811 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %812 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %813 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %812, i32 0, i32 1
  %814 = load i32, i32* %813, align 4
  %815 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %816 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %815, i32 0, i32 3
  %817 = load i32, i32* %816, align 4
  %818 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %819 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %818, i32 0, i32 0
  %820 = load i64, i64* %819, align 8
  %821 = trunc i64 %820 to i32
  %822 = call i32 @test_unaligned_bulk(%struct.usbtest_dev* %811, i32 %814, i32 %817, i32 %821, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  store i32 %822, i32* %12, align 4
  br label %1250

823:                                              ; preds = %35
  %824 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %825 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %824, i32 0, i32 0
  %826 = load i32, i32* %825, align 8
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %829

828:                                              ; preds = %823
  br label %1250

829:                                              ; preds = %823
  %830 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %831 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %830, i32 0, i32 0
  %832 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %833 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %832, i32 0, i32 3
  %834 = load i32, i32* %833, align 4
  %835 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %836 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %835, i32 0, i32 0
  %837 = load i64, i64* %836, align 8
  %838 = call i32 (i32*, i8*, ...) @dev_info(i32* %831, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.29, i64 0, i64 0), i32 %834, i64 %837)
  %839 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %840 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %841 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %840, i32 0, i32 0
  %842 = load i32, i32* %841, align 8
  %843 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %844 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %843, i32 0, i32 3
  %845 = load i32, i32* %844, align 4
  %846 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %847 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %846, i32 0, i32 0
  %848 = load i64, i64* %847, align 8
  %849 = trunc i64 %848 to i32
  %850 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %851 = call i32 @test_unaligned_bulk(%struct.usbtest_dev* %839, i32 %842, i32 %845, i32 %849, i32 %850, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  store i32 %851, i32* %12, align 4
  br label %1250

852:                                              ; preds = %35
  %853 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %854 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %853, i32 0, i32 1
  %855 = load i32, i32* %854, align 4
  %856 = icmp eq i32 %855, 0
  br i1 %856, label %857, label %858

857:                                              ; preds = %852
  br label %1250

858:                                              ; preds = %852
  %859 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %860 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %859, i32 0, i32 0
  %861 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %862 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %861, i32 0, i32 3
  %863 = load i32, i32* %862, align 4
  %864 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %865 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %864, i32 0, i32 0
  %866 = load i64, i64* %865, align 8
  %867 = call i32 (i32*, i8*, ...) @dev_info(i32* %860, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.31, i64 0, i64 0), i32 %863, i64 %866)
  %868 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %869 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %870 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %869, i32 0, i32 1
  %871 = load i32, i32* %870, align 4
  %872 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %873 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %872, i32 0, i32 3
  %874 = load i32, i32* %873, align 4
  %875 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %876 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %875, i32 0, i32 0
  %877 = load i64, i64* %876, align 8
  %878 = trunc i64 %877 to i32
  %879 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %880 = call i32 @test_unaligned_bulk(%struct.usbtest_dev* %868, i32 %871, i32 %874, i32 %878, i32 %879, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  store i32 %880, i32* %12, align 4
  br label %1250

881:                                              ; preds = %35
  %882 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %883 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %882, i32 0, i32 10
  %884 = load %struct.TYPE_4__*, %struct.TYPE_4__** %883, align 8
  %885 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %884, i32 0, i32 0
  %886 = load i32, i32* %885, align 4
  %887 = icmp ne i32 %886, 0
  br i1 %887, label %889, label %888

888:                                              ; preds = %881
  br label %1250

889:                                              ; preds = %881
  %890 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %891 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %890, i32 0, i32 0
  %892 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %893 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %892, i32 0, i32 0
  %894 = load i64, i64* %893, align 8
  %895 = load i32, i32* @realworld, align 4
  %896 = icmp ne i32 %895, 0
  %897 = zext i1 %896 to i64
  %898 = select i1 %896, i32 1, i32 0
  %899 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %900 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %899, i32 0, i32 3
  %901 = load i32, i32* %900, align 4
  %902 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %903 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %902, i32 0, i32 4
  %904 = load i32, i32* %903, align 8
  %905 = call i32 (i32*, i8*, ...) @dev_info(i32* %891, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i64 %894, i32 %898, i32 %901, i32 %904)
  %906 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %907 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %908 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %907, i32 0, i32 0
  %909 = load i64, i64* %908, align 8
  %910 = trunc i64 %909 to i32
  %911 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %912 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %911, i32 0, i32 3
  %913 = load i32, i32* %912, align 4
  %914 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %915 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %914, i32 0, i32 4
  %916 = load i32, i32* %915, align 8
  %917 = call i32 @ctrl_out(%struct.usbtest_dev* %906, i32 %910, i32 %913, i32 %916, i32 1)
  store i32 %917, i32* %12, align 4
  br label %1250

918:                                              ; preds = %35
  %919 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %920 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %919, i32 0, i32 9
  %921 = load i32, i32* %920, align 8
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %928, label %923

923:                                              ; preds = %918
  %924 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %925 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %924, i32 0, i32 1
  %926 = load i64, i64* %925, align 8
  %927 = icmp eq i64 %926, 0
  br i1 %927, label %928, label %929

928:                                              ; preds = %923, %918
  br label %1250

929:                                              ; preds = %923
  %930 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %931 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %930, i32 0, i32 0
  %932 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %933 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %932, i32 0, i32 0
  %934 = load i64, i64* %933, align 8
  %935 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %936 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %935, i32 0, i32 1
  %937 = load i64, i64* %936, align 8
  %938 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %939 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %938, i32 0, i32 3
  %940 = load i32, i32* %939, align 4
  %941 = call i32 (i32*, i8*, ...) @dev_info(i32* %931, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.34, i64 0, i64 0), i64 %934, i64 %937, i32 %940)
  %942 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %943 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %944 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %945 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %944, i32 0, i32 9
  %946 = load i32, i32* %945, align 8
  %947 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %948 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %947, i32 0, i32 8
  %949 = load i32*, i32** %948, align 8
  %950 = call i32 @test_queue(%struct.usbtest_dev* %942, %struct.usbtest_param_32* %943, i32 %946, i32* %949, i32 1)
  store i32 %950, i32* %12, align 4
  br label %1250

951:                                              ; preds = %35
  %952 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %953 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %952, i32 0, i32 7
  %954 = load i32, i32* %953, align 8
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %961, label %956

956:                                              ; preds = %951
  %957 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %958 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %957, i32 0, i32 1
  %959 = load i64, i64* %958, align 8
  %960 = icmp eq i64 %959, 0
  br i1 %960, label %961, label %962

961:                                              ; preds = %956, %951
  br label %1250

962:                                              ; preds = %956
  %963 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %964 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %963, i32 0, i32 0
  %965 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %966 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %965, i32 0, i32 0
  %967 = load i64, i64* %966, align 8
  %968 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %969 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %968, i32 0, i32 1
  %970 = load i64, i64* %969, align 8
  %971 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %972 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %971, i32 0, i32 3
  %973 = load i32, i32* %972, align 4
  %974 = call i32 (i32*, i8*, ...) @dev_info(i32* %964, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i64 %967, i64 %970, i32 %973)
  %975 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %976 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %977 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %978 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %977, i32 0, i32 7
  %979 = load i32, i32* %978, align 8
  %980 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %981 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %980, i32 0, i32 6
  %982 = load i32*, i32** %981, align 8
  %983 = call i32 @test_queue(%struct.usbtest_dev* %975, %struct.usbtest_param_32* %976, i32 %979, i32* %982, i32 1)
  store i32 %983, i32* %12, align 4
  br label %1250

984:                                              ; preds = %35
  %985 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %986 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %985, i32 0, i32 0
  %987 = load i32, i32* %986, align 8
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %999, label %989

989:                                              ; preds = %984
  %990 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %991 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %990, i32 0, i32 3
  %992 = load i32, i32* %991, align 4
  %993 = icmp ne i32 %992, 0
  br i1 %993, label %994, label %999

994:                                              ; preds = %989
  %995 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %996 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %995, i32 0, i32 1
  %997 = load i64, i64* %996, align 8
  %998 = icmp slt i64 %997, 4
  br i1 %998, label %999, label %1000

999:                                              ; preds = %994, %989, %984
  br label %1250

1000:                                             ; preds = %994
  store i32 0, i32* %12, align 4
  %1001 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %1002 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1001, i32 0, i32 0
  %1003 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1004 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1003, i32 0, i32 0
  %1005 = load i64, i64* %1004, align 8
  %1006 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1007 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1006, i32 0, i32 1
  %1008 = load i64, i64* %1007, align 8
  %1009 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1010 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1009, i32 0, i32 3
  %1011 = load i32, i32* %1010, align 4
  %1012 = call i32 (i32*, i8*, ...) @dev_info(i32* %1002, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i64 0, i64 0), i64 %1005, i64 %1008, i32 %1011)
  %1013 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1014 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1013, i32 0, i32 0
  %1015 = load i64, i64* %1014, align 8
  %1016 = trunc i64 %1015 to i32
  store i32 %1016, i32* %11, align 4
  br label %1017

1017:                                             ; preds = %1047, %1000
  %1018 = load i32, i32* %12, align 4
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1020, label %1023

1020:                                             ; preds = %1017
  %1021 = load i32, i32* %11, align 4
  %1022 = icmp ugt i32 %1021, 0
  br label %1023

1023:                                             ; preds = %1020, %1017
  %1024 = phi i1 [ false, %1017 ], [ %1022, %1020 ]
  br i1 %1024, label %1025, label %1050

1025:                                             ; preds = %1023
  %1026 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1027 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1028 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %1027, i32 0, i32 0
  %1029 = load i32, i32* %1028, align 8
  %1030 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1031 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1030, i32 0, i32 1
  %1032 = load i64, i64* %1031, align 8
  %1033 = trunc i64 %1032 to i32
  %1034 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1035 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1034, i32 0, i32 3
  %1036 = load i32, i32* %1035, align 4
  %1037 = call i32 @unlink_queued(%struct.usbtest_dev* %1026, i32 %1029, i32 %1033, i32 %1036)
  store i32 %1037, i32* %12, align 4
  %1038 = load i32, i32* %12, align 4
  %1039 = icmp ne i32 %1038, 0
  br i1 %1039, label %1040, label %1046

1040:                                             ; preds = %1025
  %1041 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %1042 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1041, i32 0, i32 0
  %1043 = load i32, i32* %12, align 4
  %1044 = load i32, i32* %11, align 4
  %1045 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %1042, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.37, i64 0, i64 0), i32 %1043, i32 %1044)
  br label %1050

1046:                                             ; preds = %1025
  br label %1047

1047:                                             ; preds = %1046
  %1048 = load i32, i32* %11, align 4
  %1049 = add i32 %1048, -1
  store i32 %1049, i32* %11, align 4
  br label %1017

1050:                                             ; preds = %1040, %1023
  br label %1250

1051:                                             ; preds = %35
  %1052 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1053 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %1052, i32 0, i32 5
  %1054 = load i32, i32* %1053, align 8
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1056, label %1057

1056:                                             ; preds = %1051
  br label %1250

1057:                                             ; preds = %1051
  %1058 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %1059 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1058, i32 0, i32 0
  %1060 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1061 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1060, i32 0, i32 3
  %1062 = load i32, i32* %1061, align 4
  %1063 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1064 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1063, i32 0, i32 0
  %1065 = load i64, i64* %1064, align 8
  %1066 = call i32 (i32*, i8*, ...) @dev_info(i32* %1059, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i64 0, i64 0), i32 %1062, i64 %1065)
  %1067 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %1068 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1069 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %1068, i32 0, i32 5
  %1070 = load i32, i32* %1069, align 8
  %1071 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1072 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1071, i32 0, i32 3
  %1073 = load i32, i32* %1072, align 4
  %1074 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1075 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %1074, i32 0, i32 4
  %1076 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1075, align 8
  %1077 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1076, i32 0, i32 0
  %1078 = load i32, i32* %1077, align 4
  %1079 = call %struct.urb* @simple_alloc_urb(%struct.usb_device* %1067, i32 %1070, i32 %1073, i32 %1078)
  store %struct.urb* %1079, %struct.urb** %8, align 8
  %1080 = load %struct.urb*, %struct.urb** %8, align 8
  %1081 = icmp ne %struct.urb* %1080, null
  br i1 %1081, label %1085, label %1082

1082:                                             ; preds = %1057
  %1083 = load i32, i32* @ENOMEM, align 4
  %1084 = sub nsw i32 0, %1083
  store i32 %1084, i32* %12, align 4
  br label %1250

1085:                                             ; preds = %1057
  %1086 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1087 = load %struct.urb*, %struct.urb** %8, align 8
  %1088 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1089 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1088, i32 0, i32 0
  %1090 = load i64, i64* %1089, align 8
  %1091 = call i32 @simple_io(%struct.usbtest_dev* %1086, %struct.urb* %1087, i64 %1090, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0))
  store i32 %1091, i32* %12, align 4
  %1092 = load %struct.urb*, %struct.urb** %8, align 8
  %1093 = call i32 @simple_free_urb(%struct.urb* %1092)
  br label %1250

1094:                                             ; preds = %35
  %1095 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1096 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %1095, i32 0, i32 3
  %1097 = load i32, i32* %1096, align 8
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1099, label %1100

1099:                                             ; preds = %1094
  br label %1250

1100:                                             ; preds = %1094
  %1101 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %1102 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1101, i32 0, i32 0
  %1103 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1104 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1103, i32 0, i32 3
  %1105 = load i32, i32* %1104, align 4
  %1106 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1107 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1106, i32 0, i32 0
  %1108 = load i64, i64* %1107, align 8
  %1109 = call i32 (i32*, i8*, ...) @dev_info(i32* %1102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i64 0, i64 0), i32 %1105, i64 %1108)
  %1110 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %1111 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1112 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %1111, i32 0, i32 3
  %1113 = load i32, i32* %1112, align 8
  %1114 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1115 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1114, i32 0, i32 3
  %1116 = load i32, i32* %1115, align 4
  %1117 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1118 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %1117, i32 0, i32 2
  %1119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1118, align 8
  %1120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1119, i32 0, i32 0
  %1121 = load i32, i32* %1120, align 4
  %1122 = call %struct.urb* @simple_alloc_urb(%struct.usb_device* %1110, i32 %1113, i32 %1116, i32 %1121)
  store %struct.urb* %1122, %struct.urb** %8, align 8
  %1123 = load %struct.urb*, %struct.urb** %8, align 8
  %1124 = icmp ne %struct.urb* %1123, null
  br i1 %1124, label %1128, label %1125

1125:                                             ; preds = %1100
  %1126 = load i32, i32* @ENOMEM, align 4
  %1127 = sub nsw i32 0, %1126
  store i32 %1127, i32* %12, align 4
  br label %1250

1128:                                             ; preds = %1100
  %1129 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1130 = load %struct.urb*, %struct.urb** %8, align 8
  %1131 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1132 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1131, i32 0, i32 0
  %1133 = load i64, i64* %1132, align 8
  %1134 = call i32 @simple_io(%struct.usbtest_dev* %1129, %struct.urb* %1130, i64 %1133, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  store i32 %1134, i32* %12, align 4
  %1135 = load %struct.urb*, %struct.urb** %8, align 8
  %1136 = call i32 @simple_free_urb(%struct.urb* %1135)
  br label %1250

1137:                                             ; preds = %35
  %1138 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1139 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %1138, i32 0, i32 0
  %1140 = load i32, i32* %1139, align 8
  %1141 = icmp eq i32 %1140, 0
  br i1 %1141, label %1150, label %1142

1142:                                             ; preds = %1137
  %1143 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1144 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1143, i32 0, i32 1
  %1145 = load i64, i64* %1144, align 8
  %1146 = icmp eq i64 %1145, 0
  br i1 %1146, label %1150, label %1147

1147:                                             ; preds = %1142
  %1148 = load i32, i32* @pattern, align 4
  %1149 = icmp ne i32 %1148, 0
  br i1 %1149, label %1150, label %1151

1150:                                             ; preds = %1147, %1142, %1137
  br label %1250

1151:                                             ; preds = %1147
  %1152 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %1153 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1152, i32 0, i32 0
  %1154 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1155 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1154, i32 0, i32 0
  %1156 = load i64, i64* %1155, align 8
  %1157 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1158 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1157, i32 0, i32 1
  %1159 = load i64, i64* %1158, align 8
  %1160 = mul nsw i64 %1156, %1159
  %1161 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1162 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1161, i32 0, i32 3
  %1163 = load i32, i32* %1162, align 4
  %1164 = sext i32 %1163 to i64
  %1165 = mul nsw i64 %1160, %1164
  %1166 = sdiv i64 %1165, 1048576
  %1167 = call i32 (i32*, i8*, ...) @dev_info(i32* %1153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0), i64 %1166)
  %1168 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1169 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1170 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1171 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %1170, i32 0, i32 0
  %1172 = load i32, i32* %1171, align 8
  %1173 = call i32 @test_queue(%struct.usbtest_dev* %1168, %struct.usbtest_param_32* %1169, i32 %1172, i32* null, i32 0)
  store i32 %1173, i32* %12, align 4
  br label %1250

1174:                                             ; preds = %35
  %1175 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1176 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %1175, i32 0, i32 1
  %1177 = load i32, i32* %1176, align 4
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1187, label %1179

1179:                                             ; preds = %1174
  %1180 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1181 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1180, i32 0, i32 1
  %1182 = load i64, i64* %1181, align 8
  %1183 = icmp eq i64 %1182, 0
  br i1 %1183, label %1187, label %1184

1184:                                             ; preds = %1179
  %1185 = load i32, i32* @pattern, align 4
  %1186 = icmp ne i32 %1185, 0
  br i1 %1186, label %1187, label %1188

1187:                                             ; preds = %1184, %1179, %1174
  br label %1250

1188:                                             ; preds = %1184
  %1189 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %1190 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1189, i32 0, i32 0
  %1191 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1192 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1191, i32 0, i32 0
  %1193 = load i64, i64* %1192, align 8
  %1194 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1195 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1194, i32 0, i32 1
  %1196 = load i64, i64* %1195, align 8
  %1197 = mul nsw i64 %1193, %1196
  %1198 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1199 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1198, i32 0, i32 3
  %1200 = load i32, i32* %1199, align 4
  %1201 = sext i32 %1200 to i64
  %1202 = mul nsw i64 %1197, %1201
  %1203 = sdiv i64 %1202, 1048576
  %1204 = call i32 (i32*, i8*, ...) @dev_info(i32* %1190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i64 0, i64 0), i64 %1203)
  %1205 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1206 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1207 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1208 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %1207, i32 0, i32 1
  %1209 = load i32, i32* %1208, align 4
  %1210 = call i32 @test_queue(%struct.usbtest_dev* %1205, %struct.usbtest_param_32* %1206, i32 %1209, i32* null, i32 0)
  store i32 %1210, i32* %12, align 4
  br label %1250

1211:                                             ; preds = %35
  %1212 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1213 = getelementptr inbounds %struct.usbtest_dev, %struct.usbtest_dev* %1212, i32 0, i32 0
  %1214 = load i32, i32* %1213, align 8
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1216, label %1217

1216:                                             ; preds = %1211
  br label %1250

1217:                                             ; preds = %1211
  store i32 0, i32* %12, align 4
  %1218 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %1219 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %1218, i32 0, i32 0
  %1220 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1221 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1220, i32 0, i32 0
  %1222 = load i64, i64* %1221, align 8
  %1223 = call i32 (i32*, i8*, ...) @dev_info(i32* %1219, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.44, i64 0, i64 0), i64 %1222)
  %1224 = load %struct.usbtest_param_32*, %struct.usbtest_param_32** %5, align 8
  %1225 = getelementptr inbounds %struct.usbtest_param_32, %struct.usbtest_param_32* %1224, i32 0, i32 0
  %1226 = load i64, i64* %1225, align 8
  %1227 = trunc i64 %1226 to i32
  store i32 %1227, i32* %11, align 4
  br label %1228

1228:                                             ; preds = %1239, %1217
  %1229 = load i32, i32* %12, align 4
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1231, label %1234

1231:                                             ; preds = %1228
  %1232 = load i32, i32* %11, align 4
  %1233 = icmp ugt i32 %1232, 0
  br label %1234

1234:                                             ; preds = %1231, %1228
  %1235 = phi i1 [ false, %1228 ], [ %1233, %1231 ]
  br i1 %1235, label %1236, label %1242

1236:                                             ; preds = %1234
  %1237 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1238 = call i32 @toggle_sync_simple(%struct.usbtest_dev* %1237)
  store i32 %1238, i32* %12, align 4
  br label %1239

1239:                                             ; preds = %1236
  %1240 = load i32, i32* %11, align 4
  %1241 = add i32 %1240, -1
  store i32 %1241, i32* %11, align 4
  br label %1228

1242:                                             ; preds = %1234
  %1243 = load i32, i32* %12, align 4
  %1244 = icmp ne i32 %1243, 0
  br i1 %1244, label %1245, label %1249

1245:                                             ; preds = %1242
  %1246 = load %struct.usbtest_dev*, %struct.usbtest_dev** %6, align 8
  %1247 = load i32, i32* %11, align 4
  %1248 = call i32 @ERROR(%struct.usbtest_dev* %1246, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.45, i64 0, i64 0), i32 %1247)
  br label %1249

1249:                                             ; preds = %1245, %1242
  br label %1250

1250:                                             ; preds = %35, %1249, %1216, %1188, %1187, %1151, %1150, %1128, %1125, %1099, %1085, %1082, %1056, %1050, %999, %962, %961, %929, %928, %889, %888, %858, %857, %829, %828, %801, %800, %773, %772, %745, %744, %712, %711, %672, %671, %663, %632, %621, %579, %568, %526, %503, %502, %453, %450, %417, %384, %381, %348, %315, %312, %285, %257, %254, %227, %205, %202, %178, %156, %153, %129, %110, %107, %86, %72, %69, %48, %39
  %1251 = load i32, i32* %12, align 4
  store i32 %1251, i32* %3, align 4
  br label %1252

1252:                                             ; preds = %1250, %32, %23
  %1253 = load i32, i32* %3, align 4
  ret i32 %1253
}

declare dso_local %struct.usbtest_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.usb_device* @testdev_to_usbdev(%struct.usbtest_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local %struct.urb* @simple_alloc_urb(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @simple_io(%struct.usbtest_dev*, %struct.urb*, i64, i32, i32, i8*) #1

declare dso_local i32 @simple_free_urb(%struct.urb*) #1

declare dso_local %struct.scatterlist* @alloc_sglist(i64, i32, i32, %struct.usbtest_dev*, i32) #1

declare dso_local i32 @perform_sglist(%struct.usbtest_dev*, i64, i32, %struct.usb_sg_request*, %struct.scatterlist*, i64) #1

declare dso_local i32 @free_sglist(%struct.scatterlist*, i64) #1

declare dso_local i32 @ch9_postconfig(%struct.usbtest_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @test_ctrl_queue(%struct.usbtest_dev*, %struct.usbtest_param_32*) #1

declare dso_local i32 @unlink_simple(%struct.usbtest_dev*, i32, i32) #1

declare dso_local i32 @halt_simple(%struct.usbtest_dev*) #1

declare dso_local i32 @ERROR(%struct.usbtest_dev*, i8*, i32) #1

declare dso_local i32 @ctrl_out(%struct.usbtest_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @test_queue(%struct.usbtest_dev*, %struct.usbtest_param_32*, i32, i32*, i32) #1

declare dso_local i32 @test_unaligned_bulk(%struct.usbtest_dev*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @unlink_queued(%struct.usbtest_dev*, i32, i32, i32) #1

declare dso_local i32 @toggle_sync_simple(%struct.usbtest_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
