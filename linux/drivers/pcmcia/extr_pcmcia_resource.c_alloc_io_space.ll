; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_alloc_io_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_alloc_io_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.pcmcia_socket*, i32, i32*, i32, i32, i32**)* }
%struct.resource = type { i32, i32, i32*, i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"alloc_io_space request for %pR, %d lines\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"odd IO request\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"alloc_io_space request failed (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"request_resource %pR failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"alloc_io_space request result %d: %pR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, %struct.resource*, i32)* @alloc_io_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_io_space(%struct.pcmcia_socket* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmcia_socket*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.resource*, %struct.resource** %6, align 8
  %13 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.resource*, %struct.resource** %6, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @IORESOURCE_IO, align 4
  %19 = load %struct.resource*, %struct.resource** %6, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %24 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.resource* %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 1, %34
  br label %37

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 0, %36 ]
  br label %40

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 1, %39 ]
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %53 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %52, i32 0, i32 0
  %54 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %69

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %65, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ult i32 %60, %61
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i1 [ false, %56 ], [ %62, %59 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %56

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %51
  br label %70

70:                                               ; preds = %69, %44, %40
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub i32 %72, 1
  %74 = xor i32 %73, -1
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %79 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %78, i32 0, i32 0
  %80 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %70
  %82 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %83 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32 (%struct.pcmcia_socket*, i32, i32*, i32, i32, i32**)*, i32 (%struct.pcmcia_socket*, i32, i32*, i32, i32, i32**)** %85, align 8
  %87 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %88 = load %struct.resource*, %struct.resource** %6, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.resource*, %struct.resource** %6, align 8
  %94 = getelementptr inbounds %struct.resource, %struct.resource* %93, i32 0, i32 2
  %95 = call i32 %86(%struct.pcmcia_socket* %87, i32 %90, i32* %9, i32 %91, i32 %92, i32** %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %81
  %99 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %100 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %99, i32 0, i32 0
  %101 = load i32, i32* %11, align 4
  %102 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %148

105:                                              ; preds = %81
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.resource*, %struct.resource** %6, align 8
  %108 = getelementptr inbounds %struct.resource, %struct.resource* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.resource*, %struct.resource** %6, align 8
  %110 = getelementptr inbounds %struct.resource, %struct.resource* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add i32 %111, %112
  %114 = sub i32 %113, 1
  %115 = load %struct.resource*, %struct.resource** %6, align 8
  %116 = getelementptr inbounds %struct.resource, %struct.resource* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.resource*, %struct.resource** %6, align 8
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %141

121:                                              ; preds = %105
  %122 = load %struct.resource*, %struct.resource** %6, align 8
  %123 = getelementptr inbounds %struct.resource, %struct.resource* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.resource*, %struct.resource** %6, align 8
  %126 = call i32 @request_resource(i32* %124, %struct.resource* %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %121
  %130 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %131 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %130, i32 0, i32 0
  %132 = load %struct.resource*, %struct.resource** %6, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @dev_warn(i32* %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct.resource* %132, i32 %133)
  %135 = load %struct.resource*, %struct.resource** %6, align 8
  %136 = getelementptr inbounds %struct.resource, %struct.resource* %135, i32 0, i32 2
  store i32* null, i32** %136, align 8
  %137 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %138 = load %struct.resource*, %struct.resource** %6, align 8
  %139 = call i32 @release_io_space(%struct.pcmcia_socket* %137, %struct.resource* %138)
  br label %140

140:                                              ; preds = %129, %121
  br label %141

141:                                              ; preds = %140, %105
  %142 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %143 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %142, i32 0, i32 0
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.resource*, %struct.resource** %6, align 8
  %146 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %144, %struct.resource* %145)
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %141, %98
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @request_resource(i32*, %struct.resource*) #1

declare dso_local i32 @dev_warn(i32*, i8*, %struct.resource*, i32) #1

declare dso_local i32 @release_io_space(%struct.pcmcia_socket*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
