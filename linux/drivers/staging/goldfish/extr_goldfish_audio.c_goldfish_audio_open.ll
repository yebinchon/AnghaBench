; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/goldfish/extr_goldfish_audio.c_goldfish_audio_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/goldfish/extr_goldfish_audio.c_goldfish_audio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_3__* }

@audio_data = common dso_local global %struct.TYPE_3__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@open_count = common dso_local global i32 0, align 4
@AUDIO_INT_WRITE_BUFFER_1_EMPTY = common dso_local global i32 0, align 4
@AUDIO_INT_WRITE_BUFFER_2_EMPTY = common dso_local global i32 0, align 4
@AUDIO_INT_ENABLE = common dso_local global i32 0, align 4
@AUDIO_INT_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @goldfish_audio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_audio_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @audio_data, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %31

11:                                               ; preds = %2
  %12 = call i32 @atomic_inc_return(i32* @open_count)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @audio_data, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %17, align 8
  %18 = load i32, i32* @AUDIO_INT_WRITE_BUFFER_1_EMPTY, align 4
  %19 = load i32, i32* @AUDIO_INT_WRITE_BUFFER_2_EMPTY, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @audio_data, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @audio_data, align 8
  %24 = load i32, i32* @AUDIO_INT_ENABLE, align 4
  %25 = load i32, i32* @AUDIO_INT_MASK, align 4
  %26 = call i32 @audio_write(%struct.TYPE_3__* %23, i32 %24, i32 %25)
  store i32 0, i32* %3, align 4
  br label %31

27:                                               ; preds = %11
  %28 = call i32 @atomic_dec(i32* @open_count)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %14, %8
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @audio_write(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
