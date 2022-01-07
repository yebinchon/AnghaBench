; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_track_bit_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_track_bit_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_bit_usage_tracker = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_bit_usage_tracker*, i32, i32)* @vbg_track_bit_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_track_bit_usage(%struct.vbg_bit_usage_tracker* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vbg_bit_usage_tracker*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vbg_bit_usage_tracker* %0, %struct.vbg_bit_usage_tracker** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %72, %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %77

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ffs(i32 %14)
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @BIT(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %13
  %24 = load %struct.vbg_bit_usage_tracker*, %struct.vbg_bit_usage_tracker** %4, align 8
  %25 = getelementptr inbounds %struct.vbg_bit_usage_tracker, %struct.vbg_bit_usage_tracker* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.vbg_bit_usage_tracker*, %struct.vbg_bit_usage_tracker** %4, align 8
  %33 = getelementptr inbounds %struct.vbg_bit_usage_tracker, %struct.vbg_bit_usage_tracker* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.vbg_bit_usage_tracker*, %struct.vbg_bit_usage_tracker** %4, align 8
  %44 = getelementptr inbounds %struct.vbg_bit_usage_tracker, %struct.vbg_bit_usage_tracker* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %23
  br label %72

48:                                               ; preds = %13
  %49 = load %struct.vbg_bit_usage_tracker*, %struct.vbg_bit_usage_tracker** %4, align 8
  %50 = getelementptr inbounds %struct.vbg_bit_usage_tracker, %struct.vbg_bit_usage_tracker* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.vbg_bit_usage_tracker*, %struct.vbg_bit_usage_tracker** %4, align 8
  %58 = getelementptr inbounds %struct.vbg_bit_usage_tracker, %struct.vbg_bit_usage_tracker* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %71

65:                                               ; preds = %48
  store i32 1, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.vbg_bit_usage_tracker*, %struct.vbg_bit_usage_tracker** %4, align 8
  %68 = getelementptr inbounds %struct.vbg_bit_usage_tracker, %struct.vbg_bit_usage_tracker* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %48
  br label %72

72:                                               ; preds = %71, %47
  %73 = load i32, i32* %9, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %10

77:                                               ; preds = %10
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
