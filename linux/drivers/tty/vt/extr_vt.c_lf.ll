; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_lf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_lf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i64, i32, i64, i64, i32, i32 }

@SM_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @lf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lf(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %4 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, 1
  %7 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %13 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @SM_UP, align 4
  %20 = call i32 @con_scroll(%struct.vc_data* %12, i32 %15, i64 %18, i32 %19, i32 1)
  br label %46

21:                                               ; preds = %1
  %22 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %24, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %21
  %32 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 8
  br label %45

45:                                               ; preds = %31, %21
  br label %46

46:                                               ; preds = %45, %11
  %47 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %50 = call i32 @notify_write(%struct.vc_data* %49, i8 signext 10)
  ret void
}

declare dso_local i32 @con_scroll(%struct.vc_data*, i32, i64, i32, i32) #1

declare dso_local i32 @notify_write(%struct.vc_data*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
