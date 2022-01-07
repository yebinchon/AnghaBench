; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c___of_attach_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_dynamic.c___of_attach_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i8*, %struct.TYPE_2__*, %struct.device_node*, i32*, i32 }
%struct.TYPE_2__ = type { %struct.device_node* }

@OF_OVERLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@CONFIG_PPC_PSERIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ibm,phandle\00", align 1
@OF_DETACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @__of_attach_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__of_attach_node(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %5 = load %struct.device_node*, %struct.device_node** %2, align 8
  %6 = load i32, i32* @OF_OVERLAY, align 4
  %7 = call i32 @of_node_check_flag(%struct.device_node* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %57, label %9

9:                                                ; preds = %1
  %10 = load %struct.device_node*, %struct.device_node** %2, align 8
  %11 = call i8* @__of_get_property(%struct.device_node* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  %12 = load %struct.device_node*, %struct.device_node** %2, align 8
  %13 = getelementptr inbounds %struct.device_node, %struct.device_node* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.device_node*, %struct.device_node** %2, align 8
  %15 = getelementptr inbounds %struct.device_node, %struct.device_node* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = load %struct.device_node*, %struct.device_node** %2, align 8
  %20 = getelementptr inbounds %struct.device_node, %struct.device_node* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  br label %21

21:                                               ; preds = %18, %9
  %22 = load %struct.device_node*, %struct.device_node** %2, align 8
  %23 = call i8* @__of_get_property(%struct.device_node* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.device_node*, %struct.device_node** %2, align 8
  %29 = call i8* @__of_get_property(%struct.device_node* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %4)
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %3, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* @CONFIG_PPC_PSERIES, align 4
  %33 = call i64 @IS_ENABLED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load %struct.device_node*, %struct.device_node** %2, align 8
  %40 = call i8* @__of_get_property(%struct.device_node* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %4)
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %3, align 8
  br label %42

42:                                               ; preds = %38, %35, %31
  %43 = load i32*, i32** %3, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp sge i32 %46, 4
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @be32_to_cpup(i32* %49)
  %51 = load %struct.device_node*, %struct.device_node** %2, align 8
  %52 = getelementptr inbounds %struct.device_node, %struct.device_node* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  br label %56

53:                                               ; preds = %45, %42
  %54 = load %struct.device_node*, %struct.device_node** %2, align 8
  %55 = getelementptr inbounds %struct.device_node, %struct.device_node* %54, i32 0, i32 4
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.device_node*, %struct.device_node** %2, align 8
  %59 = getelementptr inbounds %struct.device_node, %struct.device_node* %58, i32 0, i32 3
  store i32* null, i32** %59, align 8
  %60 = load %struct.device_node*, %struct.device_node** %2, align 8
  %61 = getelementptr inbounds %struct.device_node, %struct.device_node* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.device_node*, %struct.device_node** %63, align 8
  %65 = load %struct.device_node*, %struct.device_node** %2, align 8
  %66 = getelementptr inbounds %struct.device_node, %struct.device_node* %65, i32 0, i32 2
  store %struct.device_node* %64, %struct.device_node** %66, align 8
  %67 = load %struct.device_node*, %struct.device_node** %2, align 8
  %68 = load %struct.device_node*, %struct.device_node** %2, align 8
  %69 = getelementptr inbounds %struct.device_node, %struct.device_node* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store %struct.device_node* %67, %struct.device_node** %71, align 8
  %72 = load %struct.device_node*, %struct.device_node** %2, align 8
  %73 = load i32, i32* @OF_DETACHED, align 4
  %74 = call i32 @of_node_clear_flag(%struct.device_node* %72, i32 %73)
  ret void
}

declare dso_local i32 @of_node_check_flag(%struct.device_node*, i32) #1

declare dso_local i8* @__of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @of_node_clear_flag(%struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
