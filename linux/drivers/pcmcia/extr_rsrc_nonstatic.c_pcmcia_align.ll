; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_pcmcia_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_pcmcia_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64 }
%struct.pcmcia_align_data = type { %struct.resource_map* }
%struct.resource_map = type { i64, i32, %struct.resource_map* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.resource*, i64, i64)* @pcmcia_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pcmcia_align(i8* %0, %struct.resource* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pcmcia_align_data*, align 8
  %10 = alloca %struct.resource_map*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.pcmcia_align_data*
  store %struct.pcmcia_align_data* %15, %struct.pcmcia_align_data** %9, align 8
  %16 = load %struct.pcmcia_align_data*, %struct.pcmcia_align_data** %9, align 8
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @pcmcia_common_align(%struct.pcmcia_align_data* %16, i64 %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.pcmcia_align_data*, %struct.pcmcia_align_data** %9, align 8
  %22 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %21, i32 0, i32 0
  %23 = load %struct.resource_map*, %struct.resource_map** %22, align 8
  %24 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %23, i32 0, i32 2
  %25 = load %struct.resource_map*, %struct.resource_map** %24, align 8
  store %struct.resource_map* %25, %struct.resource_map** %10, align 8
  br label %26

26:                                               ; preds = %68, %4
  %27 = load %struct.resource_map*, %struct.resource_map** %10, align 8
  %28 = load %struct.pcmcia_align_data*, %struct.pcmcia_align_data** %9, align 8
  %29 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %28, i32 0, i32 0
  %30 = load %struct.resource_map*, %struct.resource_map** %29, align 8
  %31 = icmp ne %struct.resource_map* %27, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %26
  %33 = load %struct.resource_map*, %struct.resource_map** %10, align 8
  %34 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  %36 = load %struct.resource_map*, %struct.resource_map** %10, align 8
  %37 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.resource_map*, %struct.resource_map** %10, align 8
  %40 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = add i64 %38, %42
  %44 = sub i64 %43, 1
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load %struct.pcmcia_align_data*, %struct.pcmcia_align_data** %9, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @pcmcia_common_align(%struct.pcmcia_align_data* %49, i64 %50)
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %48, %32
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.resource*, %struct.resource** %6, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp uge i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %72

59:                                               ; preds = %52
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %60, %61
  %63 = sub i64 %62, 1
  %64 = load i64, i64* %13, align 8
  %65 = icmp ule i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %72

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.resource_map*, %struct.resource_map** %10, align 8
  %70 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %69, i32 0, i32 2
  %71 = load %struct.resource_map*, %struct.resource_map** %70, align 8
  store %struct.resource_map* %71, %struct.resource_map** %10, align 8
  br label %26

72:                                               ; preds = %66, %58, %26
  %73 = load %struct.resource_map*, %struct.resource_map** %10, align 8
  %74 = load %struct.pcmcia_align_data*, %struct.pcmcia_align_data** %9, align 8
  %75 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %74, i32 0, i32 0
  %76 = load %struct.resource_map*, %struct.resource_map** %75, align 8
  %77 = icmp eq %struct.resource_map* %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.resource*, %struct.resource** %6, align 8
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %11, align 8
  br label %82

82:                                               ; preds = %78, %72
  %83 = load i64, i64* %11, align 8
  ret i64 %83
}

declare dso_local i64 @pcmcia_common_align(%struct.pcmcia_align_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
