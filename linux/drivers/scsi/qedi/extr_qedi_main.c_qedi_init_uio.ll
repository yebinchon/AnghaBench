; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_init_uio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_init_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, %struct.qedi_uio_dev* }
%struct.qedi_uio_dev = type { i32, i32, i32, %struct.TYPE_4__*, i64, i64, i64, %struct.uio_info }
%struct.TYPE_4__ = type { i32 }
%struct.uio_info = type { i8*, %struct.qedi_uio_dev*, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@UIO_MEM_LOGICAL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"qedi_uio\00", align 1
@QEDI_MODULE_VERSION = common dso_local global i32 0, align 4
@UIO_IRQ_CUSTOM = common dso_local global i32 0, align 4
@qedi_uio_open = common dso_local global i32 0, align 4
@qedi_uio_close = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"UIO registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_init_uio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_init_uio(%struct.qedi_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedi_ctx*, align 8
  %4 = alloca %struct.qedi_uio_dev*, align 8
  %5 = alloca %struct.uio_info*, align 8
  %6 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %3, align 8
  %7 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %7, i32 0, i32 1
  %9 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %8, align 8
  store %struct.qedi_uio_dev* %9, %struct.qedi_uio_dev** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %4, align 8
  %11 = icmp ne %struct.qedi_uio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %124

15:                                               ; preds = %1
  %16 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %4, align 8
  %17 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %16, i32 0, i32 7
  store %struct.uio_info* %17, %struct.uio_info** %5, align 8
  %18 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %4, align 8
  %19 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %22 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %21, i32 0, i32 6
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 %20, i64* %25, align 8
  %26 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %27 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %26, i32 0, i32 6
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 4, i32* %30, align 8
  %31 = load i8*, i8** @UIO_MEM_LOGICAL, align 8
  %32 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %33 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %32, i32 0, i32 6
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i8* %31, i8** %36, align 8
  %37 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %4, align 8
  %38 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %41 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %40, i32 0, i32 6
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 %39, i64* %44, align 8
  %45 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %4, align 8
  %46 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %49 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %48, i32 0, i32 6
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %47, i32* %52, align 8
  %53 = load i8*, i8** @UIO_MEM_LOGICAL, align 8
  %54 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %55 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %54, i32 0, i32 6
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i8* %53, i8** %58, align 8
  %59 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %4, align 8
  %60 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %63 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %62, i32 0, i32 6
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i64 %61, i64* %66, align 8
  %67 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %4, align 8
  %68 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %71 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %70, i32 0, i32 6
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %69, i32* %74, align 8
  %75 = load i8*, i8** @UIO_MEM_LOGICAL, align 8
  %76 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %77 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %76, i32 0, i32 6
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i8* %75, i8** %80, align 8
  %81 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %82 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %82, align 8
  %83 = load i32, i32* @QEDI_MODULE_VERSION, align 4
  %84 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %85 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @UIO_IRQ_CUSTOM, align 4
  %87 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %88 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @qedi_uio_open, align 4
  %90 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %91 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @qedi_uio_close, align 4
  %93 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %94 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %4, align 8
  %96 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %122

99:                                               ; preds = %15
  %100 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %101 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %100, i32 0, i32 1
  %102 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %101, align 8
  %103 = icmp ne %struct.qedi_uio_dev* %102, null
  br i1 %103, label %121, label %104

104:                                              ; preds = %99
  %105 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %4, align 8
  %106 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %107 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %106, i32 0, i32 1
  store %struct.qedi_uio_dev* %105, %struct.qedi_uio_dev** %107, align 8
  %108 = load %struct.qedi_uio_dev*, %struct.qedi_uio_dev** %4, align 8
  %109 = getelementptr inbounds %struct.qedi_uio_dev, %struct.qedi_uio_dev* %108, i32 0, i32 3
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %113 = call i32 @uio_register_device(i32* %111, %struct.uio_info* %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %104
  %117 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %118 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %117, i32 0, i32 0
  %119 = call i32 @QEDI_ERR(i32* %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %116, %104
  br label %121

121:                                              ; preds = %120, %99
  br label %122

122:                                              ; preds = %121, %15
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %12
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @uio_register_device(i32*, %struct.uio_info*) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
