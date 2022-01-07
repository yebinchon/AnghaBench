; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_debugfs.c_musb_softconnect_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_debugfs.c_musb_softconnect_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.musb* }
%struct.musb = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MUSB_DEVCTL = common dso_local global i32 0, align 4
@MUSB_DEVCTL_SESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @musb_softconnect_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musb_softconnect_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.musb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.musb*, %struct.musb** %9, align 8
  store %struct.musb* %10, %struct.musb** %5, align 8
  %11 = load %struct.musb*, %struct.musb** %5, align 8
  %12 = getelementptr inbounds %struct.musb, %struct.musb* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %42 [
    i32 129, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %2, %2
  %19 = load %struct.musb*, %struct.musb** %5, align 8
  %20 = getelementptr inbounds %struct.musb, %struct.musb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pm_runtime_get_sync(i32 %21)
  %23 = load %struct.musb*, %struct.musb** %5, align 8
  %24 = getelementptr inbounds %struct.musb, %struct.musb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MUSB_DEVCTL, align 4
  %27 = call i32 @musb_readb(i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MUSB_DEVCTL_SESSION, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %7, align 4
  %34 = load %struct.musb*, %struct.musb** %5, align 8
  %35 = getelementptr inbounds %struct.musb, %struct.musb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pm_runtime_mark_last_busy(i32 %36)
  %38 = load %struct.musb*, %struct.musb** %5, align 8
  %39 = getelementptr inbounds %struct.musb, %struct.musb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pm_runtime_put_autosuspend(i32 %40)
  br label %43

42:                                               ; preds = %2
  store i32 -1, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %18
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %45)
  ret i32 0
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
