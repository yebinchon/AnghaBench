; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_rbsp_read_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_rbsp_read_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbsp = type { i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbsp*)* @rbsp_read_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbsp_read_bit(%struct.rbsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rbsp* %0, %struct.rbsp** %3, align 8
  %8 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %9 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 22
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %14 = call i32 @discard_emulation_prevention_three_byte(%struct.rbsp* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %2, align 4
  br label %76

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %22 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = srem i32 %23, 8
  %25 = sub nsw i32 7, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %27 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 8
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %32 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %76

38:                                               ; preds = %20
  %39 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %40 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %45, %46
  %48 = and i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %50 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %66, label %55

55:                                               ; preds = %38
  %56 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %57 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 7
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %62 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = srem i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60, %38
  %67 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %68 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %74

69:                                               ; preds = %60, %55
  %70 = load %struct.rbsp*, %struct.rbsp** %3, align 8
  %71 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %35, %17
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @discard_emulation_prevention_three_byte(%struct.rbsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
