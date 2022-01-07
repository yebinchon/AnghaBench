; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_screenpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_screenpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i16* (%struct.vc_data*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* (%struct.vc_data*, i32, i32)* @screenpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i16* @screenpos(%struct.vc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = inttoptr i64 %16 to i16*
  store i16* %17, i16** %7, align 8
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i16* (%struct.vc_data*, i32)*, i16* (%struct.vc_data*, i32)** %22, align 8
  %24 = icmp ne i16* (%struct.vc_data*, i32)* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = inttoptr i64 %31 to i16*
  store i16* %32, i16** %7, align 8
  br label %42

33:                                               ; preds = %18
  %34 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i16* (%struct.vc_data*, i32)*, i16* (%struct.vc_data*, i32)** %37, align 8
  %39 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i16* %38(%struct.vc_data* %39, i32 %40)
  store i16* %41, i16** %7, align 8
  br label %42

42:                                               ; preds = %33, %25
  br label %43

43:                                               ; preds = %42, %10
  %44 = load i16*, i16** %7, align 8
  ret i16* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
