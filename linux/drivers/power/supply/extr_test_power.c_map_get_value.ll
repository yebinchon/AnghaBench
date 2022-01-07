; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_test_power.c_map_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_test_power.c_map_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.battery_property_map = type { i32, i64 }

@MAX_KEYLENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.battery_property_map*, i8*, i32)* @map_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_get_value(%struct.battery_property_map* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.battery_property_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.battery_property_map* %0, %struct.battery_property_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @MAX_KEYLENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @MAX_KEYLENGTH, align 4
  %18 = call i32 @strncpy(i8* %15, i8* %16, i32 %17)
  %19 = load i32, i32* @MAX_KEYLENGTH, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %15, i64 %21
  store i8 0, i8* %22, align 1
  %23 = load i32, i32* @MAX_KEYLENGTH, align 4
  %24 = call i32 @strnlen(i8* %15, i32 %23)
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %63

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %15, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %15, i64 %39
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %37, %30
  br label %42

42:                                               ; preds = %58, %41
  %43 = load %struct.battery_property_map*, %struct.battery_property_map** %5, align 8
  %44 = getelementptr inbounds %struct.battery_property_map, %struct.battery_property_map* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.battery_property_map*, %struct.battery_property_map** %5, align 8
  %49 = getelementptr inbounds %struct.battery_property_map, %struct.battery_property_map* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @MAX_KEYLENGTH, align 4
  %52 = call i64 @strncasecmp(i64 %50, i8* %15, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.battery_property_map*, %struct.battery_property_map** %5, align 8
  %56 = getelementptr inbounds %struct.battery_property_map, %struct.battery_property_map* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %63

58:                                               ; preds = %47
  %59 = load %struct.battery_property_map*, %struct.battery_property_map** %5, align 8
  %60 = getelementptr inbounds %struct.battery_property_map, %struct.battery_property_map* %59, i32 1
  store %struct.battery_property_map* %60, %struct.battery_property_map** %5, align 8
  br label %42

61:                                               ; preds = %42
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %61, %54, %28
  %64 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @strnlen(i8*, i32) #2

declare dso_local i64 @strncasecmp(i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
