; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_of_display_timing.c_parse_timing_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_of_display_timing.c_parse_timing_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.timing_entry = type { i32, i32, i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"%pOF: could not find property %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%pOF: illegal timing specification in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i8*, %struct.timing_entry*)* @parse_timing_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_timing_property(%struct.device_node* %0, i8* %1, %struct.timing_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timing_entry*, align 8
  %8 = alloca %struct.property*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.timing_entry* %2, %struct.timing_entry** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.property* @of_find_property(%struct.device_node* %12, i8* %13, i32* %9)
  store %struct.property* %14, %struct.property** %8, align 8
  %15 = load %struct.property*, %struct.property** %8, align 8
  %16 = icmp ne %struct.property* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.device_node* %18, i8* %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %65

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %46

30:                                               ; preds = %23
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.timing_entry*, %struct.timing_entry** %7, align 8
  %34 = getelementptr inbounds %struct.timing_entry, %struct.timing_entry* %33, i32 0, i32 1
  %35 = call i32 @of_property_read_u32(%struct.device_node* %31, i8* %32, i32* %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.timing_entry*, %struct.timing_entry** %7, align 8
  %37 = getelementptr inbounds %struct.timing_entry, %struct.timing_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.timing_entry*, %struct.timing_entry** %7, align 8
  %40 = getelementptr inbounds %struct.timing_entry, %struct.timing_entry* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.timing_entry*, %struct.timing_entry** %7, align 8
  %42 = getelementptr inbounds %struct.timing_entry, %struct.timing_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.timing_entry*, %struct.timing_entry** %7, align 8
  %45 = getelementptr inbounds %struct.timing_entry, %struct.timing_entry* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %63

46:                                               ; preds = %23
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.device_node*, %struct.device_node** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.timing_entry*, %struct.timing_entry** %7, align 8
  %53 = getelementptr inbounds %struct.timing_entry, %struct.timing_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @of_property_read_u32_array(%struct.device_node* %50, i8* %51, i32* %53, i32 %54)
  store i32 %55, i32* %11, align 4
  br label %62

56:                                               ; preds = %46
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %57, i8* %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %65

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %30
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %56, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
