; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_check_channel_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcl816.c_check_channel_list.c"
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
  br label %163

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %160

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  store i32 1, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %29

29:                                               ; preds = %88, %24
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %93

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
  br label %93

44:                                               ; preds = %33
  %45 = load i32, i32* %11, align 4
  %46 = sub i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CR_CHAN(i32 %49)
  %51 = add i32 %50, 1
  %52 = load i32, i32* %9, align 4
  %53 = urem i32 %51, %52
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CR_CHAN(i32 %59)
  %61 = icmp ne i32 %54, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %44
  %63 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @CR_CHAN(i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @CR_CHAN(i32 %76)
  %78 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_dbg(i32 %65, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %72, i32 %73, i32 %77)
  store i32 0, i32* %5, align 4
  br label %163

79:                                               ; preds = %44
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %86
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %11, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %29

93:                                               ; preds = %43, %29
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %156, %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %159

98:                                               ; preds = %94
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %13, align 4
  %106 = urem i32 %104, %105
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %103, %109
  br i1 %110, label %111, label %155

111:                                              ; preds = %98
  %112 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @CR_CHAN(i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @CR_RANGE(i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @CR_AREF(i32 %129)
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %13, align 4
  %134 = urem i32 %132, %133
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @CR_CHAN(i32 %137)
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %13, align 4
  %142 = urem i32 %140, %141
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @CR_RANGE(i32 %145)
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %13, align 4
  %149 = urem i32 %147, %148
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @CR_AREF(i32 %152)
  %154 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @dev_dbg(i32 %114, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %120, i32 %125, i32 %130, i32 %138, i32 %146, i32 %153)
  store i32 0, i32* %5, align 4
  br label %163

155:                                              ; preds = %98
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %11, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %94

159:                                              ; preds = %94
  br label %161

160:                                              ; preds = %21
  store i32 1, i32* %13, align 4
  br label %161

161:                                              ; preds = %160, %159
  %162 = load i32, i32* %13, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %161, %111, %62, %16
  %164 = load i32, i32* %5, align 4
  ret i32 %164
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
