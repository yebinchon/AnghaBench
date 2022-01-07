; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2815.c_dt2815_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt2815.c_dt2815_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_lrange = type { i32 }
%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, i32, %struct.comedi_lrange**, i32, i32, i32, i32 }
%struct.comedi_devconfig = type { i32* }
%struct.dt2815_private = type { %struct.comedi_lrange** }

@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@dt2815_ao_insn = common dso_local global i32 0, align 4
@dt2815_ao_insn_read = common dso_local global i32 0, align 4
@range_4_20mA = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@range_0_32mA = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@range_bipolar5 = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@range_unipolar5 = common dso_local global %struct.comedi_lrange zeroinitializer, align 4
@DT2815_STATUS = common dso_local global i64 0, align 8
@DT2815_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"program: 0x%x (@t=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unexpected status 0x%x (@t=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @dt2815_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2815_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.dt2815_private*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.comedi_lrange*, align 8
  %10 = alloca %struct.comedi_lrange*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @comedi_request_region(%struct.comedi_device* %14, i32 %19, i32 2)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %179

25:                                               ; preds = %2
  %26 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %27 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %26, i32 1)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %3, align 4
  br label %179

32:                                               ; preds = %25
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = call %struct.dt2815_private* @comedi_alloc_devpriv(%struct.comedi_device* %33, i32 8)
  store %struct.dt2815_private* %34, %struct.dt2815_private** %6, align 8
  %35 = load %struct.dt2815_private*, %struct.dt2815_private** %6, align 8
  %36 = icmp ne %struct.dt2815_private* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %179

40:                                               ; preds = %32
  %41 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 2
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %42, align 8
  %44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i64 0
  store %struct.comedi_subdevice* %44, %struct.comedi_subdevice** %7, align 8
  %45 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @SDF_WRITABLE, align 4
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 0
  store i32 4095, i32* %52, align 8
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 1
  store i32 8, i32* %54, align 4
  %55 = load i32, i32* @dt2815_ao_insn, align 4
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @dt2815_ao_insn_read, align 4
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.dt2815_private*, %struct.dt2815_private** %6, align 8
  %62 = getelementptr inbounds %struct.dt2815_private, %struct.dt2815_private* %61, i32 0, i32 0
  %63 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %62, align 8
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 2
  store %struct.comedi_lrange** %63, %struct.comedi_lrange*** %65, align 8
  %66 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %67 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, %struct.comedi_lrange* @range_4_20mA, %struct.comedi_lrange* @range_0_32mA
  store %struct.comedi_lrange* %73, %struct.comedi_lrange** %9, align 8
  %74 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %75 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, %struct.comedi_lrange* @range_bipolar5, %struct.comedi_lrange* @range_unipolar5
  store %struct.comedi_lrange* %81, %struct.comedi_lrange** %10, align 8
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %107, %40
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %110

85:                                               ; preds = %82
  %86 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %87 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 5, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load %struct.comedi_lrange*, %struct.comedi_lrange** %9, align 8
  br label %99

97:                                               ; preds = %85
  %98 = load %struct.comedi_lrange*, %struct.comedi_lrange** %10, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi %struct.comedi_lrange* [ %96, %95 ], [ %98, %97 ]
  %101 = load %struct.dt2815_private*, %struct.dt2815_private** %6, align 8
  %102 = getelementptr inbounds %struct.dt2815_private, %struct.dt2815_private* %101, i32 0, i32 0
  %103 = load %struct.comedi_lrange**, %struct.comedi_lrange*** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.comedi_lrange*, %struct.comedi_lrange** %103, i64 %105
  store %struct.comedi_lrange* %100, %struct.comedi_lrange** %106, align 8
  br label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %82

110:                                              ; preds = %82
  %111 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @DT2815_STATUS, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @outb(i32 0, i64 %115)
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %175, %110
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 100
  br i1 %119, label %120, label %178

120:                                              ; preds = %117
  %121 = call i32 @usleep_range(i32 1000, i32 3000)
  %122 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DT2815_STATUS, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @inb(i64 %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp eq i32 %128, 4
  br i1 %129, label %130, label %152

130:                                              ; preds = %120
  %131 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %132 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 4
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 3
  %137 = shl i32 %136, 3
  %138 = or i32 %137, 7
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %141 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @DT2815_DATA, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @outb(i32 %139, i64 %144)
  %146 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %147 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @dev_dbg(i32 %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %149, i32 %150)
  br label %178

152:                                              ; preds = %120
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %173

155:                                              ; preds = %152
  %156 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %157 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @dev_dbg(i32 %158, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load i32, i32* %12, align 4
  %163 = and i32 %162, 96
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %155
  %166 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %167 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @DT2815_STATUS, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @outb(i32 0, i64 %170)
  br label %172

172:                                              ; preds = %165, %155
  br label %173

173:                                              ; preds = %172, %152
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %117

178:                                              ; preds = %130, %117
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %37, %30, %23
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @comedi_request_region(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local %struct.dt2815_private* @comedi_alloc_devpriv(%struct.comedi_device*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
