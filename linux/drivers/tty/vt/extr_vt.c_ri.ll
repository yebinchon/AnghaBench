; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_ri.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_ri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i64, i64, i64, i32, i32 }

@SM_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @ri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ri(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %4 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %12 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SM_DOWN, align 4
  %19 = call i32 @con_scroll(%struct.vc_data* %11, i64 %14, i32 %17, i32 %18, i32 1)
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  br label %39

39:                                               ; preds = %25, %20
  br label %40

40:                                               ; preds = %39, %10
  %41 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  ret void
}

declare dso_local i32 @con_scroll(%struct.vc_data*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
