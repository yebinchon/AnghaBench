; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_device_compatible_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_device_compatible_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_device_compatible_match(%struct.device_node* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %26, %11
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @of_device_is_compatible(%struct.device_node* %17, i8* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %28, i8*** %5, align 8
  br label %12

29:                                               ; preds = %12
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %10
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
