; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_find_node_by_full_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_base.c___of_find_node_by_full_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device_node* @__of_find_node_by_full_path(%struct.device_node* %0, i8* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 58)
  store i8* %8, i8** %5, align 8
  br label %9

9:                                                ; preds = %37, %2
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 47
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %16, %12 ]
  br i1 %18, label %19, label %38

19:                                               ; preds = %17
  %20 = load %struct.device_node*, %struct.device_node** %3, align 8
  store %struct.device_node* %20, %struct.device_node** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load %struct.device_node*, %struct.device_node** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call %struct.device_node* @__of_find_node_by_path(%struct.device_node* %23, i8* %24)
  store %struct.device_node* %25, %struct.device_node** %3, align 8
  %26 = load %struct.device_node*, %struct.device_node** %6, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  %28 = load i8*, i8** %4, align 8
  %29 = call i8* @strchrnul(i8* %28, i8 signext 47)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %38

37:                                               ; preds = %32, %19
  br label %9

38:                                               ; preds = %36, %17
  %39 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %39
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.device_node* @__of_find_node_by_path(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
