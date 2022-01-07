; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_search_one_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_search_one_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i64, i64 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@BRIDGE_IO_MAX = common dso_local global i64 0, align 8
@PCIBIOS_MIN_CARDBUS_IO = common dso_local global i64 0, align 8
@BRIDGE_MEM_MAX = common dso_local global i64 0, align 8
@PCIBIOS_MIN_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*, %struct.resource*, i64)* @yenta_search_one_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yenta_search_one_res(%struct.resource* %0, %struct.resource* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.resource* %0, %struct.resource** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.resource*, %struct.resource** %6, align 8
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IORESOURCE_IO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  store i64 1024, i64* %8, align 8
  %21 = load i64, i64* @BRIDGE_IO_MAX, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* @PCIBIOS_MIN_CARDBUS_IO, align 8
  store i64 %22, i64* %10, align 8
  store i64 4294967295, i64* %11, align 8
  br label %60

23:                                               ; preds = %3
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* @BRIDGE_MEM_MAX, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %12, align 8
  %34 = udiv i64 %33, 8
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %23
  %37 = load i64, i64* %12, align 8
  %38 = add i64 %37, 1
  %39 = udiv i64 %38, 8
  store i64 %39, i64* %9, align 8
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %44, %36
  %41 = load i64, i64* %9, align 8
  %42 = udiv i64 %41, 2
  store i64 %42, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %40

47:                                               ; preds = %40
  %48 = load i32, i32* %13, align 4
  %49 = shl i32 1, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %47, %23
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i64, i64* %9, align 8
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* @PCIBIOS_MIN_MEM, align 8
  store i64 %59, i64* %10, align 8
  store i64 4294967295, i64* %11, align 8
  br label %60

60:                                               ; preds = %57, %20
  br label %61

61:                                               ; preds = %75, %60
  %62 = load %struct.resource*, %struct.resource** %5, align 8
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i64 @allocate_resource(%struct.resource* %62, %struct.resource* %63, i64 %64, i64 %65, i64 %66, i64 %67, i32* null, i32* null)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %80

71:                                               ; preds = %61
  %72 = load i64, i64* %9, align 8
  %73 = udiv i64 %72, 2
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %61, label %79

79:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %70
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @allocate_resource(%struct.resource*, %struct.resource*, i64, i64, i64, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
