; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbsevseg.c_update_display_visual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbsevseg.c_update_display_visual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_sevsegdev = type { i32, i32, i8*, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"write retval = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"decimal retval = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_sevsegdev*, i32)* @update_display_visual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_display_visual(%struct.usb_sevsegdev* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_sevsegdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_sevsegdev* %0, %struct.usb_sevsegdev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %10 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %116

14:                                               ; preds = %2
  %15 = load i32, i32* @MAXLEN, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %116

21:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %25 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %30 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %33 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %31, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 %40, i8* %44, align 1
  br label %45

45:                                               ; preds = %28
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %22

48:                                               ; preds = %22
  %49 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %50 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %49, i32 0, i32 5
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %53 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %52, i32 0, i32 5
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %54, i32 0)
  %56 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %57 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 0, %58
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %62 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_control_msg(%struct.TYPE_3__* %51, i32 %55, i32 18, i32 72, i32 21770, i32 %59, i8* %60, i32 %63, i32 2000)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %48
  %68 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %69 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %68, i32 0, i32 5
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @dev_dbg(i32* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %67, %48
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @kfree(i8* %75)
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %93, %74
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ult i64 %79, 8
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %83 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %81
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %77

96:                                               ; preds = %77
  %97 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %98 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %97, i32 0, i32 5
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %101 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %100, i32 0, i32 5
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %102, i32 0)
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 0, %104
  %106 = call i32 @usb_control_msg(%struct.TYPE_3__* %99, i32 %103, i32 18, i32 72, i32 22026, i32 %105, i8* null, i32 0, i32 2000)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %96
  %110 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %3, align 8
  %111 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %110, i32 0, i32 5
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @dev_dbg(i32* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %13, %20, %109, %96
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
