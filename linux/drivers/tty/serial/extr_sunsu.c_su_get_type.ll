; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_su_get_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsu.c_su_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"/aliases\00", align 1
@SU_PORT_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"keyboard\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@SU_PORT_KBD = common dso_local global i32 0, align 4
@SU_PORT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @su_get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @su_get_type(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %8 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %8, %struct.device_node** %3, align 8
  %9 = load i32, i32* @SU_PORT_PORT, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %12, label %45

12:                                               ; preds = %1
  %13 = load %struct.device_node*, %struct.device_node** %3, align 8
  %14 = call i8* @of_get_property(%struct.device_node* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %14, i8** %5, align 8
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = call i8* @of_get_property(%struct.device_node* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = call %struct.device_node* @of_find_node_by_path(i8* %20)
  store %struct.device_node* %21, %struct.device_node** %7, align 8
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = call i32 @of_node_put(%struct.device_node* %22)
  %24 = load %struct.device_node*, %struct.device_node** %2, align 8
  %25 = load %struct.device_node*, %struct.device_node** %7, align 8
  %26 = icmp eq %struct.device_node* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @SU_PORT_KBD, align 4
  store i32 %28, i32* %4, align 4
  br label %46

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %12
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = call %struct.device_node* @of_find_node_by_path(i8* %34)
  store %struct.device_node* %35, %struct.device_node** %7, align 8
  %36 = load %struct.device_node*, %struct.device_node** %7, align 8
  %37 = call i32 @of_node_put(%struct.device_node* %36)
  %38 = load %struct.device_node*, %struct.device_node** %2, align 8
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = icmp eq %struct.device_node* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @SU_PORT_MS, align 4
  store i32 %42, i32* %4, align 4
  br label %46

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %1
  br label %46

46:                                               ; preds = %45, %41, %27
  %47 = load %struct.device_node*, %struct.device_node** %3, align 8
  %48 = call i32 @of_node_put(%struct.device_node* %47)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
