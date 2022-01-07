; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpaphp_core.c_rpaphp_check_drc_props_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpaphp_core.c_rpaphp_check_drc_props_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i8*, i8*, i32)* @rpaphp_check_drc_props_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpaphp_check_drc_props_v1(%struct.device_node* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = getelementptr inbounds %struct.device_node, %struct.device_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @get_children_props(i32 %20, i32** %12, i32** %13, i32** %14, i32** %15)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %91

27:                                               ; preds = %4
  %28 = load i32*, i32** %13, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %10, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %11, align 8
  store i32 0, i32* %16, align 4
  br label %34

34:                                               ; preds = %62, %27
  %35 = load i32, i32* %16, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be32_to_cpu(i32 %38)
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %65

51:                                               ; preds = %41
  %52 = load i8*, i8** %10, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = add nsw i64 %53, 1
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 %54
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = add nsw i64 %58, 1
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %11, align 8
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %16, align 4
  br label %34

65:                                               ; preds = %50, %34
  %66 = load i8*, i8** %7, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @strcmp(i8* %72, i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %71, %65
  %77 = load i8*, i8** %8, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %8, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @strcmp(i8* %83, i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82, %76
  store i32 0, i32* %5, align 4
  br label %91

88:                                               ; preds = %82, %79, %71, %68
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %87, %24
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @get_children_props(i32, i32**, i32**, i32**, i32**) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
