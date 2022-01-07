; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lm70llp.c_spi_lm70llp_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lm70llp.c_spi_lm70llp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_lm70llp = type { %struct.pardevice*, %struct.parport*, %struct.TYPE_9__, %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.pardevice = type { i32 }
%struct.parport = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.spi_master*, i32*, i32 }
%struct.spi_master = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64, %struct.spi_lm70llp*, i64, i32 }
%struct.pardev_cb = type { i32, %struct.spi_lm70llp* }

@lm70llp = common dso_local global %struct.spi_lm70llp* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"spi_lm70llp instance already loaded. Aborting.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lm70_chipselect = common dso_local global i32 0, align 4
@lm70_txrx = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i64 0, align 8
@SPI_3WIRE = common dso_local global i64 0, align 8
@PARPORT_FLAG_EXCL = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"spi_bitbang_start failed with status %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lm70\00", align 1
@lm70_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"spidev_lm70 at %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"spi_new_device failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"spi_lm70llp probe fail, status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @spi_lm70llp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_lm70llp_attach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.pardevice*, align 8
  %4 = alloca %struct.spi_lm70llp*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pardev_cb, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %8 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** @lm70llp, align 8
  %9 = icmp ne %struct.spi_lm70llp* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %168

12:                                               ; preds = %1
  %13 = load %struct.parport*, %struct.parport** %2, align 8
  %14 = getelementptr inbounds %struct.parport, %struct.parport* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.spi_master* @spi_alloc_master(i32 %17, i32 96)
  store %struct.spi_master* %18, %struct.spi_master** %5, align 8
  %19 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %20 = icmp ne %struct.spi_master* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %165

24:                                               ; preds = %12
  %25 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %26 = call %struct.spi_lm70llp* @spi_master_get_devdata(%struct.spi_master* %25)
  store %struct.spi_lm70llp* %26, %struct.spi_lm70llp** %4, align 8
  %27 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %28 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %29 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store %struct.spi_master* %27, %struct.spi_master** %30, align 8
  %31 = load i32, i32* @lm70_chipselect, align 4
  %32 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %33 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @lm70_txrx, align 4
  %36 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %37 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @SPI_MODE_0, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %35, i32* %41, align 4
  %42 = load i64, i64* @SPI_3WIRE, align 8
  %43 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %44 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load %struct.parport*, %struct.parport** %2, align 8
  %47 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %48 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %47, i32 0, i32 1
  store %struct.parport* %46, %struct.parport** %48, align 8
  %49 = call i32 @memset(%struct.pardev_cb* %7, i32 0, i32 16)
  %50 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %51 = getelementptr inbounds %struct.pardev_cb, %struct.pardev_cb* %7, i32 0, i32 1
  store %struct.spi_lm70llp* %50, %struct.spi_lm70llp** %51, align 8
  %52 = load i32, i32* @PARPORT_FLAG_EXCL, align 4
  %53 = getelementptr inbounds %struct.pardev_cb, %struct.pardev_cb* %7, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load %struct.parport*, %struct.parport** %2, align 8
  %55 = load i32, i32* @DRVNAME, align 4
  %56 = call %struct.pardevice* @parport_register_dev_model(%struct.parport* %54, i32 %55, %struct.pardev_cb* %7, i32 0)
  store %struct.pardevice* %56, %struct.pardevice** %3, align 8
  %57 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %58 = icmp ne %struct.pardevice* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %24
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %162

62:                                               ; preds = %24
  %63 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %64 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %65 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %64, i32 0, i32 0
  store %struct.pardevice* %63, %struct.pardevice** %65, align 8
  %66 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %67 = call i32 @parport_claim(%struct.pardevice* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %159

71:                                               ; preds = %62
  %72 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %73 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %72, i32 0, i32 2
  %74 = call i32 @spi_bitbang_start(%struct.TYPE_9__* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %79 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %78, i32 0, i32 0
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i32*, i8*, ...) @dev_warn(i32* %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %149

82:                                               ; preds = %71
  %83 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %84 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @strcpy(i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %89 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 6000000, i32* %90, align 8
  %91 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %92 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load i64, i64* @SPI_3WIRE, align 8
  %95 = load i64, i64* @SPI_MODE_0, align 8
  %96 = or i64 %94, %95
  %97 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %98 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i64 %96, i64* %99, align 8
  %100 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %101 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %100, i32 0, i32 1
  %102 = load %struct.parport*, %struct.parport** %101, align 8
  %103 = load i32, i32* @lm70_INIT, align 4
  %104 = call i32 @parport_write_data(%struct.parport* %102, i32 %103)
  %105 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %106 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %107 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  store %struct.spi_lm70llp* %105, %struct.spi_lm70llp** %108, align 8
  %109 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %110 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load %struct.spi_master*, %struct.spi_master** %111, align 8
  %113 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %114 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %113, i32 0, i32 4
  %115 = call %struct.TYPE_7__* @spi_new_device(%struct.spi_master* %112, %struct.TYPE_8__* %114)
  %116 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %117 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %116, i32 0, i32 3
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %117, align 8
  %118 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %119 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %118, i32 0, i32 3
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = icmp ne %struct.TYPE_7__* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %82
  %123 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %124 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %123, i32 0, i32 3
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %128 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %127, i32 0, i32 3
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = call i32 @dev_name(i32* %130)
  %132 = call i32 @dev_dbg(i32* %126, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %139

133:                                              ; preds = %82
  %134 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %135 = getelementptr inbounds %struct.pardevice, %struct.pardevice* %134, i32 0, i32 0
  %136 = call i32 (i32*, i8*, ...) @dev_warn(i32* %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %6, align 4
  br label %145

139:                                              ; preds = %122
  %140 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %141 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %140, i32 0, i32 3
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i32 8, i32* %143, align 4
  %144 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  store %struct.spi_lm70llp* %144, %struct.spi_lm70llp** @lm70llp, align 8
  br label %168

145:                                              ; preds = %133
  %146 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %147 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %146, i32 0, i32 2
  %148 = call i32 @spi_bitbang_stop(%struct.TYPE_9__* %147)
  br label %149

149:                                              ; preds = %145, %77
  %150 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %151 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %150, i32 0, i32 1
  %152 = load %struct.parport*, %struct.parport** %151, align 8
  %153 = call i32 @parport_write_data(%struct.parport* %152, i32 0)
  %154 = call i32 @mdelay(i32 10)
  %155 = load %struct.spi_lm70llp*, %struct.spi_lm70llp** %4, align 8
  %156 = getelementptr inbounds %struct.spi_lm70llp, %struct.spi_lm70llp* %155, i32 0, i32 0
  %157 = load %struct.pardevice*, %struct.pardevice** %156, align 8
  %158 = call i32 @parport_release(%struct.pardevice* %157)
  br label %159

159:                                              ; preds = %149, %70
  %160 = load %struct.pardevice*, %struct.pardevice** %3, align 8
  %161 = call i32 @parport_unregister_device(%struct.pardevice* %160)
  br label %162

162:                                              ; preds = %159, %59
  %163 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %164 = call i32 @spi_master_put(%struct.spi_master* %163)
  br label %165

165:                                              ; preds = %162, %21
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %165, %139, %10
  ret void
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.spi_master* @spi_alloc_master(i32, i32) #1

declare dso_local %struct.spi_lm70llp* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @memset(%struct.pardev_cb*, i32, i32) #1

declare dso_local %struct.pardevice* @parport_register_dev_model(%struct.parport*, i32, %struct.pardev_cb*, i32) #1

declare dso_local i32 @parport_claim(%struct.pardevice*) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @parport_write_data(%struct.parport*, i32) #1

declare dso_local %struct.TYPE_7__* @spi_new_device(%struct.spi_master*, %struct.TYPE_8__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @spi_bitbang_stop(%struct.TYPE_9__*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @parport_release(%struct.pardevice*) #1

declare dso_local i32 @parport_unregister_device(%struct.pardevice*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
