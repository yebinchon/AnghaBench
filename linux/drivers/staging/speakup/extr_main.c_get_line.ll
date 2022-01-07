; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_get_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_main.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@spk_pos = common dso_local global i64 0, align 8
@spk_x = common dso_local global i32 0, align 4
@spk_attr = common dso_local global i32 0, align 4
@spk_old_attr = common dso_local global i32 0, align 4
@buf = common dso_local global i64* null, align 8
@SPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*)* @get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_line(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %6 = load i64, i64* @spk_pos, align 8
  %7 = load i32, i32* @spk_x, align 4
  %8 = mul nsw i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 %6, %9
  store i64 %10, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @spk_attr, align 4
  store i32 %11, i32* @spk_old_attr, align 4
  %12 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %13 = load i64, i64* @spk_pos, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = call i32 @get_attributes(%struct.vc_data* %12, i32* %14)
  store i32 %15, i32* @spk_attr, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %33, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %24 = load i64, i64* %3, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = call i64 @get_char(%struct.vc_data* %23, i32* %25, i32* %5)
  %27 = load i64*, i64** @buf, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  store i64 %26, i64* %30, align 8
  %31 = load i64, i64* %3, align 8
  %32 = add nsw i64 %31, 2
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %52, %36
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i64*, i64** @buf, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SPACE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %55

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %4, align 4
  br label %39

55:                                               ; preds = %50, %39
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @get_attributes(%struct.vc_data*, i32*) #1

declare dso_local i64 @get_char(%struct.vc_data*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
