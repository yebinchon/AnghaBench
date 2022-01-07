; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_match_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_match_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_endpoint_descriptor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor**)* @match_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_endpoint(%struct.usb_endpoint_descriptor* %0, %struct.usb_endpoint_descriptor** %1, %struct.usb_endpoint_descriptor** %2, %struct.usb_endpoint_descriptor** %3, %struct.usb_endpoint_descriptor** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor**, align 8
  %9 = alloca %struct.usb_endpoint_descriptor**, align 8
  %10 = alloca %struct.usb_endpoint_descriptor**, align 8
  %11 = alloca %struct.usb_endpoint_descriptor**, align 8
  store %struct.usb_endpoint_descriptor* %0, %struct.usb_endpoint_descriptor** %7, align 8
  store %struct.usb_endpoint_descriptor** %1, %struct.usb_endpoint_descriptor*** %8, align 8
  store %struct.usb_endpoint_descriptor** %2, %struct.usb_endpoint_descriptor*** %9, align 8
  store %struct.usb_endpoint_descriptor** %3, %struct.usb_endpoint_descriptor*** %10, align 8
  store %struct.usb_endpoint_descriptor** %4, %struct.usb_endpoint_descriptor*** %11, align 8
  %12 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %13 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %12)
  switch i32 %13, label %68 [
    i32 129, label %14
    i32 128, label %41
  ]

14:                                               ; preds = %5
  %15 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %16 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %8, align 8
  %20 = icmp ne %struct.usb_endpoint_descriptor** %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %8, align 8
  %23 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %22, align 8
  %24 = icmp ne %struct.usb_endpoint_descriptor* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %27 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %8, align 8
  store %struct.usb_endpoint_descriptor* %26, %struct.usb_endpoint_descriptor** %27, align 8
  br label %69

28:                                               ; preds = %21, %18
  br label %40

29:                                               ; preds = %14
  %30 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %9, align 8
  %31 = icmp ne %struct.usb_endpoint_descriptor** %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %9, align 8
  %34 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %33, align 8
  %35 = icmp ne %struct.usb_endpoint_descriptor* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %38 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %9, align 8
  store %struct.usb_endpoint_descriptor* %37, %struct.usb_endpoint_descriptor** %38, align 8
  br label %69

39:                                               ; preds = %32, %29
  br label %40

40:                                               ; preds = %39, %28
  store i32 0, i32* %6, align 4
  br label %102

41:                                               ; preds = %5
  %42 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %43 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %10, align 8
  %47 = icmp ne %struct.usb_endpoint_descriptor** %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %10, align 8
  %50 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %49, align 8
  %51 = icmp ne %struct.usb_endpoint_descriptor* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %54 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %10, align 8
  store %struct.usb_endpoint_descriptor* %53, %struct.usb_endpoint_descriptor** %54, align 8
  br label %69

55:                                               ; preds = %48, %45
  br label %67

56:                                               ; preds = %41
  %57 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %11, align 8
  %58 = icmp ne %struct.usb_endpoint_descriptor** %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %11, align 8
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %60, align 8
  %62 = icmp ne %struct.usb_endpoint_descriptor* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %65 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %11, align 8
  store %struct.usb_endpoint_descriptor* %64, %struct.usb_endpoint_descriptor** %65, align 8
  br label %69

66:                                               ; preds = %59, %56
  br label %67

67:                                               ; preds = %66, %55
  store i32 0, i32* %6, align 4
  br label %102

68:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %102

69:                                               ; preds = %63, %52, %36, %25
  %70 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %8, align 8
  %71 = icmp ne %struct.usb_endpoint_descriptor** %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %8, align 8
  %74 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %73, align 8
  %75 = icmp ne %struct.usb_endpoint_descriptor* %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %72, %69
  %77 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %9, align 8
  %78 = icmp ne %struct.usb_endpoint_descriptor** %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %9, align 8
  %81 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %80, align 8
  %82 = icmp ne %struct.usb_endpoint_descriptor* %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %79, %76
  %84 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %10, align 8
  %85 = icmp ne %struct.usb_endpoint_descriptor** %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %10, align 8
  %88 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %87, align 8
  %89 = icmp ne %struct.usb_endpoint_descriptor* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %86, %83
  %91 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %11, align 8
  %92 = icmp ne %struct.usb_endpoint_descriptor** %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.usb_endpoint_descriptor**, %struct.usb_endpoint_descriptor*** %11, align 8
  %95 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %94, align 8
  %96 = icmp ne %struct.usb_endpoint_descriptor* %95, null
  br label %97

97:                                               ; preds = %93, %90
  %98 = phi i1 [ true, %90 ], [ %96, %93 ]
  br label %99

99:                                               ; preds = %97, %86, %79, %72
  %100 = phi i1 [ false, %86 ], [ false, %79 ], [ false, %72 ], [ %98, %97 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %68, %67, %40
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
