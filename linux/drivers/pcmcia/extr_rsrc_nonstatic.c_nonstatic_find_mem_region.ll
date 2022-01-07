; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_find_mem_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_rsrc_nonstatic.c_nonstatic_find_mem_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pcmcia_socket = type { i32, %struct.TYPE_2__*, %struct.socket_data*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.socket_data = type { i32, i32 }
%struct.pcmcia_align_data = type { i64, i64, i32* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@SS_CAP_PAGE_REGS = common dso_local global i32 0, align 4
@iomem_resource = common dso_local global i32 0, align 4
@pcmcia_align = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i64, i64, i64, i32, %struct.pcmcia_socket*)* @nonstatic_find_mem_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @nonstatic_find_mem_region(i64 %0, i64 %1, i64 %2, i32 %3, %struct.pcmcia_socket* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pcmcia_socket*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.socket_data*, align 8
  %13 = alloca %struct.pcmcia_align_data, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.pcmcia_socket* %4, %struct.pcmcia_socket** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %10, align 8
  %22 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %21, i32 0, i32 3
  %23 = call i32 @dev_name(i32* %22)
  %24 = call %struct.resource* @pcmcia_make_resource(i32 0, i64 %19, i32 %20, i32 %23)
  store %struct.resource* %24, %struct.resource** %11, align 8
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %10, align 8
  %26 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %25, i32 0, i32 2
  %27 = load %struct.socket_data*, %struct.socket_data** %26, align 8
  store %struct.socket_data* %27, %struct.socket_data** %12, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %5
  %31 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %10, align 8
  %32 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SS_CAP_PAGE_REGS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %30, %5
  %39 = phi i1 [ true, %5 ], [ %37, %30 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i64, i64* %8, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %13, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %13, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = and i64 %44, %46
  %48 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %13, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  store i32 0, i32* %17, align 4
  br label %49

49:                                               ; preds = %99, %38
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %102

52:                                               ; preds = %49
  %53 = load %struct.socket_data*, %struct.socket_data** %12, align 8
  %54 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %13, i32 0, i32 2
  store i32* %54, i32** %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  store i64 1048576, i64* %15, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %15, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* %6, align 8
  br label %65

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i64 [ %63, %62 ], [ 0, %64 ]
  store i64 %66, i64* %14, align 8
  br label %70

67:                                               ; preds = %52
  store i64 -1, i64* %15, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add i64 1048576, %68
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %67, %65
  store i32 0, i32* %18, align 4
  br label %71

71:                                               ; preds = %88, %70
  %72 = load i32, i32* %18, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load %struct.resource*, %struct.resource** %11, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load i32, i32* @pcmcia_align, align 4
  %80 = call i32 @allocate_resource(i32* @iomem_resource, %struct.resource* %75, i64 %76, i64 %77, i64 %78, i32 1, i32 %79, %struct.pcmcia_align_data* %13)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %91

84:                                               ; preds = %74
  %85 = load %struct.socket_data*, %struct.socket_data** %12, align 8
  %86 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.pcmcia_align_data, %struct.pcmcia_align_data* %13, i32 0, i32 2
  store i32* %86, i32** %87, align 8
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %18, align 4
  br label %71

91:                                               ; preds = %83, %71
  %92 = load i32, i32* %16, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %91
  br label %102

98:                                               ; preds = %94
  store i32 1, i32* %9, align 4
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %17, align 4
  br label %49

102:                                              ; preds = %97, %49
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.resource*, %struct.resource** %11, align 8
  %107 = call i32 @kfree(%struct.resource* %106)
  store %struct.resource* null, %struct.resource** %11, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.resource*, %struct.resource** %11, align 8
  ret %struct.resource* %109
}

declare dso_local %struct.resource* @pcmcia_make_resource(i32, i64, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @allocate_resource(i32*, %struct.resource*, i64, i64, i64, i32, i32, %struct.pcmcia_align_data*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
