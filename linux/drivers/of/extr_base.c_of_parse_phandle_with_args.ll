; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_parse_phandle_with_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c_of_parse_phandle_with_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_parse_phandle_with_args(%struct.device_node* %0, i8* %1, i8* %2, i32 %3, %struct.of_phandle_args* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.of_phandle_args*, align 8
  %12 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.of_phandle_args* %4, %struct.of_phandle_args** %11, align 8
  store i32 -1, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %30

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load %struct.device_node*, %struct.device_node** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.of_phandle_args*, %struct.of_phandle_args** %11, align 8
  %29 = call i32 @__of_parse_phandle_with_args(%struct.device_node* %23, i8* %24, i8* %25, i32 %26, i32 %27, %struct.of_phandle_args* %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %22, %15
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @__of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, i32, %struct.of_phandle_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
