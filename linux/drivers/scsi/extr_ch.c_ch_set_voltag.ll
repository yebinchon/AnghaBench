; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_set_voltag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_set_voltag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s %s voltag: 0x%x => \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@SEND_VOLUME_TAG = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32, i32*)* @ch_set_voltag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_set_voltag(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [12 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kzalloc(i32 512, i32 %15)
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %86

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %30, i32 %31, i32* %32)
  %34 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 0
  %35 = call i32 @memset(i32* %34, i32 0, i32 48)
  %36 = load i32, i32* @SEND_VOLUME_TAG, align 4
  %37 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 0
  store i32 %36, i32* %37, align 16
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 7
  %44 = shl i32 %43, 5
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @ch_elem_to_typecode(%struct.TYPE_7__* %45, i32 %46)
  %48 = or i32 %44, %47
  %49 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 2
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 255
  %56 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 3
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %22
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 13, i32 12
  br label %69

64:                                               ; preds = %22
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 11, i32 10
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi i32 [ %63, %59 ], [ %68, %64 ]
  %71 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 5
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 9
  store i32 255, i32* %72, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @memcpy(i32* %73, i32* %74, i32 32)
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @ch_check_voltag(i32* %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds [12 x i32], [12 x i32]* %12, i64 0, i64 0
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* @DMA_TO_DEVICE, align 4
  %82 = call i32 @ch_do_scsi(%struct.TYPE_7__* %78, i32* %79, i32 12, i32* %80, i32 256, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @kfree(i32* %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %69, %19
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ch_elem_to_typecode(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ch_check_voltag(i32*) #1

declare dso_local i32 @ch_do_scsi(%struct.TYPE_7__*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
