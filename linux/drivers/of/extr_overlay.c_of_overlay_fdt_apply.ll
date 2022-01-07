; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_overlay.c_of_overlay_fdt_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_overlay.c_of_overlay_fdt_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Invalid overlay_fdt header\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to unflatten overlay_fdt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_overlay_fdt_apply(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device_node*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @fdt_check_header(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %3
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %66

24:                                               ; preds = %16
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @fdt_totalsize(i8* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %66

33:                                               ; preds = %24
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kmemdup(i8* %34, i32 %35, i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %66

43:                                               ; preds = %33
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @of_fdt_unflatten_tree(i8* %44, i32* null, %struct.device_node** %11)
  %46 = load %struct.device_node*, %struct.device_node** %11, align 8
  %47 = icmp ne %struct.device_node* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %61

52:                                               ; preds = %43
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.device_node*, %struct.device_node** %11, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @of_overlay_apply(i8* %53, %struct.device_node* %54, i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %64

60:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %66

61:                                               ; preds = %48
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @kfree(i8* %62)
  br label %64

64:                                               ; preds = %61, %59
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %60, %40, %30, %20
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @fdt_check_header(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @of_fdt_unflatten_tree(i8*, i32*, %struct.device_node**) #1

declare dso_local i32 @of_overlay_apply(i8*, %struct.device_node*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
