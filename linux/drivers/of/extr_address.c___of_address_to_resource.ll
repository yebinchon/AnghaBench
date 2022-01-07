; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_address.c___of_address_to_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_address.c___of_address_to_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i8* }
%struct.resource = type { i32, i8*, i64, i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OF_BAD_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i32*, i64, i32, i8*, %struct.resource*)* @__of_address_to_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__of_address_to_resource(%struct.device_node* %0, i32* %1, i64 %2, i32 %3, i8* %4, %struct.resource* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.resource*, align 8
  %14 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store %struct.resource* %5, %struct.resource** %13, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load %struct.device_node*, %struct.device_node** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i64 @of_translate_address(%struct.device_node* %20, i32* %21)
  store i64 %22, i64* %14, align 8
  br label %37

23:                                               ; preds = %6
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @IORESOURCE_IO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.device_node*, %struct.device_node** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @of_translate_ioport(%struct.device_node* %29, i32* %30, i64 %31)
  store i64 %32, i64* %14, align 8
  br label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %71

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @OF_BAD_ADDR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %71

44:                                               ; preds = %37
  %45 = load %struct.resource*, %struct.resource** %13, align 8
  %46 = call i32 @memset(%struct.resource* %45, i32 0, i32 32)
  %47 = load i64, i64* %14, align 8
  %48 = load %struct.resource*, %struct.resource** %13, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %50, %51
  %53 = sub nsw i64 %52, 1
  %54 = load %struct.resource*, %struct.resource** %13, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.resource*, %struct.resource** %13, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %44
  %62 = load i8*, i8** %12, align 8
  br label %67

63:                                               ; preds = %44
  %64 = load %struct.device_node*, %struct.device_node** %8, align 8
  %65 = getelementptr inbounds %struct.device_node, %struct.device_node* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi i8* [ %62, %61 ], [ %66, %63 ]
  %69 = load %struct.resource*, %struct.resource** %13, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %41, %33
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i64 @of_translate_address(%struct.device_node*, i32*) #1

declare dso_local i64 @of_translate_ioport(%struct.device_node*, i32*, i64) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
