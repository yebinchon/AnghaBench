; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_create_one_cdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_create_one_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i32, %struct.st_modedef*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.st_modedef = type { %struct.device**, %struct.cdev** }
%struct.device = type { i32 }
%struct.cdev = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@SCSI_TAPE_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"st%d: out of memory. Device not attached.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@st_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"st%d: Can't add %s-rewind mode %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"non\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"st%d: Device not attached.\0A\00", align 1
@ST_NBR_MODE_BITS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@st_formats = common dso_local global i32* null, align 8
@st_sysfs_class = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"st%d: device_create failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*, i32, i32)* @create_one_cdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_one_cdev(%struct.scsi_tape* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_tape*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cdev*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.st_modedef*, align 8
  %14 = alloca [10 x i8], align 1
  %15 = alloca i32, align 4
  store %struct.scsi_tape* %0, %struct.scsi_tape** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %17 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %16, i32 0, i32 1
  %18 = load %struct.st_modedef*, %struct.st_modedef** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %18, i64 %20
  store %struct.st_modedef* %21, %struct.st_modedef** %13, align 8
  %22 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %23 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* @SCSI_TAPE_MAJOR, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @TAPE_MINOR(i32 %26, i32 %27, i32 %28)
  %30 = call i32 @MKDEV(i32 %25, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = call %struct.cdev* (...) @cdev_alloc()
  store %struct.cdev* %31, %struct.cdev** %11, align 8
  %32 = load %struct.cdev*, %struct.cdev** %11, align 8
  %33 = icmp ne %struct.cdev* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* %15, align 4
  %36 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %126

39:                                               ; preds = %3
  %40 = load i32, i32* @THIS_MODULE, align 4
  %41 = load %struct.cdev*, %struct.cdev** %11, align 8
  %42 = getelementptr inbounds %struct.cdev, %struct.cdev* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.cdev*, %struct.cdev** %11, align 8
  %44 = getelementptr inbounds %struct.cdev, %struct.cdev* %43, i32 0, i32 0
  store i32* @st_fops, i32** %44, align 8
  %45 = load %struct.cdev*, %struct.cdev** %11, align 8
  %46 = load %struct.st_modedef*, %struct.st_modedef** %13, align 8
  %47 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %46, i32 0, i32 1
  %48 = load %struct.cdev**, %struct.cdev*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.cdev*, %struct.cdev** %48, i64 %50
  store %struct.cdev* %45, %struct.cdev** %51, align 8
  %52 = load %struct.cdev*, %struct.cdev** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @cdev_add(%struct.cdev* %52, i32 %53, i32 1)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %39
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %62, i32 %63)
  %65 = load i32, i32* %15, align 4
  %66 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %117

67:                                               ; preds = %39
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @ST_NBR_MODE_BITS, align 4
  %70 = sub nsw i32 4, %69
  %71 = shl i32 %68, %70
  store i32 %71, i32* %8, align 4
  %72 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %77 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %78 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %77, i32 0, i32 3
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32*, i32** @st_formats, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @snprintf(i8* %72, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %76, i8* %81, i32 %86)
  %88 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %89 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.scsi_tape*, %struct.scsi_tape** %5, align 8
  %94 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %93, i32 0, i32 1
  %95 = load %struct.st_modedef*, %struct.st_modedef** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %95, i64 %97
  %99 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0
  %100 = call %struct.device* @device_create(i32* @st_sysfs_class, i32* %91, i32 %92, %struct.st_modedef* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %99)
  store %struct.device* %100, %struct.device** %12, align 8
  %101 = load %struct.device*, %struct.device** %12, align 8
  %102 = call i64 @IS_ERR(%struct.device* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %67
  %105 = load i32, i32* %15, align 4
  %106 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %105)
  %107 = load %struct.device*, %struct.device** %12, align 8
  %108 = call i32 @PTR_ERR(%struct.device* %107)
  store i32 %108, i32* %9, align 4
  br label %117

109:                                              ; preds = %67
  %110 = load %struct.device*, %struct.device** %12, align 8
  %111 = load %struct.st_modedef*, %struct.st_modedef** %13, align 8
  %112 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %111, i32 0, i32 0
  %113 = load %struct.device**, %struct.device*** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.device*, %struct.device** %113, i64 %115
  store %struct.device* %110, %struct.device** %116, align 8
  store i32 0, i32* %4, align 4
  br label %140

117:                                              ; preds = %104, %57
  %118 = load %struct.st_modedef*, %struct.st_modedef** %13, align 8
  %119 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %118, i32 0, i32 1
  %120 = load %struct.cdev**, %struct.cdev*** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.cdev*, %struct.cdev** %120, i64 %122
  %124 = load %struct.cdev*, %struct.cdev** %123, align 8
  %125 = call i32 @cdev_del(%struct.cdev* %124)
  br label %126

126:                                              ; preds = %117, %34
  %127 = load %struct.st_modedef*, %struct.st_modedef** %13, align 8
  %128 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %127, i32 0, i32 1
  %129 = load %struct.cdev**, %struct.cdev*** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.cdev*, %struct.cdev** %129, i64 %131
  store %struct.cdev* null, %struct.cdev** %132, align 8
  %133 = load %struct.st_modedef*, %struct.st_modedef** %13, align 8
  %134 = getelementptr inbounds %struct.st_modedef, %struct.st_modedef* %133, i32 0, i32 0
  %135 = load %struct.device**, %struct.device*** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.device*, %struct.device** %135, i64 %137
  store %struct.device* null, %struct.device** %138, align 8
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %126, %109
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @TAPE_MINOR(i32, i32, i32) #1

declare dso_local %struct.cdev* @cdev_alloc(...) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @cdev_add(%struct.cdev*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local %struct.device* @device_create(i32*, i32*, i32, %struct.st_modedef*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @cdev_del(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
