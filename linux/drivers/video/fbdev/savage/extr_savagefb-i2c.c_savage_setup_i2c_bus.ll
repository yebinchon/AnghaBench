; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb-i2c.c_savage_setup_i2c_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb-i2c.c_savage_setup_i2c_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savagefb_i2c_chan = type { %struct.TYPE_10__*, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32 (%struct.savagefb_i2c_chan.0*, i32)*, i32 (%struct.savagefb_i2c_chan.1*, i32)*, %struct.savagefb_i2c_chan* }
%struct.savagefb_i2c_chan.0 = type opaque
%struct.savagefb_i2c_chan.1 = type opaque

@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"I2C bus %s registered.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to register I2C bus %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.savagefb_i2c_chan*, i8*)* @savage_setup_i2c_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savage_setup_i2c_bus(%struct.savagefb_i2c_chan* %0, i8* %1) #0 {
  %3 = alloca %struct.savagefb_i2c_chan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.savagefb_i2c_chan* %0, %struct.savagefb_i2c_chan** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %7 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %89

10:                                               ; preds = %2
  %11 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %12 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcpy(i32 %14, i8* %15)
  %17 = load i32, i32* @THIS_MODULE, align 4
  %18 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %19 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 8
  %21 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %22 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %21, i32 0, i32 2
  %23 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %24 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %25, align 8
  %26 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %27 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %33 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32* %31, i32** %35, align 8
  %36 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %37 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 10, i32* %38, align 8
  %39 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %40 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 20, i32* %41, align 4
  %42 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %43 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %44 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  store %struct.savagefb_i2c_chan* %42, %struct.savagefb_i2c_chan** %45, align 8
  %46 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %47 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %46, i32 0, i32 1
  %48 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %49 = call i32 @i2c_set_adapdata(%struct.TYPE_11__* %47, %struct.savagefb_i2c_chan* %48)
  %50 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %51 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i32 (%struct.savagefb_i2c_chan.1*, i32)*, i32 (%struct.savagefb_i2c_chan.1*, i32)** %52, align 8
  %54 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %55 = bitcast %struct.savagefb_i2c_chan* %54 to %struct.savagefb_i2c_chan.1*
  %56 = call i32 %53(%struct.savagefb_i2c_chan.1* %55, i32 1)
  %57 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %58 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32 (%struct.savagefb_i2c_chan.0*, i32)*, i32 (%struct.savagefb_i2c_chan.0*, i32)** %59, align 8
  %61 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %62 = bitcast %struct.savagefb_i2c_chan* %61 to %struct.savagefb_i2c_chan.0*
  %63 = call i32 %60(%struct.savagefb_i2c_chan.0* %62, i32 1)
  %64 = call i32 @udelay(i32 20)
  %65 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %66 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %65, i32 0, i32 1
  %67 = call i32 @i2c_bit_add_bus(%struct.TYPE_11__* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %10
  %71 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %72 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %77)
  br label %88

79:                                               ; preds = %10
  %80 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %3, align 8
  %81 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @dev_warn(i32* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %79, %70
  br label %89

89:                                               ; preds = %88, %2
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_11__*, %struct.savagefb_i2c_chan*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
