; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12026.c_isl12026_nvm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-isl12026.c_isl12026_nvm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl12026 = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.i2c_msg = type { i32*, i64, i32, i32 }

@ISL12026_PAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"nvmem write error, ret=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ISL12026_NVMEM_WRITE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @isl12026_nvm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl12026_nvm_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.isl12026*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [1 x %struct.i2c_msg], align 16
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.isl12026*
  store %struct.isl12026* %20, %struct.isl12026** %10, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %12, align 8
  %23 = load i32, i32* @ISL12026_PAGESIZE, align 4
  %24 = add nsw i32 %23, 2
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %15, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %28 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %17, i64 0, i64 0
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 3
  %33 = load %struct.isl12026*, %struct.isl12026** %10, align 8
  %34 = getelementptr inbounds %struct.isl12026, %struct.isl12026* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %32, align 4
  %38 = load %struct.isl12026*, %struct.isl12026** %10, align 8
  %39 = getelementptr inbounds %struct.isl12026, %struct.isl12026* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock_interruptible(i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %4
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %128

47:                                               ; preds = %4
  store i64 0, i64* %14, align 8
  br label %48

48:                                               ; preds = %107, %47
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %121

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ISL12026_PAGESIZE, align 4
  %54 = call i32 @round_down(i32 %52, i32 %53)
  %55 = load i32, i32* @ISL12026_PAGESIZE, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = sub i32 %56, %57
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i64 @min(i64 %60, i64 %61)
  store i64 %62, i64* %13, align 8
  %63 = getelementptr inbounds i32, i32* %27, i64 2
  %64 = load i32*, i32** %12, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @memcpy(i32* %63, i32* %66, i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = lshr i32 %69, 8
  %71 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %70, i32* %71, align 16
  %72 = load i32, i32* %7, align 4
  %73 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %72, i32* %73, align 4
  %74 = load i64, i64* %13, align 8
  %75 = add i64 %74, 2
  %76 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %17, i64 0, i64 0
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.isl12026*, %struct.isl12026** %10, align 8
  %79 = getelementptr inbounds %struct.isl12026, %struct.isl12026* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %17, i64 0, i64 0
  %84 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %17, i64 0, i64 0
  %85 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %84)
  %86 = call i32 @i2c_transfer(i32 %82, %struct.i2c_msg* %83, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %17, i64 0, i64 0
  %89 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %88)
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %51
  %92 = load %struct.isl12026*, %struct.isl12026** %10, align 8
  %93 = getelementptr inbounds %struct.isl12026, %struct.isl12026* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %11, align 4
  br label %105

102:                                              ; preds = %91
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi i32 [ %101, %100 ], [ %104, %102 ]
  store i32 %106, i32* %11, align 4
  br label %121

107:                                              ; preds = %51
  store i32 0, i32* %11, align 4
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* %9, align 8
  %110 = sub i64 %109, %108
  store i64 %110, i64* %9, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i32, i32* %7, align 4
  %113 = zext i32 %112 to i64
  %114 = add i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %7, align 4
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %14, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %14, align 8
  %119 = load i32, i32* @ISL12026_NVMEM_WRITE_TIME, align 4
  %120 = call i32 @msleep(i32 %119)
  br label %48

121:                                              ; preds = %105, %48
  %122 = load %struct.isl12026*, %struct.isl12026** %10, align 8
  %123 = getelementptr inbounds %struct.isl12026, %struct.isl12026* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %128

128:                                              ; preds = %121, %45
  %129 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #2

declare dso_local i32 @round_down(i32, i32) #2

declare dso_local i64 @min(i64, i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
