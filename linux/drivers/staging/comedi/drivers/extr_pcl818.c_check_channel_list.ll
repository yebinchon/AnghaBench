; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_check_channel_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl818.c_check_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"range/channel list is empty!\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"channel list must be continuous! chanlist[%i]=%d but must be %d or %d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"bad channel or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32)* @check_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_channel_list(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ult i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %165

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %162

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  store i32 1, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %29

29:                                               ; preds = %90, %24
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %95

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %36, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %95

44:                                               ; preds = %33
  %45 = load i32, i32* %11, align 4
  %46 = sub i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CR_CHAN(i32 %49)
  %51 = add i32 %50, 1
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = urem i32 %51, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CR_CHAN(i32 %61)
  %63 = icmp ne i32 %56, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %44
  %65 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @CR_CHAN(i32 %73)
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @CR_CHAN(i32 %78)
  %80 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_dbg(i32 %67, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %74, i32 %75, i32 %79)
  store i32 0, i32* %5, align 4
  br label %165

81:                                               ; preds = %44
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %88
  store i32 %86, i32* %89, align 4
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %13, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %29

95:                                               ; preds = %43, %29
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %158, %95
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %161

100:                                              ; preds = %96
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %11, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %13, align 4
  %108 = urem i32 %106, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %105, %111
  br i1 %112, label %113, label %157

113:                                              ; preds = %100
  %114 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %115 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @CR_CHAN(i32 %121)
  %123 = load i32, i32* %11, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @CR_RANGE(i32 %126)
  %128 = load i32, i32* %11, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @CR_AREF(i32 %131)
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %13, align 4
  %136 = urem i32 %134, %135
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @CR_CHAN(i32 %139)
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %13, align 4
  %144 = urem i32 %142, %143
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @CR_RANGE(i32 %147)
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %13, align 4
  %151 = urem i32 %149, %150
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @CR_AREF(i32 %154)
  %156 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_dbg(i32 %116, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %122, i32 %127, i32 %132, i32 %140, i32 %148, i32 %155)
  store i32 0, i32* %5, align 4
  br label %165

157:                                              ; preds = %100
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %96

161:                                              ; preds = %96
  br label %163

162:                                              ; preds = %21
  store i32 1, i32* %13, align 4
  br label %163

163:                                              ; preds = %162, %161
  %164 = load i32, i32* %13, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %163, %113, %64, %16
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
