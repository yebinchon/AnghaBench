; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_rbsp_write_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_rbsp_write_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbsp = type { i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbsp*, i32)* @rbsp_write_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbsp_write_bit(%struct.rbsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rbsp* %0, %struct.rbsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %9 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 22
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %14 = call i32 @add_emulation_prevention_three_byte(%struct.rbsp* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %17 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = srem i32 %18, 8
  %20 = sub nsw i32 7, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %22 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %27 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %15
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %82

33:                                               ; preds = %15
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 1, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %38 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %36
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %45, %46
  %48 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %49 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %47
  store i32 %55, i32* %53, align 4
  %56 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %57 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %73, label %62

62:                                               ; preds = %33
  %63 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %64 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 7
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %69 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = srem i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67, %33
  %74 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %75 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %81

76:                                               ; preds = %67, %62
  %77 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %78 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %76, %73
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @add_emulation_prevention_three_byte(%struct.rbsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
