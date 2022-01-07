; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.comedi_file* }
%struct.comedi_file = type { %struct.comedi_device* }
%struct.comedi_device = type { i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_4__*, %struct.file* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"no driver attached\0A\00", align 1
@CMDF_WRITE = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @comedi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_file*, align 8
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.comedi_file*, %struct.comedi_file** %12, align 8
  store %struct.comedi_file* %13, %struct.comedi_file** %6, align 8
  %14 = load %struct.comedi_file*, %struct.comedi_file** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_file, %struct.comedi_file* %14, i32 0, i32 0
  %16 = load %struct.comedi_device*, %struct.comedi_device** %15, align 8
  store %struct.comedi_device* %16, %struct.comedi_device** %7, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = call i32 @down_read(i32* %18)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %135

29:                                               ; preds = %2
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = call %struct.comedi_subdevice* @comedi_file_read_subdevice(%struct.file* %30)
  store %struct.comedi_subdevice* %31, %struct.comedi_subdevice** %8, align 8
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  store %struct.comedi_subdevice* %32, %struct.comedi_subdevice** %9, align 8
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %34 = icmp ne %struct.comedi_subdevice* %33, null
  br i1 %34, label %35, label %78

35:                                               ; preds = %29
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %78

40:                                               ; preds = %35
  %41 = load %struct.file*, %struct.file** %3, align 8
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @poll_wait(%struct.file* %41, i32* %45, i32* %46)
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 1
  %50 = load %struct.file*, %struct.file** %49, align 8
  %51 = load %struct.file*, %struct.file** %3, align 8
  %52 = icmp ne %struct.file* %50, %51
  br i1 %52, label %71, label %53

53:                                               ; preds = %40
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %55 = call i32 @comedi_is_subdevice_running(%struct.comedi_subdevice* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CMDF_WRITE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %57
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %69 = call i64 @comedi_buf_read_n_available(%struct.comedi_subdevice* %68)
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67, %57, %53, %40
  %72 = load i32, i32* @EPOLLIN, align 4
  %73 = load i32, i32* @EPOLLRDNORM, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %71, %67
  br label %78

78:                                               ; preds = %77, %35, %29
  %79 = load %struct.file*, %struct.file** %3, align 8
  %80 = call %struct.comedi_subdevice* @comedi_file_write_subdevice(%struct.file* %79)
  store %struct.comedi_subdevice* %80, %struct.comedi_subdevice** %8, align 8
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %82 = icmp ne %struct.comedi_subdevice* %81, null
  br i1 %82, label %83, label %134

83:                                               ; preds = %78
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %85 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = icmp ne %struct.TYPE_4__* %86, null
  br i1 %87, label %88, label %134

88:                                               ; preds = %83
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %90 = call i32 @comedi_bytes_per_sample(%struct.comedi_subdevice* %89)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %92 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %93 = icmp ne %struct.comedi_subdevice* %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.file*, %struct.file** %3, align 8
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %97 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @poll_wait(%struct.file* %95, i32* %99, i32* %100)
  br label %102

102:                                              ; preds = %94, %88
  %103 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %104 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %103, i32 0, i32 1
  %105 = load %struct.file*, %struct.file** %104, align 8
  %106 = load %struct.file*, %struct.file** %3, align 8
  %107 = icmp ne %struct.file* %105, %106
  br i1 %107, label %127, label %108

108:                                              ; preds = %102
  %109 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %110 = call i32 @comedi_is_subdevice_running(%struct.comedi_subdevice* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %108
  %113 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %114 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @CMDF_WRITE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %112
  %123 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %124 = call i32 @comedi_buf_write_n_available(%struct.comedi_subdevice* %123)
  %125 = load i32, i32* %10, align 4
  %126 = icmp uge i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %122, %112, %108, %102
  %128 = load i32, i32* @EPOLLOUT, align 4
  %129 = load i32, i32* @EPOLLWRNORM, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %127, %122
  br label %134

134:                                              ; preds = %133, %83, %78
  br label %135

135:                                              ; preds = %134, %24
  %136 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %137 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %136, i32 0, i32 0
  %138 = call i32 @up_read(i32* %137)
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local %struct.comedi_subdevice* @comedi_file_read_subdevice(%struct.file*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @comedi_is_subdevice_running(%struct.comedi_subdevice*) #1

declare dso_local i64 @comedi_buf_read_n_available(%struct.comedi_subdevice*) #1

declare dso_local %struct.comedi_subdevice* @comedi_file_write_subdevice(%struct.file*) #1

declare dso_local i32 @comedi_bytes_per_sample(%struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_buf_write_n_available(%struct.comedi_subdevice*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
