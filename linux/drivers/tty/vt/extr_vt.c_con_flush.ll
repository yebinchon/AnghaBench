; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_con_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_con_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vc_data*, i32*, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i64, i64, i32*)* @con_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con_flush(%struct.vc_data* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %38

13:                                               ; preds = %4
  %14 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.vc_data*, i32*, i32, i32, i32)*, i32 (%struct.vc_data*, i32*, i32, i32, i32)** %17, align 8
  %19 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load i64, i64* %7, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load i64, i64* %6, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = ptrtoint i32* %23 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 %18(%struct.vc_data* %19, i32* %21, i32 %30, i32 %33, i32 %35)
  %37 = load i32*, i32** %8, align 8
  store i32 -1, i32* %37, align 4
  br label %38

38:                                               ; preds = %13, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
