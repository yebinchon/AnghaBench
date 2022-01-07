; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_read_element_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_read_element_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@READ_ELEMENT_STATUS = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"asked for element 0x%02x, got 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"device has no volume tag support\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"READ ELEMENT STATUS for element 0x%x failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8*)* @ch_read_element_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_read_element_status(%struct.TYPE_7__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [12 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* @GFP_DMA, align 4
  %13 = or i32 %11, %12
  %14 = call i32* @kmalloc(i32 512, i32 %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %108

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %96, %20
  %22 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %23 = call i32 @memset(i32* %22, i32 0, i32 48)
  %24 = load i32, i32* @READ_ELEMENT_STATUS, align 4
  %25 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 7
  %32 = shl i32 %31, 5
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 16, i32 0
  %39 = or i32 %32, %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ch_elem_to_typecode(%struct.TYPE_7__* %40, i32 %41)
  %43 = or i32 %39, %42
  %44 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 2
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 3
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 5
  store i32 1, i32* %52, align 4
  %53 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 9
  store i32 255, i32* %53, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %58 = call i32 @ch_do_scsi(%struct.TYPE_7__* %54, i32* %55, i32 12, i32* %56, i32 256, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = icmp eq i32 0, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %21
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 16
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 17
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %64, %67
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %60
  %72 = load i32, i32* %6, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 16
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 17
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %76, %79
  %81 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @kfree(i32* %82)
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %108

86:                                               ; preds = %60
  %87 = load i8*, i8** %7, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 16
  %90 = call i32 @memcpy(i8* %87, i32* %89, i32 16)
  br label %104

91:                                               ; preds = %21
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* @KERN_INFO, align 4
  %100 = call i32 @VPRINTK(i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %21

101:                                              ; preds = %91
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %101, %86
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @kfree(i32* %105)
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %71, %17
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ch_elem_to_typecode(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ch_do_scsi(%struct.TYPE_7__*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, i32, ...) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @VPRINTK(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
