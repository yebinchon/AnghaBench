; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_uac1_legacy.c_gaudio_close_snd_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_uac1_legacy.c_gaudio_close_snd_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gaudio = type { %struct.gaudio_snd_dev, %struct.gaudio_snd_dev, %struct.gaudio_snd_dev }
%struct.gaudio_snd_dev = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gaudio*)* @gaudio_close_snd_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gaudio_close_snd_dev(%struct.gaudio* %0) #0 {
  %2 = alloca %struct.gaudio*, align 8
  %3 = alloca %struct.gaudio_snd_dev*, align 8
  store %struct.gaudio* %0, %struct.gaudio** %2, align 8
  %4 = load %struct.gaudio*, %struct.gaudio** %2, align 8
  %5 = getelementptr inbounds %struct.gaudio, %struct.gaudio* %4, i32 0, i32 2
  store %struct.gaudio_snd_dev* %5, %struct.gaudio_snd_dev** %3, align 8
  %6 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %7 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @filp_close(i64 %13, i32* null)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.gaudio*, %struct.gaudio** %2, align 8
  %17 = getelementptr inbounds %struct.gaudio, %struct.gaudio* %16, i32 0, i32 1
  store %struct.gaudio_snd_dev* %17, %struct.gaudio_snd_dev** %3, align 8
  %18 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %19 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %24 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @filp_close(i64 %25, i32* null)
  br label %27

27:                                               ; preds = %22, %15
  %28 = load %struct.gaudio*, %struct.gaudio** %2, align 8
  %29 = getelementptr inbounds %struct.gaudio, %struct.gaudio* %28, i32 0, i32 0
  store %struct.gaudio_snd_dev* %29, %struct.gaudio_snd_dev** %3, align 8
  %30 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %31 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %36 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @filp_close(i64 %37, i32* null)
  br label %39

39:                                               ; preds = %34, %27
  ret i32 0
}

declare dso_local i32 @filp_close(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
