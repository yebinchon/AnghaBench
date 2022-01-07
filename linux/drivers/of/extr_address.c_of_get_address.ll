; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_get_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_get_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_bus = type { i32 (i32*)*, i32, i32 (%struct.device_node.0*, i32*, i32*)* }
%struct.device_node.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @of_get_address(%struct.device_node* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca %struct.of_bus*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = call %struct.device_node* @of_get_parent(%struct.device_node* %18)
  store %struct.device_node* %19, %struct.device_node** %12, align 8
  %20 = load %struct.device_node*, %struct.device_node** %12, align 8
  %21 = icmp eq %struct.device_node* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %96

23:                                               ; preds = %4
  %24 = load %struct.device_node*, %struct.device_node** %12, align 8
  %25 = call %struct.of_bus* @of_match_bus(%struct.device_node* %24)
  store %struct.of_bus* %25, %struct.of_bus** %13, align 8
  %26 = load %struct.of_bus*, %struct.of_bus** %13, align 8
  %27 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %26, i32 0, i32 2
  %28 = load i32 (%struct.device_node.0*, i32*, i32*)*, i32 (%struct.device_node.0*, i32*, i32*)** %27, align 8
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = bitcast %struct.device_node* %29 to %struct.device_node.0*
  %31 = call i32 %28(%struct.device_node.0* %30, i32* %16, i32* %17)
  %32 = load %struct.device_node*, %struct.device_node** %12, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @OF_CHECK_ADDR_COUNT(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %23
  store i32* null, i32** %5, align 8
  br label %96

38:                                               ; preds = %23
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = load %struct.of_bus*, %struct.of_bus** %13, align 8
  %41 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @of_get_property(%struct.device_node* %39, i32 %42, i32* %11)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32* null, i32** %5, align 8
  br label %96

47:                                               ; preds = %38
  %48 = load i32, i32* %11, align 4
  %49 = udiv i32 %48, 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %85, %47
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp uge i32 %54, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %53
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @of_read_number(i32* %68, i32 %69)
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %61
  %73 = load i32*, i32** %9, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.of_bus*, %struct.of_bus** %13, align 8
  %77 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %76, i32 0, i32 0
  %78 = load i32 (i32*)*, i32 (i32*)** %77, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 %78(i32* %79)
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %72
  %83 = load i32*, i32** %10, align 8
  store i32* %83, i32** %5, align 8
  br label %96

84:                                               ; preds = %57
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %10, align 8
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %53

95:                                               ; preds = %53
  store i32* null, i32** %5, align 8
  br label %96

96:                                               ; preds = %95, %82, %46, %37, %22
  %97 = load i32*, i32** %5, align 8
  ret i32* %97
}

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local %struct.of_bus* @of_match_bus(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @OF_CHECK_ADDR_COUNT(i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i32, i32*) #1

declare dso_local i32 @of_read_number(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
