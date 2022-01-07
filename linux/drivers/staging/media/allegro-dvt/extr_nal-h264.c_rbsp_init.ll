; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_rbsp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_rbsp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbsp = type { i64, i64, %struct.nal_h264_ops*, i64, i8* }
%struct.nal_h264_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbsp*, i8*, i64, %struct.nal_h264_ops*)* @rbsp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbsp_init(%struct.rbsp* %0, i8* %1, i64 %2, %struct.nal_h264_ops* %3) #0 {
  %5 = alloca %struct.rbsp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nal_h264_ops*, align 8
  store %struct.rbsp* %0, %struct.rbsp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.nal_h264_ops* %3, %struct.nal_h264_ops** %8, align 8
  %9 = load %struct.rbsp*, %struct.rbsp** %5, align 8
  %10 = icmp ne %struct.rbsp* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %26

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.rbsp*, %struct.rbsp** %5, align 8
  %15 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.rbsp*, %struct.rbsp** %5, align 8
  %18 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.rbsp*, %struct.rbsp** %5, align 8
  %20 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.nal_h264_ops*, %struct.nal_h264_ops** %8, align 8
  %22 = load %struct.rbsp*, %struct.rbsp** %5, align 8
  %23 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %22, i32 0, i32 2
  store %struct.nal_h264_ops* %21, %struct.nal_h264_ops** %23, align 8
  %24 = load %struct.rbsp*, %struct.rbsp** %5, align 8
  %25 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %12, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
