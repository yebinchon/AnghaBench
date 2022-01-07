; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_phandle_iterator_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_phandle_iterator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_phandle_iterator = type { i8*, i32, i32*, i32*, i32*, %struct.device_node* }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_phandle_iterator_init(%struct.of_phandle_iterator* %0, %struct.device_node* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_phandle_iterator*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.of_phandle_iterator* %0, %struct.of_phandle_iterator** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.of_phandle_iterator*, %struct.of_phandle_iterator** %7, align 8
  %15 = call i32 @memset(%struct.of_phandle_iterator* %14, i32 0, i32 48)
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %56

24:                                               ; preds = %18, %5
  %25 = load %struct.device_node*, %struct.device_node** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32* @of_get_property(%struct.device_node* %25, i8* %26, i32* %13)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %56

33:                                               ; preds = %24
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.of_phandle_iterator*, %struct.of_phandle_iterator** %7, align 8
  %36 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.of_phandle_iterator*, %struct.of_phandle_iterator** %7, align 8
  %39 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.device_node*, %struct.device_node** %8, align 8
  %41 = load %struct.of_phandle_iterator*, %struct.of_phandle_iterator** %7, align 8
  %42 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %41, i32 0, i32 5
  store %struct.device_node* %40, %struct.device_node** %42, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 4
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load %struct.of_phandle_iterator*, %struct.of_phandle_iterator** %7, align 8
  %49 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %48, i32 0, i32 4
  store i32* %47, i32** %49, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load %struct.of_phandle_iterator*, %struct.of_phandle_iterator** %7, align 8
  %52 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %51, i32 0, i32 3
  store i32* %50, i32** %52, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load %struct.of_phandle_iterator*, %struct.of_phandle_iterator** %7, align 8
  %55 = getelementptr inbounds %struct.of_phandle_iterator, %struct.of_phandle_iterator* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %33, %30, %21
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.of_phandle_iterator*, i32, i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
