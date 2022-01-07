; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_check_characteristics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_fba.c_dasd_fba_check_characteristics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.ccw_device*, i32, i32, i32, %struct.dasd_fba_private*, %struct.dasd_block* }
%struct.ccw_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.dasd_fba_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dasd_block = type { %struct.dasd_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Allocating memory for private DASD data failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"could not allocate dasd block structure\00", align 1
@DASD_FBA_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Read device characteristics returned error %d\00", align 1
@DASD_EXPIRES = common dso_local global i32 0, align 4
@FBA_DEFAULT_RETRIES = common dso_local global i32 0, align 4
@LPM_ANYPATH = common dso_local global i32 0, align 4
@DASD_FLAG_DEVICE_RO = common dso_local global i32 0, align 4
@DASD_FEATURE_DISCARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"New FBA DASD %04X/%02X (CU %04X/%02X) with %d MB and %d B/blk%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c", read-only device\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_fba_check_characteristics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_fba_check_characteristics(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_fba_private*, align 8
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca %struct.dasd_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 4
  %11 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %10, align 8
  store %struct.dasd_fba_private* %11, %struct.dasd_fba_private** %4, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 0
  %14 = load %struct.ccw_device*, %struct.ccw_device** %13, align 8
  store %struct.ccw_device* %14, %struct.ccw_device** %5, align 8
  %15 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %16 = icmp ne %struct.dasd_fba_private* %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load i32, i32* @GFP_DMA, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.dasd_fba_private* @kzalloc(i32 8, i32 %20)
  store %struct.dasd_fba_private* %21, %struct.dasd_fba_private** %4, align 8
  %22 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %23 = icmp ne %struct.dasd_fba_private* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %26 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %25, i32 0, i32 0
  %27 = load %struct.ccw_device*, %struct.ccw_device** %26, align 8
  %28 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %27, i32 0, i32 1
  %29 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %145

32:                                               ; preds = %17
  %33 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %34 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %35 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %34, i32 0, i32 4
  store %struct.dasd_fba_private* %33, %struct.dasd_fba_private** %35, align 8
  br label %39

36:                                               ; preds = %1
  %37 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %38 = call i32 @memset(%struct.dasd_fba_private* %37, i32 0, i32 8)
  br label %39

39:                                               ; preds = %36, %32
  %40 = call %struct.dasd_block* (...) @dasd_alloc_block()
  store %struct.dasd_block* %40, %struct.dasd_block** %6, align 8
  %41 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %42 = call i64 @IS_ERR(%struct.dasd_block* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32, i32* @DBF_WARNING, align 4
  %46 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %47 = call i32 (i32, %struct.ccw_device*, i8*, ...) @DBF_EVENT_DEVID(i32 %45, %struct.ccw_device* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %49 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %48, i32 0, i32 4
  store %struct.dasd_fba_private* null, %struct.dasd_fba_private** %49, align 8
  %50 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %51 = call i32 @kfree(%struct.dasd_fba_private* %50)
  %52 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %53 = call i32 @PTR_ERR(%struct.dasd_block* %52)
  store i32 %53, i32* %2, align 4
  br label %145

54:                                               ; preds = %39
  %55 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %56 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %57 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %56, i32 0, i32 5
  store %struct.dasd_block* %55, %struct.dasd_block** %57, align 8
  %58 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %59 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %60 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %59, i32 0, i32 0
  store %struct.dasd_device* %58, %struct.dasd_device** %60, align 8
  %61 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %62 = load i32, i32* @DASD_FBA_MAGIC, align 4
  %63 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %64 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %63, i32 0, i32 0
  %65 = call i32 @dasd_generic_read_dev_chars(%struct.dasd_device* %61, i32 %62, %struct.TYPE_4__* %64, i32 32)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %54
  %69 = load i32, i32* @DBF_WARNING, align 4
  %70 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i32, %struct.ccw_device*, i8*, ...) @DBF_EVENT_DEVID(i32 %69, %struct.ccw_device* %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %74 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %73, i32 0, i32 5
  store %struct.dasd_block* null, %struct.dasd_block** %74, align 8
  %75 = load %struct.dasd_block*, %struct.dasd_block** %6, align 8
  %76 = call i32 @dasd_free_block(%struct.dasd_block* %75)
  %77 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %78 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %77, i32 0, i32 4
  store %struct.dasd_fba_private* null, %struct.dasd_fba_private** %78, align 8
  %79 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %80 = call i32 @kfree(%struct.dasd_fba_private* %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %2, align 4
  br label %145

82:                                               ; preds = %54
  %83 = load i32, i32* @DASD_EXPIRES, align 4
  %84 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %85 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @FBA_DEFAULT_RETRIES, align 4
  %87 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %88 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %90 = load i32, i32* @LPM_ANYPATH, align 4
  %91 = call i32 @dasd_path_set_opm(%struct.dasd_device* %89, i32 %90)
  %92 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %93 = call i32 @dasd_device_is_ro(%struct.dasd_device* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %82
  %97 = load i32, i32* @DASD_FLAG_DEVICE_RO, align 4
  %98 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %99 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %98, i32 0, i32 1
  %100 = call i32 @set_bit(i32 %97, i32* %99)
  br label %101

101:                                              ; preds = %96, %82
  %102 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %103 = load i32, i32* @DASD_FEATURE_DISCARD, align 4
  %104 = call i32 @dasd_set_feature(%struct.ccw_device* %102, i32 %103, i32 1)
  %105 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %106 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %105, i32 0, i32 0
  %107 = load %struct.ccw_device*, %struct.ccw_device** %106, align 8
  %108 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %107, i32 0, i32 1
  %109 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %110 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %114 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %118 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %122 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %126 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %130 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 9
  %134 = mul nsw i32 %128, %133
  %135 = ashr i32 %134, 11
  %136 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %4, align 8
  %137 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %144 = call i32 @dev_info(i32* %108, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %112, i32 %116, i32 %120, i32 %124, i32 %135, i32 %139, i8* %143)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %101, %68, %44, %24
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.dasd_fba_private* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @memset(%struct.dasd_fba_private*, i32, i32) #1

declare dso_local %struct.dasd_block* @dasd_alloc_block(...) #1

declare dso_local i64 @IS_ERR(%struct.dasd_block*) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, %struct.ccw_device*, i8*, ...) #1

declare dso_local i32 @kfree(%struct.dasd_fba_private*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_block*) #1

declare dso_local i32 @dasd_generic_read_dev_chars(%struct.dasd_device*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dasd_free_block(%struct.dasd_block*) #1

declare dso_local i32 @dasd_path_set_opm(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_device_is_ro(%struct.dasd_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dasd_set_feature(%struct.ccw_device*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
