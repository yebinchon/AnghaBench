; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_conf_lpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_conf_lpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.ciw = type { i64 }
%struct.dasd_ccw_req = type { i32, i32 }

@CIW_TYPE_RCD = common dso_local global i32 0, align 4
@DASD_ECKD_CCW_RCD = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DASD_ECKD_RCD_DATA_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DASD_ECKD_MAGIC = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not allocate RCD request\00", align 1
@read_conf_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, i8**, i32*, i32)* @dasd_eckd_read_conf_lpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_read_conf_lpm(%struct.dasd_device* %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ciw*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %14 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %15 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CIW_TYPE_RCD, align 4
  %18 = call %struct.ciw* @ccw_device_get_ciw(i32 %16, i32 %17)
  store %struct.ciw* %18, %struct.ciw** %10, align 8
  %19 = load %struct.ciw*, %struct.ciw** %10, align 8
  %20 = icmp ne %struct.ciw* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.ciw*, %struct.ciw** %10, align 8
  %23 = getelementptr inbounds %struct.ciw, %struct.ciw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DASD_ECKD_CCW_RCD, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %4
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  br label %78

30:                                               ; preds = %21
  %31 = load i32, i32* @DASD_ECKD_RCD_DATA_SIZE, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = load i32, i32* @GFP_DMA, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @kzalloc(i32 %31, i32 %34)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  br label %78

41:                                               ; preds = %30
  %42 = load i32, i32* @DASD_ECKD_MAGIC, align 4
  %43 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %44 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %42, i32 1, i32 0, %struct.dasd_device* %43, i32* null)
  store %struct.dasd_ccw_req* %44, %struct.dasd_ccw_req** %13, align 8
  %45 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %13, align 8
  %46 = call i64 @IS_ERR(%struct.dasd_ccw_req* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32, i32* @DBF_WARNING, align 4
  %50 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %51 = call i32 @DBF_DEV_EVENT(i32 %49, %struct.dasd_device* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  br label %78

54:                                               ; preds = %41
  %55 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %56 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %13, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @dasd_eckd_fill_rcd_cqr(%struct.dasd_device* %55, %struct.dasd_ccw_req* %56, i8* %57, i32 %58)
  %60 = load i32, i32* @read_conf_cb, align 4
  %61 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %13, align 8
  %62 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %13, align 8
  %64 = call i32 @dasd_sleep_on(%struct.dasd_ccw_req* %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %13, align 8
  %66 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %13, align 8
  %67 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %65, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %54
  br label %78

73:                                               ; preds = %54
  %74 = load i32, i32* @DASD_ECKD_RCD_DATA_SIZE, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = load i8**, i8*** %7, align 8
  store i8* %76, i8** %77, align 8
  store i32 0, i32* %5, align 4
  br label %84

78:                                               ; preds = %72, %48, %38, %27
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @kfree(i8* %79)
  %81 = load i8**, i8*** %7, align 8
  store i8* null, i8** %81, align 8
  %82 = load i32*, i32** %8, align 8
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.ciw* @ccw_device_get_ciw(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @dasd_eckd_fill_rcd_cqr(%struct.dasd_device*, %struct.dasd_ccw_req*, i8*, i32) #1

declare dso_local i32 @dasd_sleep_on(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
