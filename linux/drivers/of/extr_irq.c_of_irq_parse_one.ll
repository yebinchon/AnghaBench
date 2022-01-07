; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_irq.c_of_irq_parse_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_irq.c_of_irq_parse_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32, i32*, %struct.device_node* }

@.str = private unnamed_addr constant [38 x i8] c"of_irq_parse_one: dev=%pOF, index=%d\0A\00", align 1
@of_irq_workarounds = common dso_local global i32 0, align 4
@OF_IMAP_OLDWORLD_MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"interrupts-extended\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c" parent=%pOF, intsize=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" intspec=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_irq_parse_one(%struct.device_node* %0, i32 %1, %struct.of_phandle_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_phandle_args*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.of_phandle_args* %2, %struct.of_phandle_args** %7, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = ptrtoint %struct.device_node* %13 to i32
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* @of_irq_workarounds, align 4
  %18 = load i32, i32* @OF_IMAP_OLDWORLD_MAC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.of_phandle_args*, %struct.of_phandle_args** %7, align 8
  %25 = call i32 @of_irq_parse_oldworld(%struct.device_node* %22, i32 %23, %struct.of_phandle_args* %24)
  store i32 %25, i32* %4, align 4
  br label %103

26:                                               ; preds = %3
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = call i32* @of_get_property(%struct.device_node* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %28, i32** %9, align 8
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.of_phandle_args*, %struct.of_phandle_args** %7, align 8
  %32 = call i32 @of_parse_phandle_with_args(%struct.device_node* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %30, %struct.of_phandle_args* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.of_phandle_args*, %struct.of_phandle_args** %7, align 8
  %38 = call i32 @of_irq_parse_raw(i32* %36, %struct.of_phandle_args* %37)
  store i32 %38, i32* %4, align 4
  br label %103

39:                                               ; preds = %26
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %40)
  store %struct.device_node* %41, %struct.device_node** %8, align 8
  %42 = load %struct.device_node*, %struct.device_node** %8, align 8
  %43 = icmp eq %struct.device_node* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %103

47:                                               ; preds = %39
  %48 = load %struct.device_node*, %struct.device_node** %8, align 8
  %49 = call i64 @of_property_read_u32(%struct.device_node* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %10)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  br label %99

54:                                               ; preds = %47
  %55 = load %struct.device_node*, %struct.device_node** %8, align 8
  %56 = ptrtoint %struct.device_node* %55 to i32
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.device_node*, %struct.device_node** %8, align 8
  %60 = load %struct.of_phandle_args*, %struct.of_phandle_args** %7, align 8
  %61 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %60, i32 0, i32 2
  store %struct.device_node* %59, %struct.device_node** %61, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.of_phandle_args*, %struct.of_phandle_args** %7, align 8
  %64 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %87, %54
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load %struct.device_node*, %struct.device_node** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %73, %74
  %76 = load %struct.of_phandle_args*, %struct.of_phandle_args** %7, align 8
  %77 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @of_property_read_u32_index(%struct.device_node* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %99

86:                                               ; preds = %69
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %65

90:                                               ; preds = %65
  %91 = load %struct.of_phandle_args*, %struct.of_phandle_args** %7, align 8
  %92 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  %96 = load i32*, i32** %9, align 8
  %97 = load %struct.of_phandle_args*, %struct.of_phandle_args** %7, align 8
  %98 = call i32 @of_irq_parse_raw(i32* %96, %struct.of_phandle_args* %97)
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %90, %85, %51
  %100 = load %struct.device_node*, %struct.device_node** %8, align 8
  %101 = call i32 @of_node_put(%struct.device_node* %100)
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %44, %35, %21
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @of_irq_parse_oldworld(%struct.device_node*, i32, %struct.of_phandle_args*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @of_irq_parse_raw(i32*, %struct.of_phandle_args*) #1

declare dso_local %struct.device_node* @of_irq_find_parent(%struct.device_node*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
