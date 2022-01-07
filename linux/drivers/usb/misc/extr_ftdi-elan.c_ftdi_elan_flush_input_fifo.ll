; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_flush_input_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_flush_input_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i8*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" ..\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"STATUS ERROR retry limit reached\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"only one byte flushed from FTDI = %02X\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"TIMED OUT retry limit reached\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"empty packet retry limit reached\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"error = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_flush_input_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_flush_input_fifo(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [94 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  store i32 10, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 20, i32* %6, align 4
  br label %18

18:                                               ; preds = %168, %152, %134, %106, %79, %1
  store i32 0, i32* %7, align 4
  %19 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %20 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %23 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %26 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_rcvbulkpipe(%struct.TYPE_3__* %24, i32 %27)
  %29 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %30 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %33 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @usb_bulk_msg(%struct.TYPE_3__* %21, i32 %28, i8* %31, i32 %34, i32* %7, i32 100)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %38, label %80

38:                                               ; preds = %18
  %39 = getelementptr inbounds [94 x i8], [94 x i8]* %9, i64 0, i64 0
  store i8* %39, i8** %10, align 8
  store i32 30, i32* %11, align 4
  %40 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %41 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %43 = getelementptr inbounds [94 x i8], [94 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %43, align 16
  br label %44

44:                                               ; preds = %76, %38
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %7, align 4
  %47 = icmp sgt i32 %45, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %44
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %12, align 8
  %51 = load i8, i8* %49, align 1
  store i8 %51, i8* %14, align 1
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %14, align 1
  %58 = sext i8 %57 to i32
  %59 = and i32 255, %58
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i8*, i8** %10, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %10, align 8
  br label %76

64:                                               ; preds = %48
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %75

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i8*, i8** %10, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %10, align 8
  br label %75

75:                                               ; preds = %69, %68
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %44

79:                                               ; preds = %44
  br label %18

80:                                               ; preds = %18
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %115

83:                                               ; preds = %80
  %84 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %85 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %15, align 1
  %89 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %90 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %16, align 1
  %94 = load i8, i8* %15, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 49
  br i1 %96, label %97, label %102

97:                                               ; preds = %83
  %98 = load i8, i8* %16, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 96
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %185

102:                                              ; preds = %97, %83
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %6, align 4
  %105 = icmp sgt i32 %103, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %18

107:                                              ; preds = %102
  %108 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %109 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = call i32 (i32*, i8*, ...) @dev_err(i32* %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @EFAULT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %185

115:                                              ; preds = %80
  %116 = load i32, i32* %7, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %115
  %119 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %120 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  store i8 %123, i8* %17, align 1
  %124 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %125 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i8, i8* %17, align 1
  %129 = sext i8 %128 to i32
  %130 = call i32 (i32*, i8*, ...) @dev_err(i32* %127, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %6, align 4
  %133 = icmp sgt i32 %131, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %118
  br label %18

135:                                              ; preds = %118
  %136 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %137 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %136, i32 0, i32 1
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* @EFAULT, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %185

143:                                              ; preds = %115
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @ETIMEDOUT, align 4
  %146 = sub nsw i32 0, %145
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %143
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %5, align 4
  %151 = icmp sgt i32 %149, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %18

153:                                              ; preds = %148
  %154 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %155 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %154, i32 0, i32 1
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = call i32 (i32*, i8*, ...) @dev_err(i32* %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %2, align 4
  br label %185

161:                                              ; preds = %143
  %162 = load i32, i32* %8, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load i32, i32* %4, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %4, align 4
  %167 = icmp sgt i32 %165, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %18

169:                                              ; preds = %164
  %170 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %171 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %170, i32 0, i32 1
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = call i32 (i32*, i8*, ...) @dev_err(i32* %173, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %2, align 4
  br label %185

177:                                              ; preds = %161
  %178 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %179 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %178, i32 0, i32 1
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %8, align 4
  %183 = call i32 (i32*, i8*, ...) @dev_err(i32* %181, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %177, %169, %153, %135, %107, %101
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @usb_bulk_msg(%struct.TYPE_3__*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
