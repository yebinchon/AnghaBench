; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_release_io_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pcmcia_resource.c_release_io_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, %struct.resource* }
%struct.resource = type { i64, i64, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"release_io_space for %pR\0A\00", align 1
@MAX_IO_WIN = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_socket*, %struct.resource*)* @release_io_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_io_space(%struct.pcmcia_socket* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  store %struct.resource* %1, %struct.resource** %4, align 8
  %7 = load %struct.resource*, %struct.resource** %4, align 8
  %8 = call i64 @resource_size(%struct.resource* %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %10 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %9, i32 0, i32 1
  %11 = load %struct.resource*, %struct.resource** %4, align 8
  %12 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.resource* %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %121, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MAX_IO_WIN, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %124

17:                                               ; preds = %13
  %18 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.resource*, %struct.resource** %24, align 8
  %26 = icmp ne %struct.resource* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %121

28:                                               ; preds = %17
  %29 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %30 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.resource*, %struct.resource** %35, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %38, %41
  br i1 %42, label %43, label %120

43:                                               ; preds = %28
  %44 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %45 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.resource*, %struct.resource** %50, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.resource*, %struct.resource** %4, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %120

58:                                               ; preds = %43
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %61 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, %59
  store i64 %68, i64* %66, align 8
  %69 = load %struct.resource*, %struct.resource** %4, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %58
  %74 = load %struct.resource*, %struct.resource** %4, align 8
  %75 = call i32 @release_resource(%struct.resource* %74)
  br label %76

76:                                               ; preds = %73, %58
  %77 = load %struct.resource*, %struct.resource** %4, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.resource*, %struct.resource** %4, align 8
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @IORESOURCE_IO, align 4
  %82 = load %struct.resource*, %struct.resource** %4, align 8
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %85 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %76
  %94 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %95 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load %struct.resource*, %struct.resource** %100, align 8
  %102 = call i32 @release_resource(%struct.resource* %101)
  %103 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %104 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load %struct.resource*, %struct.resource** %109, align 8
  %111 = call i32 @kfree(%struct.resource* %110)
  %112 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %113 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store %struct.resource* null, %struct.resource** %118, align 8
  br label %119

119:                                              ; preds = %93, %76
  br label %120

120:                                              ; preds = %119, %43, %28
  br label %121

121:                                              ; preds = %120, %27
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %13

124:                                              ; preds = %13
  ret void
}

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.resource*) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
