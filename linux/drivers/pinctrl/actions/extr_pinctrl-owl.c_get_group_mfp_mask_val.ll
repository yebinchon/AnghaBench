; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_get_group_mfp_mask_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_get_group_mfp_mask_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_pingroup = type { i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.owl_pingroup*, i32, i32*, i32*)* @get_group_mfp_mask_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_group_mfp_mask_val(%struct.owl_pingroup* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.owl_pingroup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.owl_pingroup* %0, %struct.owl_pingroup** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %31, %4
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.owl_pingroup*, %struct.owl_pingroup** %6, align 8
  %16 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.owl_pingroup*, %struct.owl_pingroup** %6, align 8
  %21 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %13

34:                                               ; preds = %29, %13
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.owl_pingroup*, %struct.owl_pingroup** %6, align 8
  %37 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %73

46:                                               ; preds = %34
  %47 = load %struct.owl_pingroup*, %struct.owl_pingroup** %6, align 8
  %48 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 1, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %54, %46
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.owl_pingroup*, %struct.owl_pingroup** %6, align 8
  %63 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %61, %64
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.owl_pingroup*, %struct.owl_pingroup** %6, align 8
  %69 = getelementptr inbounds %struct.owl_pingroup, %struct.owl_pingroup* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %67, %70
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %58, %43
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
